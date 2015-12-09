class ArticlesController < ApplicationController
# before_action :current_user_must_be_owner, :only => [:edit, :update, :destroy]

  def index
    @articles = Article.all
    @bias = Bia.new
    @reading = Reading.new
    @candidate_tag = TagCandidate.new
    @issue_tag = TagIssue.new


    @q = Article.ransack(params[:q])
    @articles = @q.result

  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.source = params[:source]

    if @article.save
      redirect_to "/articles", :notice => "Article created successfully."
      open("http://www.google.com")
    else
      render 'new'
      open("http://www.google.com")
    end


  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    @article.title = params[:title]
    @article.description = params[:description]
    @article.source = params[:source]

    if @article.save
      redirect_to "/articles", :notice => "Article updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy

    redirect_to "/articles", :notice => "Article deleted."
  end
end
