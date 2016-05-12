class ProjectsController < ApplicationController
  def show
  	@project=Project.find(params[:id])
  end

  def edit
  end

  def index
  	@projects=Project.all
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
  			:time,
  			:member)

  	if @project.save
  		redirect_to @project
  	else
  	      render 'new'
  	end
  end
end
