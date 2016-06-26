class PagesController < ApplicationController
	def home
		gon.variable_name = '#FF0000'
	end
	# def about
	# 	render 'about'
	# end
	# def new
	# 	render 'new'
	# end

	# def history
	# 	render 'history'
	# end


end