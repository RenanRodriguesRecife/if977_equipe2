# encoding: UTF-8

class ComplaintsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_complaint, only: [:show, :edit, :update, :destroy]
  before_action :find_owner, only: [:show]

  # GET /complaints
  # GET /complaints.json
  
  #def index
  #  @complaints = Complaint.all
  #end
  
  def index
    @complaints = Complaint.all
    if params[:search]
      @complaints = Complaint.search(params[:search]).order("created_at DESC")
    else
      @complaints = Complaint.all.order('created_at DESC')
    end
  end
  
  def find_owner
    @user = @complaint.user
  end

  # GET /complaints/1
  # GET /complaints/1.json
  def show
    @comments = Comment.where(complaint_id: @complaint).order("created_at DESC")
  end

  # GET /complaints/new
  def new
    @complaint = current_user.complaint.build
  end

  # GET /complaints/1/edit
  def edit
  end

  # POST /complaints
  # POST /complaints.json
  def create
    @complaint = current_user.complaint.build(complaint_params)

    respond_to do |format|
      if @complaint.save
        format.html { redirect_to @complaint, notice: 'Reclamação criado com sucesso.' }
        format.json { render :show, status: :created, location: @complaint }
      else
        format.html { render :new, error: 'Não foi possivel criar a reclamação' }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /complaints/1
  # PATCH/PUT /complaints/1.json
  def update
    respond_to do |format|
      if @complaint.update(complaint_params)
        format.html { redirect_to @complaint, notice: 'Reclamação atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @complaint }
      else
        format.html { render :edit }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaints/1
  # DELETE /complaints/1.json
  def destroy
    @complaint.destroy
    respond_to do |format|
      format.html { redirect_to complaints_url, notice: 'Reclamação deletada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complaint_params
      params.require(:complaint).permit(:title, :name, :description, :photo, :latitude, :longitude, :date)
    end
end
