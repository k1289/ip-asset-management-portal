class IpcommitteesController < ApplicationController
	
def index
    @ip_committees = IpCommittee.all
  end

def show
    @ip_committee = IpCommittee.find(params[:id])
  end

def new
    @ip_committee = IpCommittee.new
  end

def edit
    @ip_committee = IpCommittee.new(ip_committee_params)
  end

def create
    @ip_committee = IpCommittee.new(ip_committee_params)
    if @ip_committee.save
    		@user=User.find_by(email: @ip_committee.email)
    		@user.role=1
    		@user.save
	redirect_to ipcommittee_path(@ip_committee.id)
    else
	render 'new'
    end
  end

def update
  @ip_committee = IpCommittee.find(params[:id])
 
  if @ip_committee.update(ip_committee_params)
    redirect_to @ip_committee
  else
    render 'edit'
  end
end

def destroy
  @ip_committee = IpCommittee.find(params[:id])
  if @ip_committee.destroy
      @user=User.find_by(email: @ip_committee.email)
      @user.role=0
      @user.save
 
  redirect_to new_ipcommittee_path
end
end

def validate_ips
  @ipassets=Ipasset.all
end

def upload_ip
  render'ipcommittees/upload_ip'
end

private
  def ip_committee_params
    params.require(:ip_committee).permit(:email, :userId)
  end

end
