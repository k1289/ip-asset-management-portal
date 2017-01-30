class IpassetsController < ApplicationController
   def index
      @ipassets = Ipasset.all
   end
   
   def new
      @ipasset = Ipasset.new
   end

   def create
      @ipasset = Ipasset.new(ipasset_params)
      
      if @ipasset.save
         redirect_to owners_new_path, notice: "Your IPAsset with id #{@ipasset.id} has been uploaded."
      else
         render "new"
      end
      
   end
   
def validate
      @ipasset = Ipasset.find(params[:id])
      @ipasset=Ipasset.find_by(name: @ipasset.name)
      @ipasset.validation=1      
      @ipasset.status="approved"
      @ipasset.save 
      redirect_to ipassets_path, notice:  "The ipasset #{@ipasset.name} has been approved."
   end
   
   def myips
      @ipasset = Ipasset.all
      @user = User.find(current_user.id)

   end
   
   def destroy
      @ipasset = Ipasset.find(params[:id])
      @ipasset.destroy
      redirect_to ipassets_path, notice:  "The ipasset #{@ipasset.name} has been deleted."
   end
   
   private
      def ipasset_params
      params.require(:ipasset).permit(:name, :attachment, :Description, :status)
   end
end
