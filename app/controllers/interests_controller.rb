require 'open-uri'
class InterestsController < ApplicationController

	
		@page = Nokogiri::HTML(open("http://www.hepsiburada.com/"))

		@page.css('div.fleft.h32.temporaryCategories').each do |p|

			p.css("select#siteHeader_ddlCatalogs option").each do |t|
				unless  t.text == "Tüm Kategorilerde"
					Interest.find_or_create_by(title: t.text)
				end	
			end
		end

	

end
