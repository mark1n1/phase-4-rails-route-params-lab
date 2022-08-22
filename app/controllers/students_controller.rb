class StudentsController < ApplicationController

  def index
    students = Student.all
    if(params[:name])
      students = Student.all.filter {|student| (student.first_name.downcase == params[:name] || student.last_name.downcase == params[:name]) ? student : nil}
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
