class CustomersController < ApplicationController
  before_action :find_customer, only: [:new]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    redirect_to customer_path(@customer)
  end

  private

  def find_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name)
  end
end
