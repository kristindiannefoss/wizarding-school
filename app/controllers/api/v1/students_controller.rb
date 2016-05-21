class Api::V1::StudentsController < ApplicationController
  respond_to :html, :json, :xml

  def index
    respond_with Student.all
  end

  def show
    respond_with Student.find(params[:id])
  end

end

#no views to pass instance vars to, so you can go strait to the database
#rails-5 rails api, all of rails except for view realted, much faster to test
