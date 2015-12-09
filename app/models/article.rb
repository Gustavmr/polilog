class Article < ActiveRecord::Base

# Validations
  validates :title, presence: true
  validates :source, presence: true
  validates :source, uniqueness: true


#Associations
belongs_to :user
has_many :tag_issues
has_many :tag_candidates
has_many :bias
has_many :readings

has_many :evals, :through => :bias, :source => :user
has_many :tagged_candidates, :through => :tag_candidates, :source => :candidate
has_many :tagged_issues, :through => :tag_issues, :source => :issue
has_many :readers, :through => :readings, :source => :user


end
