class CandidatesController < ApplicationController
  def index
    @candidates_full = Candidate.all

    @q = Candidate.ransack(params[:q])
    @candidates = @q.result

    @my_q = current_user.followed_candidates.ransack(params[:q])
    @my_candidates = @my_q.result

    @follow_candidate = FollowCandidate.new
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new
    @candidate.name = params[:name]
    @candidate.party = params[:party]
    @candidate.bio = params[:bio]
    @candidate.current_position = params[:current_position]
    @candidate.new_position = params[:new_position]
    @candidate.image = params[:image]

    if @candidate.save
      redirect_to "/candidates", :notice => "Candidate created successfully."
    else
      render 'new'
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])

    @candidate.name = params[:name]
    @candidate.party = params[:party]
    @candidate.bio = params[:bio]
    @candidate.current_position = params[:current_position]
    @candidate.new_position = params[:new_position]
    @candidate.image = params[:image]

    if @candidate.save
      redirect_to "/candidates/", :notice => "Candidate updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @candidate = Candidate.find(params[:id])

    @candidate.destroy

    redirect_to "/candidates", :notice => "Candidate deleted."
  end
end
