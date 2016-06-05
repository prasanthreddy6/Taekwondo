class HomeController < ApplicationController

	def homepage

		@championship = Championship.all
		@champ = Championship.all	

	end 

	def author

	end

end
