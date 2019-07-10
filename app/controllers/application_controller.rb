class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
    include Pundit
end
