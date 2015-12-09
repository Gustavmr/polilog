class BiaController < ApplicationController
  def index
    @bias = Bia.all
  end

  def show
    @bia = Bia.find(params[:id])
  end

  def new
    @bia = Bia.new
  end

  def create
    @bia = Bia.new
    @bia.user_id = params[:user_id]
    @bia.article_id = params[:article_id]
    @bia.level = params[:level]

    if @bia.save
      redirect_to "/articles", :notice => "Bias rated successfully."
    else
      redirect_to "/articles"
    end
  end

  def edit
    @bia = Bia.find(params[:id])
  end

  def update
    @bia = Bia.find(params[:id])

    @bia.user_id = params[:user_id]
    @bia.article_id = params[:article_id]
    @bia.level = params[:level]

    if @bia.save
      redirect_to "/bia", :notice => "Bia updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bia = Bia.find(params[:id])

    @bia.destroy

    redirect_to "/bia", :notice => "Bia deleted."
  end
end
