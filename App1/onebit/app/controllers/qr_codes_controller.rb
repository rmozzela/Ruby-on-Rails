class QrCodesController < ApplicationController
      before_action :logged_in_user, only: [:create, :destroy]
      before_action :correct_user,   only: :destroy

  def new
  end

  def create
      @qr_code = current_user.qr_codes.build(qrcode_params)

    if @qr_code.save
       flash[:success] = "QR Code created!"
       redirect_to root_url
    else
       render 'static_pages/home'
    end
  end

  def update
      @qr_code = current_user.qr_codes.find_by(id: params[:id])
      if @qr_code.update_flag?
         @qr_code.update( :update_flag => false)
      else
         @qr_code.update( :update_flag => true)
      end
         flash[:success] = "QR Code Updated"
         redirect_to request.referrer || root_url
  end

  def destroy
      @qr_code.destroy
      flash[:success] = "QR Code deleted"
      redirect_to request.referrer || root_url
  end

private
  def qrcode_params
      params.require(:qr_code).permit(:value, :customer_email, :customer_name, :expiration_date, :email_message )
  end
  def correct_user
      @qr_code = current_user.qr_codes.find_by(id: params[:id])
      redirect_to root_url if @qr_code.nil?
  end
end
