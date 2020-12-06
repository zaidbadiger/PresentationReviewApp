# =begin
#   This controller is inherited by all other controllers
#   Contains includes on basic helpers wanted in all controllers
# =end
class ApplicationController < ActionController::Base
  include SessionsHelper
  include CoursesHelper
  include UsersHelper
end
