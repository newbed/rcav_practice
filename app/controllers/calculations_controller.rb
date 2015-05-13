class CalculationsController < ApplicationController
  def instructions
  end

  def sqrt

    @number = params[:number].to_i

    @square_root = @number**0.5

    @square_root = @square_root.round(2)

  end

  def pmt
    @rate = params[:rate].to_f
    @months = params[:months].to_i
    @principal = params[:principal].to_f

    @rate = @rate / 10000

    @monthly_payment = (@rate * @principal)/(1 - (1 + @rate)**-@months)

    @monthly_payment = @monthly_payment.round(2)

  end
end
