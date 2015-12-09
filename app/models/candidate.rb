class Candidate < ActiveRecord::Base

validates :name, presence: true
validates :name, uniqueness: true
validates :party, presence: true

has_many :follow_candidates
has_many :tag_candidates

has_many :related_articles, :through => :tag_candidates, :source => :article
has_many :followers, :through => :follow_candidates, :source => :user

mount_uploader :image, ImageUploader

end
