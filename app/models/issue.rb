class Issue < ActiveRecord::Base

validates :title, presence: true
validates :title, uniqueness: true
validates :description, presence: true


has_many :follow_issues
has_many :tag_issues
has_many :comments

has_many :related_articles, :through => :tag_issues, :source => :article
has_many :followers, :through => :follow_issues, :source => :user
has_many :user_comments, :through => :comments, :source => :user

end
