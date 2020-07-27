class ProjectsController < ApplicationController
  http_basic_authenticate_with name: 'desafiovamoscontodo', password: 'XAHTJEAS23123%23', except: [:dashboard]


  def dashboard
    if params[:filter_by].nil? || params[:filter_by].empty?
      @projects = Project.all
    else
      @projects = Project.where(state: params[:filter_by])
    end
    
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(
      name: params[:project][:name],
      description: params[:project][:description],
      begin: params[:project][:begin],
      end: params[:project][:end],
      state: params[:project][:state]
    )

    if @project.valid?
      @project.save
      redirect_to root_path, notice: "Se guardó el proyecto exitosamente!"
    else
      redirect_to root_path, notice: "No se pudo guardar el proyecto, es necesario completar todos los campos!"
    end

  end
end
