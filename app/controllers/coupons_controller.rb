class CouponsController < ApplicationController
	def index
		@coupons = Coupon.all
	end
	def show
		@coupon = the_coupon
	end
	def new

	end
	def create
		@coupon = Coupon.new
		@coupon.coupon_code = params[:coupon][:coupon_code]
		@coupon.store = params[:coupon][:store]
		@coupon.save
		redirect_to coupon_path(@coupon)
	end
	def edit
		@coupon = the_coupon
	end
	def update

	end
	def delete

	end

	private

	def the_coupon
		Coupon.find(params[:id])
	end
end