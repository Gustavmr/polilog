class IssuesController < ApplicationController
  def index
    @issues = Issue.all
    @q = Issue.ransack(params[:q])
    @issues = @q.result

    @my_q = current_user.followed_issues.ransack(params[:q])
    @my_issues = @my_q.result

    @follow_issue = FollowIssue.new
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new
    @issue.title = params[:title]
    @issue.description = params[:description]
    @issue.source = params[:source]
    @issue.status = params[:status]

    if @issue.save
      redirect_to "/issues", :notice => "Issue created successfully."
    else
      render 'new'
    end
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    @issue = Issue.find(params[:id])

    @issue.title = params[:title]
    @issue.description = params[:description]
    @issue.source = params[:source]
    @issue.status = params[:status]

    if @issue.save
      redirect_to "/issues", :notice => "Issue updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @issue = Issue.find(params[:id])

    @issue.destroy

    redirect_to "/issues", :notice => "Issue deleted."
  end
end
