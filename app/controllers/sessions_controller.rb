class SessionsController < ApplicationController
  def show
    @session = Session.find(params[:id])
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    if @session.update_attributes(session_params)
      redirect_to(:controller => 'clients', :action => 'show', :id => @session.client_id)
    else
      render 'edit'
    end
  end

  private
  def session_params
    params.require(:session).permit(:date, :location, :price, :notes)
  end

end
