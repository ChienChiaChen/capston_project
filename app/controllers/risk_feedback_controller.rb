class RiskFeedbackController < ApplicationController
	def index
		@addrisk=Addrisk.new
		
	end
	def result
		
		# a.riskfactor=@addrisk.params[:riskfactor]
		# a.riskclass=@addrisk.params[:option]
			riskfactor=params[:riskfactor]
			riskclass=params[:riskclass]
			@a=Addrisk.new 
			@a.riskclass=riskclass
			@a.riskfactor=riskfactor
			@a.save
		
		
		render 'result'
		
	end
end
