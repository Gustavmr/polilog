class UsersController < ApplicationController

def home
  @candidates = Candidate.all
  @issues = Issue.all
  @articles = Article.all
end

end
