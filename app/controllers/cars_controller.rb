class CarsController < ApplicationController
	
	before_action :authenticate_dealer!, except: [:index, :show]
	
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
		@dealer = Dealer.find(params[:dealer_id])
		@car = @dealer.cars.find(params[:id])
		@leads = @car.leads
		@lead = @car.leads.build
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
		params.require(:car).permit(:posting_title,:title_status,:carfax_available,:condition,:price,:odometer,:make,:model,:sub_model,:trim,:engine,:cylinders,:year,:vin,:exterior_color,:custom_exterior,:interior_color,:custom_interior,:fuel_type,:transmission,:drive_type,:drive_side,:body_type,:vehicle_size,:options,:safety,:description,:warranty)
	end
end
