class StudentsController < ApplicationController
  respond_to :html, :json, :xml

  def index
    @students = Student.all
    respond_with @students
  end

  def show
    @student = Student.find(params[:id])
    respond_with @student
  end

  def create
    @student = Student.new(name: params[:name])

    if @student.save
      respond_to do |format|
        format.html {redirect_to students_path}
        format.json {respond_with @student}
      end
    else
      respond_to do |format|
        format.html {render :new}
        format.json {render json: @student.errors.full_messages}
      end
    end
  end
end

# Notes before refactor
# respond_to do |format|
#   format.html {@student}
#   format.json {render json: @student}
#   format.xml {render xml: @student}
# end

#purpose of an api is to send the raw data, just want the information, don't need the style etc
