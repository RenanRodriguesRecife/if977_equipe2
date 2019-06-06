# spring rspec
describe ComplaintsController do

  subject { described_class.new  }

  describe "#index" do
    it "assigns @complaints" do
    end

    context "when params[:search]" do
      before {}

      it "assigns @complaints = Complaint.search(params[:search]).order('created_at DESC')" do
      end
    end

    context "not params[:search]" do
      before {}

      it "assigns @complaints = Complaint.all.order('created_at DESC')" do
      end
    end
  end

  describe "#find_owner" do
    it "assigns @user" do
    end
  end

  describe "#show" do
    it "assigns @comments" do
    end
  end

  describe "#new" do
    it "assigns @complaint" do
    end
  end

  describe "#edit" do
  end

  describe "#create" do
    it "assigns @complaint" do
    end

    context "when @complaint.save" do
      before {}

      it "returns format.json { render(:show, :status => :created, :location => (@complaint)) }" do
      end
    end

    context "not @complaint.save" do
      before {}
    end
  end

  describe "#update" do
    context "when @complaint.update(complaint_params)" do
      before {}

      it "returns format.json { render(:show, :status => :ok, :location => (@complaint)) }" do
      end
    end

    context "not @complaint.update(complaint_params)" do
      before {}
    end
  end

  describe "#destroy" do
  end

end
