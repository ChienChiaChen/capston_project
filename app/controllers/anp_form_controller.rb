class AnpFormController < ApplicationController

	def index
		
	 render 'anp_form'
		
	end

	def project_form
		@project=Project.new
		render 'project_form'
	end
	def check
		
		@project= Project.new params.require(:project)
  		.permit(:project_name, 
  			:manager_name,
  			:identify_date,
  			:scope,
  			:cost,
        :outsource,
  			:time,
  			:member,
        :experience,
        :product_type,
        :req_stability, 
        :req_clear ,
        :project_type ,
        :development_process ,
        :collaboratingdevelopment ,
        :user_involvement ,
        :supplier_support ,
        :manager_support
        )

  			if @project.project_type==0||@project.product_type==0||@project.req_stability==0||@project.req_clear==0||
  				@project.development_process==0||@project.collaboratingdevelopment==0||@project.user_involvement==0||
  				@project.supplier_support==0||@project.manager_support==0||@project.outsource==0
  				flash[:error] = "填寫資料太少,至少填寫十個"
  				redirect_to anp_project_form_path
  			else
  			  	
  		    	render 'anp_form'
  			end

  
  	
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
