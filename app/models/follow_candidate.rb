class FollowCandidate < ActiveRecord::Base

validates :user_id, presence: true, :uniqueness => { :scope => :candidate_id }
validates :candidate_id, presence: true


belongs_to :user
belongs_to :candidate


end
