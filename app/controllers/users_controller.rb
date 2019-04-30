class ComplaintsController < ApplicationController

  # GET /complaints
  # GET /complaints.json
  def index
    @users = User.all
  end
end
