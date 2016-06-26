class PagesController < ApplicationController
	def home
		# @your_hash = {'id' => 11, 'label' => '需求'}
		@your_hash1=[{'id' => 12, 'label' => '資源'},{'id' => 11, 'label' => '需求'}]
		@your_hash_edges=[{'id'=> '1', 'from'=> 12, 'to'=> 11,'label'=> '55%'}]
		# gon.variable_name = '#FF0000'
		gon.aa=@your_hash_edges
		gon.tt=@your_hash1
		# gon.your_hash = @your_hash
		gon.all_variables
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