class PaymentsController < ApplicationController
  
  def create
    @payment = Payment.new(params[:subscription])
    if @payment.save_with_payment
      redirect_to @payment, :notice => "Thank you for paying with Stripe!"
    else
      render :new
    end
  end
  
end
