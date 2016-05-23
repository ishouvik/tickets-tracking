class V1::TicketCategoriesController < V1::BaseController
  authorize_resource

  def index
    @ticket_categories = TicketCategory.all
    render json: @ticket_categories
  end
end
