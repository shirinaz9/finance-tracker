class StockcsvsController < ApplicationController
   def index
    @stockcsvs = Stockcsv.all
  end

  def import

    Stockcsv.import(params[:file])
    redirect_to root_url, notice: "imported."
    rescue
      redirect_to root_url, notice: "Invalid CSV file format."
  end
end
