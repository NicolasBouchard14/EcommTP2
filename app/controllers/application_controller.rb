class ApplicationController < ActionController::API

  before_action :authenticate_user!

  include Response

  include ExceptionHandler

end



