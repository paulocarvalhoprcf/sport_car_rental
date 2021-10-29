class CarsController < ApplicationController
  before_action :set_car, only: [:show, :destroy]

  def index
    @cars = policy_scope(Car)

    if params[:query].present?
      if Car.search_by_model_and_manufacturer(params[:query]).first.nil?
        @cars = ""
      else
        @cars = Car.search_by_model_and_manufacturer(params[:query])
      end
    else
      @cars = Car.all
    end
  end

  def show
    authorize @car
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user
    authorize @car

    if @car.save
      redirect_to @car, notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_url, notice: 'Car was successfully destroyed.'
  end

  private
  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :manufacturer, :year, :img_url, :price)
  end

  def query_nil?
    Car.search_by_model_and_manufacturer(params[:query]).first.nil?
  end
end
