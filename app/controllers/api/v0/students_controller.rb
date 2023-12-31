class Api::V0::StudentsController < ApplicationController
  def index
    render json: StudentSerializer.new(Student.all)
  end
end