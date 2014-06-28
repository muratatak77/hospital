require 'open-uri'

class HepsiBuradaController < ApplicationController
  
  URL = "http://www.hepsiburada.com/"

  def index
    @interests = Interest.all
  end


  def parsing
    @doc = Nokogiri::HTML(open(URL))

    @doc.css('div#tabInnerPortlet div#divMPTopSales select#ucTabPortlet_ucTopSales_ddCatalogs option').each do |el|

      # hb = Interest.new

      puts "*************************"
      puts "value : #{el["value"]} "
      puts "data :  #{el.children}"

      value = el["value"].to_s
      if value == ""
        next
      end
      data = el.children.to_s


      attrs  = { value: value, data: data }
      proprty = Interest.find_or_create_by_value(attrs)

  
    end

    redirect_to hepsi_burada_index_path

  end

end
