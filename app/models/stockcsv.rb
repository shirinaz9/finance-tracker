class Stockcsv < ApplicationRecord
	require 'csv'

  def self.import(file)

    CSV.foreach(file.path, headers: true) do |row|

      stockcsv_hash = row.to_hash # exclude the price field
      stockcsv = Stockcsv.where(id: stockcsv_hash["id"])

      if stockcsv.count == 1
        stockcsv.first.update_attributes(stockcsv_hash)
      else
        Stockcsv.create!(stockcsv_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end # end class
