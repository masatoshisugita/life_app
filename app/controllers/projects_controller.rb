class ProjectsController < ApplicationController
  skip_before_action :login_required, only: [:index,:show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.new(project_params)
    if @project.save
      redirect_to @project, notice:"タスク「#{@project.title}」を登録しました。"
    else
      render :new
    end
  end

  def edit
    @project = current_user.projects.find(params[:id])
  end

  def update
    project = current_user.projects.find(params[:id])
    project.update!(project_params)
    redirect_to projects_url, notice:"タスク「#{project.title}」を更新しました。"
  end

  def destroy
    project = current_user.projects.find(params[:id])
    project.destroy
    redirect_to projects_url, notice:"タスク「#{project.title}」を削除しました。"
  end


  private

  def project_params
    params.require(:project).permit(:title, :body)
  end
end
