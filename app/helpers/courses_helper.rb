module CoursesHelper
    def render_main_courses
        @courses[0..3].each do |course|
            course.title

        end
    end
    def fetch_courses
        all_courses = []
        course_details = []
        @courses.each do |course|
            title = course.title
            course_details.push(title)
            all_courses.push(course_details)
        end
        all_courses
    end
    def get_specific_course_detail(arr)
        arr.each do |detail|
            detail
        end
    end
end
