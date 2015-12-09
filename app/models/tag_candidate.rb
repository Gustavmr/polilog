class TagCandidate < ActiveRecord::Base

validates :article_id, presence: true, :uniqueness => { :scope => :candidate_id }
validates :candidate_id, presence: true

belongs_to :article
belongs_to :candidate

end
