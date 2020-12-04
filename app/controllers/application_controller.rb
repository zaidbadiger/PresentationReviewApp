class ApplicationController < ActionController::Base
    include SessionsHelper
    include CoursesHelper
    include UsersHelper
end
