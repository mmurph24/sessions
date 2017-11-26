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

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to(:controller => 'clients', :action => 'show', :id => @session.client_id)
    else
      redirect_to(:controller => 'clients', :action => 'index')
    end
  end

  private
  def session_params
    params.require(:session).permit(:date, :location, :price, :notes, :client_id)
  end

end
