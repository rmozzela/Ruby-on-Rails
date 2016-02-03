class InvoicePaymentsController < ApplicationController

before_filter :default_request_format
before_action :logged_in_user, only: [:processtoken]

  def default_request_format
      request.format = "json"
 end

  def apiresponse
      respond_to do |format|
      msg = "*ok*"
      format.json { render :json => msg }
    end
  end

  def processtoken
      if params[:status] == "test"
         @token = "test"
         invoicepayment = Invoicepayment.create(value: 351214)
         invoicepayment.save
   end
  end

end
