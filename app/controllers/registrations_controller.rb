class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
		params.require(:dealer).permit(:first_name,:last_name,:phone,:email,:dealership_name,:dealership_country,:dealership_state,:dealership_city,:dealership_zip,:dealership_street,:password,:password_confirmation)
	end

	def account_update_params
		params.require(:dealer).permit(:first_name,:last_name,:phone,:email,:dealership_name,:dealership_country,:dealership_state,:dealership_city,:dealership_zip,:dealership_street,:password,:password_confirmation)
	end
end