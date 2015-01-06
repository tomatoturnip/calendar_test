class WelcomeController < ApplicationController
  def index
    @user = User.first.decorate
  end

end
