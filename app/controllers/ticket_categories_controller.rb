class TicketCategoriesController < ApplicationController
  before_action :set_ticket_category, only: :show
  authorize_resource

  # GET /ticket_categories
  # GET /ticket_categories.json
  def index
    @ticket_categories = TicketCategory.all
  end

  # GET /ticket_categories/1
  # GET /ticket_categories/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_category
      @ticket_category = TicketCategory.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_category_params
      params.require(:ticket_category).permit(:name, :slug, :description)
    end
end
