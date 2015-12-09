Rails.application.routes.draw do


  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  root 'users#home'
  devise_for :users

  # Routes for the Reading resource:
  # CREATE
  get "/readings/new", :controller => "readings", :action => "new"
  post "/create_reading", :controller => "readings", :action => "create"

  # READ
  get "/readings", :controller => "readings", :action => "index"
  get "/readings/:id", :controller => "readings", :action => "show"

  # UPDATE
  get "/readings/:id/edit", :controller => "readings", :action => "edit"
  post "/update_reading/:id", :controller => "readings", :action => "update"

  # DELETE
  get "/delete_reading/:id", :controller => "readings", :action => "destroy"
  #------------------------------

  # Routes for the Users resource:

  # READ

  get "/home", :controller => "users", :action => "home"

  #------------------------------

  # Routes for the Candidate resource:
  # CREATE
  get "/candidates/new", :controller => "candidates", :action => "new"
  post "/create_candidate", :controller => "candidates", :action => "create"

  # READ
  get "/candidates", :controller => "candidates", :action => "index"
  get "/candidates/:id", :controller => "candidates", :action => "show"

  # UPDATE
  get "/candidates/:id/edit", :controller => "candidates", :action => "edit"
  post "/update_candidate/:id", :controller => "candidates", :action => "update"

  # DELETE
  get "/delete_candidate/:id", :controller => "candidates", :action => "destroy"
  #------------------------------

  # Routes for the Issue resource:
  # CREATE
  get "/issues/new", :controller => "issues", :action => "new"
  post "/create_issue", :controller => "issues", :action => "create"

  # READ
  get "/issues", :controller => "issues", :action => "index"
  get "/issues/:id", :controller => "issues", :action => "show"

  # UPDATE
  get "/issues/:id/edit", :controller => "issues", :action => "edit"
  post "/update_issue/:id", :controller => "issues", :action => "update"

  # DELETE
  get "/delete_issue/:id", :controller => "issues", :action => "destroy"
  #------------------------------

  # Routes for the Article resource:
  # CREATE
  get "/articles/new", :controller => "articles", :action => "new"
  post "/create_article", :controller => "articles", :action => "create"

  # READ
  get "/articles", :controller => "articles", :action => "index"
  get "/articles/:id", :controller => "articles", :action => "show"

  # UPDATE
  get "/articles/:id/edit", :controller => "articles", :action => "edit"
  post "/update_article/:id", :controller => "articles", :action => "update"

  # DELETE
  get "/delete_article/:id", :controller => "articles", :action => "destroy"
  #------------------------------

  # Routes for the Bias resource:
  # CREATE
  get "/bias/new", :controller => "bia", :action => "new"
  post "/create_bias", :controller => "bia", :action => "create"

  # READ
  get "/bias", :controller => "bia", :action => "index"

  #------------------------------

  # Routes for the Follow_candidate resource:
  # CREATE
  post "/create_follow_candidate", :controller => "follow_candidates", :action => "create"

  # READ
  get "/follow_candidates", :controller => "follow_candidates", :action => "index"

  # DELETE
  get "/delete_follow_candidate/:id", :controller => "follow_candidates", :action => "destroy"

  #------------------------------
  # Routes for the Follow_issue resource:
  # CREATE
  post "/create_follow_issue", :controller => "follow_issues", :action => "create"

  # READ
  get "/follow_issues", :controller => "follow_issues", :action => "index"

  # DELETE
  get "/delete_follow_issue/:id", :controller => "follow_issues", :action => "destroy"

  #------------------------------

  # Routes for the Tag_candidate resource:
  # CREATE
  post "/create_tag_candidate", :controller => "tag_candidates", :action => "create"

  # READ
  get "/tag_candidates", :controller => "tag_candidates", :action => "index"

  # DELETE
  get "/delete_tag_candidate/:id", :controller => "tag_candidates", :action => "destroy"

  #------------------------------
  # Routes for the Follow_issue resource:
  # CREATE
  post "/create_tag_issue", :controller => "tag_issues", :action => "create"

  # READ
  get "/tag_issues", :controller => "tag_issues", :action => "index"

  # DELETE
  get "/delete_tag_issue/:id", :controller => "tag_issues", :action => "destroy"



end
