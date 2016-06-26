class AnpFormController < ApplicationController
	def index
		render 'anp_form'
	end

	def consistency
		a=rand(1..5)
		if 3%2==2
			redirect_to projects_path ,:notice => "回饋成功"
		else
			flash[:error] = "不符合一致性測試"
		    redirect_to anp_form_path
		end
	end
end
