class V1::AppsController < ApplicationController
  before_action :set_app, only: [:show, :update, :destroy]

  # GET /v1/apps
  def index
    @apps = App.all

    render json: @apps
  end

  # GET /v1/apps/1
  def show
    render json: @app
  end

  # POST /v1/apps
  def create
    @app = App.new(app_params)

    if @app.save
      render json: @app, status: :created
    else
      render json: @app.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/apps/1
  def update
    if @app.update(v1_app_params)
      render json: @app
    else
      render json: @app.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/apps/1
  def destroy
    @app.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def app_params
      params.permit(:name, :monitor, :token)
    end
end
