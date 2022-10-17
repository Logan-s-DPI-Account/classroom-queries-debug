class StudentsController < ApplicationController
  def index
    matching_students = Student.all

    @list_of_students = matching_students.order({ :created_at => :desc })

    render({ :template => "students/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_students = Student.where({ :id => the_id }).at(0)

    @the_student = matching_students

    render({ :template => "students/show.html.erb" })
  end
end
