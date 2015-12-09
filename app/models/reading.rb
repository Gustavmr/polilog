class Reading < ActiveRecord::Base

validates :user_id, presence: true, :uniqueness => { :scope => :article_id }
validates :article_id, presence: true

belongs_to :user
belongs_to :article

end
