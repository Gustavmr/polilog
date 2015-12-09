class FollowCandidatesController < ApplicationController
  def index
    @follow_candidates = FollowCandidate.all
  end

  def show
    @follow_candidate = FollowCandidate.find(params[:id])
  end

  def new
    @follow_candidate = FollowCandidate.new
  end

  def create
    @follow_candidate = FollowCandidate.new
    @follow_candidate.user_id = params[:user_id]
    @follow_candidate.candidate_id = params[:candidate_id]

    if @follow_candidate.save
      redirect_to "/candidates", :notice => "Follow candidate created successfully."
    else
      redirect_to "/candidates"
    end
  end

  def edit
    @follow_candidate = FollowCandidate.find(params[:id])
  end

  def update
    @follow_candidate = FollowCandidate.find(params[:id])

    @follow_candidate.user_id = params[:user_id]
    @follow_candidate.candidate_id = params[:candidate_id]

    if @follow_candidate.save
      redirect_to "/follow_candidates", :notice => "Follow candidate updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @follow_candidate = FollowCandidate.find(params[:id])

    @follow_candidate.destroy

    redirect_to :back, :notice => "Follow candidate deleted."
  end
end
