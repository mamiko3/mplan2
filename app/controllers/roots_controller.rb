class RootsController < ApplicationController

  def  index
    @roots = Root.all
    render layout: false #application.html.erbを適用したくない
  end

  def new
    render layout: false #application.html.erbを適用したくない
  end

  def create
    Root.create(root_params)
  end


  private
  def root_params
    params.permit(:post)
  end

end
