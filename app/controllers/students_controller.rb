class StudentsController < ApplicationController

  def index
    students = params[:name] ? Student.by_name(params[:name]) : Student.all
    render json: students
  end

  def highest_grade
    student = Student.all.order(grade: :desc).first
    render json: student
  end

  def grades
    students = Student.all.order(grade: :desc)
    render json: students
  end
  
  def show
    student = Student.find(params[:id])
    render json: student
  end
end
