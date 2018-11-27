class Admin::CategoriesController < Admin::ApplicationController
  before_action :verify_admin

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

end
