require 'open-uri'

class HepsiBuradaController < ApplicationController
  
  URL = "http://www.hepsiburada.com/"

  def index
    @interests = Interest.all
  end


  def parsing
    @doc = Nokogiri::HTML(open(URL))

    Interest.delete_all 

    @doc.css('div#tabInnerPortlet div#divMPTopSales select#ucTabPortlet_ucTopSales_ddCatalogs option').each do |el|

      hb = Interest.new

      puts "*************************"
      puts "value : #{el["value"]} "
      puts "data :  #{el.children}"

      hb.value = el["value"].to_s
      hb.data = el.children.to_s
      
      if hb.save
        puts "Value and data saved."
      else
        puts "Not Saved"
      end

    end

    redirect_to hepsi_burada_index_path

  end

end
