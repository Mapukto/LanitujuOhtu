class ReferencesController < ApplicationController

  def index
    @references = Article.all + Book.all + Inproceeding.all
  end

  def showall
    @references = Article.all + Book.all + Inproceeding.all
    render :layout => false
  end
end