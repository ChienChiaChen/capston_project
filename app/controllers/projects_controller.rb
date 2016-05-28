class ProjectsController < ApplicationController
  def show
  	@project=Project.find(params[:id])
  end

  def edit
    @project=Project.find(params[:id])
  end

  def anp_form

  end
  def index
  	@projects=Project.all
  end

  def update
    @project = Project.find params[:id]

      if @project.update_attributes params.require(:project)
          .permit(:project_name, 
        :manager_name,
        :identify_date,
        :scope,
        :cost,
        :outsource,
        :time,
        :member)
        flash[:notice] = "更新成功!"
        redirect_to  edit_project_path(@project) 
        # 
      end
  end

  def new
  	@project= Project.new
  end

  def create
  	@project= Project.new params.require(:project)
  		.permit(:project_name, 
  			:manager_name,
  			:identify_date,
  			:scope,
  			:cost,
        :outsource,
  			:time,
  			:member)

  	if @project.save
  		redirect_to @project ,:notice => "建立成功"
  	else
  	      render 'new'
  	end
  end
end
