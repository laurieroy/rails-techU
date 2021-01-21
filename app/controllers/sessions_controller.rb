class SessionsController < ApplicationController
	skip_before_action :require_user, only: [:new, :create]

	def new	
	end

	def create
		byebug
		student = Student.find_by(email: params[:session][:email].downcase)
		if student && student.authenticate(params[:session][:password])
			session[:student_id] = student.id
			flash.now[:notice] = "You have successfully logged in"
			redirect_to student
		else
			flash.now[:notice] = "Something was wrong with your login information"
			render 'new'
		end
	end

	def destroy
		session[:student_id] = nil
		flash.now[:notice] = "You have successfully logged out"
		redirect_to root_path
	end
end