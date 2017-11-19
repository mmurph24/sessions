class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
    @sessions = @client.sessions
  end

  def new
    @message = Client.new
  end

  def create
  @client = Client.new(client_params)
  if @client.save
    redirect_to '/'
  else
    render 'new'
  end
end


  private
  def client_params
    params.require(:first_name).permit(:content)
    params.require(:last_name).permit(:content)
    params.require(:email).permit(:content)
    params.require(:phone).permit(:content)
    params.require(:injuries).permit(:content)
    params.require(:notes).permit(:content)
    params.require(:image).permit(:content)
  end

end
