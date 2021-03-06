class BookingsController < ApplicationController
  def index
    @booking = policy_scope(Booking).where(car_id: params[:car_id])
  end

  def all
    @bookings = Booking.order(car_id: :asc)
    authorize @bookings
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Booking: #{@booking}", template: 'bookings/show.html.erb'   # Excluding ".pdf" extension.
      end
    end
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
    authorize @booking
  end

  def create

    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    @booking.invoice_price = (@booking.ending_date - @booking.starting_date).to_i * @booking.car.price
    authorize @booking

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])

    authorize @booking

    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    authorize @booking

    redirect_to car_path(@booking.car)
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
