class FollowIssuesController < ApplicationController
  def index
    @follow_issues = FollowIssue.all
  end

  def show
    @follow_issue = FollowIssue.find(params[:id])
  end

  def new
    @follow_issue = FollowIssue.new
  end

  def create
    @follow_issue = FollowIssue.new
    @follow_issue.user_id = params[:user_id]
    @follow_issue.issue_id = params[:issue_id]

    if @follow_issue.save
      redirect_to :back, :notice => "Follow issue created successfully."
    else
      redirect_to :back
    end
  end

  def edit
    @follow_issue = FollowIssue.find(params[:id])
  end

  def update
    @follow_issue = FollowIssue.find(params[:id])

    @follow_issue.user_id = params[:user_id]
    @follow_issue.issue_id = params[:issue_id]

    if @follow_issue.save
      redirect_to "/follow_issues", :notice => "Follow issue updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @follow_issue = FollowIssue.find(params[:id])
    @follow_issue.destroy

    redirect_to :back, :notice => "Follow issue deleted."
  end
end
