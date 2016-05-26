class V1::TicketCategoriesController < V1::BaseController
  before_action :set_ticket_category, only: [:show, :update, :destroy]
  authorize_resource

  def index
    @ticket_categories = TicketCategory.all
    render json: @ticket_categories
  end

  def show
    render json: @ticket_category
  end

  def create
    @ticket_category = TicketCategory.new(ticket_category_params)

    if @ticket_category.save
      render json: @ticket_category, status: :created, location: @ticket_category
    else
      render json: @ticket_category.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ticket_category.update(ticket_category_params)
      render json: @ticket_category, status: :updated, location: @ticket_category
    else
      render json: @ticket_category.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket_category.destroy
    head :no_content
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
