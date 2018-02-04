class CarsController < ApplicationController
	
	before_action :authenticate_dealer!
	
	def index
		@cars = current_dealer.cars
	end

	def new
		@dealer = current_dealer
		@car = current_dealer.cars.build

	end

	def edit
		@car = current_dealer.cars.find(params[:id])
	end

	def update
		@car = current_dealer.cars.find(params[:id])
		
		if @car.update(new_car_params)
			redirect_to dealer_car_path(@car.dealer_id,@car)
		else
			render 'edit'
		end
	end



	def destroy
		@car = current_dealer.cars.find(params[:id])
		@car.destroy
		redirect_to dealer_cars_path
	end

	def show
		@dealer = current_dealer
		@car = current_dealer.cars.find(params[:id])
		@leads = @car.leads
	end

	def create
		@car = current_dealer.cars.build(new_car_params)
		
		if @car.save
			redirect_to dealer_car_path(@car.dealer_id,@car)
		else
			render 'new'
		end

		# respond_to do |format|
		# 	if @car.save
		# 		format.html { redirect_to @car, notice: 'Car was successfully added.'}
		# 	else
		# 		format.html { render :new}
		# 	end
		# end
	end

	private

	def new_car_params
		params.require(:car).permit(:vin,:make,:model,:year,:price)
	end
end
