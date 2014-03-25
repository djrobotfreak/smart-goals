class StatusesController < ApplicationController
  before_action :set_status, only: [:show, :edit, :update, :destroy]
  def goals
  end 

  # GET /statuses
  # GET /statuses.json
  def index
  end

  # GET /statuses/1
  # GET /statuses/1.json
  def show
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_params
      params.require(:status).permit(:name, :content)
    end
end
