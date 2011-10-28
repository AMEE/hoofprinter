class MainController < ApplicationController

  def index
    @calculation=AMEE::DataAbstraction::CalculationSet.find(:cows)[:burgers].begin_calculation
    # Add form params to calculation
    if params[:form]
      @calculation.choose! params[:form]
      # Do the calculation
      @calculation.calculate!
    end
  end

end
