class OwnersController < ApplicationController
  def index
      @owners = Owner.all
   end
   
   def new
      @owner = Owner.new
   end
   
   def create
      @owner = Owner.new(owner_params)
      
      if @owner.save
         redirect_to owners_index_path
      else
         render "new"
      end
      
   end
   
   def destroy
      @owner = Owner.find(params[:id])
      @owner.destroy
      redirect_to owners_path
   end
   
   private
      def owner_params
      params.require(:owner).permit(:ipasset_id, :user_id, :IIITBstakepercent, :OwnerStakepercentage)
   end
   
end

