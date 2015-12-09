class TagIssuesController < ApplicationController
  def index
    @tag_issues = TagIssue.all
  end

  def show
    @tag_issue = TagIssue.find(params[:id])
  end

  def new
    @tag_issue = TagIssue.new
  end

  def create
    @tag_issue = TagIssue.new
    @tag_issue.article_id = params[:article_id]
    @tag_issue.issue_id = params[:issue_id]

    if @tag_issue.save
      redirect_to :back, :notice => "Tag issue created successfully."
    else
      redirect_to :back
    end
  end

  def edit
    @tag_issue = TagIssue.find(params[:id])
  end

  def update
    @tag_issue = TagIssue.find(params[:id])

    @tag_issue.article_id = params[:article_id]
    @tag_issue.issue_id = params[:issue_id]

    if @tag_issue.save
      redirect_to "/tag_issues", :notice => "Tag issue updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tag_issue = TagIssue.find(params[:id])

    @tag_issue.destroy

    redirect_to :back, :notice => "Tag issue deleted."
  end
end
