class CoursesController < ApplicationController
	def create
		@course = Course.new(course_params)
		if @course.save
			render json: @course, status: 200
		else
			render json: {errors: @course.errors.full_messages}, status: 422
		end
	end

	def index
		@courses = Course.all
		if @courses.exists?
			render json: @courses, status: 200
		else
			render json: {message: "No courses created."}, status: 200
		end
	end

	private

	def course_params
		params.require(:course).permit(:name, 
										:description, 
										:cost, 
										tutors_attributes: [:name, :age, :experience])
	end
end