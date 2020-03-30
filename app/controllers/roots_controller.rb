class RootsController < ApplicationController

  def  index
    render layout: false #application.html.erbを適用したくない
  end

  def new
    @post.all
  end

end
