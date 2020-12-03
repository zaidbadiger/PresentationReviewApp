module CoursesHelper
    

    # Returns the current logged-in user (if any).
    def current_course
        if course[params[:id]]
        @current_course ||= Course.find_by()
        end
    end
    
end
