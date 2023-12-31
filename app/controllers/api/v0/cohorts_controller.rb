class Api::V0::CohortsController < ApplicationController
  def show
    cohort = Cohort.where(id: params[:id])
    render json: CohortSerializer.new(cohort)
  end
end