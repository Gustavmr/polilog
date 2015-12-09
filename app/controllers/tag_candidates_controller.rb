class TagCandidatesController < ApplicationController
  def index
    @tag_candidates = TagCandidate.all
  end

  def show
    @tag_candidate = TagCandidate.find(params[:id])
  end

  def new
    @tag_candidate = TagCandidate.new
  end

  def create
    @tag_candidate = TagCandidate.new
    @tag_candidate.article_id = params[:article_id]
    @tag_candidate.candidate_id = params[:candidate_id]

    if @tag_candidate.save
      redirect_to :back, :notice => "Tag candidate created successfully."
    else
      redirect_to :back
    end
  end

  def edit
    @tag_candidate = TagCandidate.find(params[:id])
  end

  def update
    @tag_candidate = TagCandidate.find(params[:id])

    @tag_candidate.article_id = params[:article_id]
    @tag_candidate.candidate_id = params[:candidate_id]

    if @tag_candidate.save
      redirect_to "/tag_candidates", :notice => "Tag candidate updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tag_candidate = TagCandidate.find(params[:id])

    @tag_candidate.destroy

    redirect_to :back, :notice => "Tag candidate deleted."
  end
end
