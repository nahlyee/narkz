class ProfileController < ApplicationController
  def index
    @profile = Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
    @profile = Profile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end