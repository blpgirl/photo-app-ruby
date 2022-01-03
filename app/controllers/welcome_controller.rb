class WelcomeController < ApplicationController
  # to not require authentication here, declare for all app in ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
  end
end
