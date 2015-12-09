class TagIssue < ActiveRecord::Base

validates :article_id, presence: true, :uniqueness => { :scope => :issue_id }
validates :issue_id, presence: true

belongs_to :article
belongs_to :issue

end
