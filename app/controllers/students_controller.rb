class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students_ordered = Student.all.order(grade: :desc)
        render json: students_ordered
    end

    def highest_grade
        best_student = Student.all.order(grade: :desc).first
        render json: best_student
    end
end
