class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  validates :username, uniqueness: true

#Associations

has_many :articles
has_many :follow_issues
has_many :follow_candidates
has_many :bias
has_many :readings
has_many :comments

has_many :bias_views, :through => :bias, :source => :article
has_many :followed_candidates, :through => :follow_candidates, :source => :candidate
has_many :followed_issues, :through => :follow_issues, :source => :issue
has_many :read_articles, :through => :readings, :source => :article
has_many :issue_comments, :through => :comments, :source => :issue

#upload avatar picture
mount_uploader :avatar, AvatarUploader

end
