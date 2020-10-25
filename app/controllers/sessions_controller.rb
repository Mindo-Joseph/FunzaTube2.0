class SessionsController < ApplicationController
  def show
    @subjects = Subject.all 
    @clicked = params[:subject]
  end
end
