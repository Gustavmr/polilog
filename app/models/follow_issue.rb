class FollowIssue < ActiveRecord::Base

validates :user_id, presence: true, :uniqueness => { :scope => :issue_id }
validates :issue_id, presence: true

belongs_to :user
belongs_to :issue

end
