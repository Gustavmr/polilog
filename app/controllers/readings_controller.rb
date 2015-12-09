class ReadingsController < ApplicationController
  def index
    @readings = Reading.all
  end

  def show
    @reading = Reading.find(params[:id])
  end

  def new
    @reading = Reading.new
  end

  def create
    @reading = Reading.new
    @reading.user_id = params[:user_id]
    @reading.article_id = params[:article_id]

    url = Article.find_by({ :id => @reading.article_id }).source

    if @reading.save
      redirect_to url, :notice => "New Article read. Keep getting informed!"
    else
      redirect_to url
    end
  end

  def edit
    @reading = Reading.find(params[:id])
  end

  def update
    @reading = Reading.find(params[:id])

    @reading.user_id = params[:user_id]
    @reading.article_id = params[:article_id]

    redirect_to "/articles", :notice => "Article marked as 'Read'. Keep getting informed!"

  end

  def destroy
    @reading = Reading.find(params[:id])

    @reading.destroy

    redirect_to :back, :notice => "Reading deleted."
  end
end
