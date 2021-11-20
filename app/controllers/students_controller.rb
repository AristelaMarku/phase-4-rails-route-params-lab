class StudentsController < ApplicationController

  def index
    students=Student.all
    render json: students
end

def grades
  students=Student.all.order(grade: :desc)
  render json: students
end

def highest_grade
 students=Student.all.order(grade: :desc).first
 render json: students
end

  def show
   onestudent=Student.find(params[:id])
   render json: onestudent
  end


end
