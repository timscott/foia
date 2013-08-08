class RequestsController < ApplicationController
  respond_to :html, :json, :xml

  def show
    @request = Request.find(params[:id])
    respond_with @request
  end

  def new
    @request = Request.new
    respond_with @request
  end

  def create
    @request = Request.new(params[:request])
    @request.user = current_user

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render json: @request, status: :created, location: @request }
      else
        format.html { render action: "new" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

end
