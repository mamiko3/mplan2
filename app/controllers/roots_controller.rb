class RootsController < ApplicationController
  protect_from_forgery :except => [:destroy]

  def index
    @roots = Root.all.order("created_at DESC").page(params[:page]).per(4)
    render layout: false #application.html.erbを適用したくない
  end

  def new
    @root = Root.new
    render layout: false #application.html.erbを適用したくない
  end

  def create
    Root.create(root_params)
    render layout: false #application.html.erbを適用したくない
  end

  def show
    @root = Root.find(params[:id])
    render layout: false #application.html.erbを適用したくない
  end

  def destroy
    root= Root.find(params[:id])
    root.destroy
    redirect_to root_path
  end


  private
  def root_params
    params.permit(:post)
  end

end
