class WelcomeController < ApplicationController
  def index
    @tasks = ["Be cool","say no to drugs"]
  end
end
