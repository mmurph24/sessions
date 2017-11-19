class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
    @sessions = @client.sessions
  end

  def new
    @client = Client.new
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
    params.require(:client).permit(:first_name, :last_name, :email, :phone, :injuries, :notes, :image)
  end

end
