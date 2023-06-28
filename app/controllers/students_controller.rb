class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show

    grades = Student.find_by(id: params[:id])
    render json: grades

  end


  def index
    name = params[:name]
    @students = Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%")
    render json: @students
  end


end