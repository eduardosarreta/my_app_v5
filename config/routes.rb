Rails.application.routes.draw do

  devise_for :users
  root 'states#index'
  # Routes for the Bookmarked_senator resource:
  # CREATE
  get "/bookmarked_senators/new", :controller => "bookmarked_senators", :action => "new"
  post "/create_bookmarked_senator", :controller => "bookmarked_senators", :action => "create"

  # READ
  get "/bookmarked_senators", :controller => "bookmarked_senators", :action => "index"
  get "/bookmarked_senators/:id", :controller => "bookmarked_senators", :action => "show"

  # UPDATE
  get "/bookmarked_senators/:id/edit", :controller => "bookmarked_senators", :action => "edit"
  post "/update_bookmarked_senator/:id", :controller => "bookmarked_senators", :action => "update"

  # DELETE
  get "/delete_bookmarked_senator/:id", :controller => "bookmarked_senators", :action => "destroy"
  #------------------------------

  # Routes for the Bookmarked_deputy resource:
  # CREATE
  get "/bookmarked_deputies/new", :controller => "bookmarked_deputies", :action => "new"
  post "/create_bookmarked_deputy", :controller => "bookmarked_deputies", :action => "create"

  # READ
  get "/bookmarked_deputies", :controller => "bookmarked_deputies", :action => "index"
  get "/bookmarked_deputies/:id", :controller => "bookmarked_deputies", :action => "show"

  # UPDATE
  get "/bookmarked_deputies/:id/edit", :controller => "bookmarked_deputies", :action => "edit"
  post "/update_bookmarked_deputy/:id", :controller => "bookmarked_deputies", :action => "update"

  # DELETE
  get "/delete_bookmarked_deputy/:id", :controller => "bookmarked_deputies", :action => "destroy"
  #------------------------------

  # Routes for the State resource:
  # CREATE
  get "/states/new", :controller => "states", :action => "new"
  post "/create_state", :controller => "states", :action => "create"

  # READ
  get "/states", :controller => "states", :action => "index"
  get "/states/:name", :controller => "states", :action => "show"
  get "/states/:id/deputies", :controller => "states", :action => "show_deputies"
  get "/states/:id/senators", :controller => "states", :action => "show_senators"

  # UPDATE
  get "/states/:id/edit", :controller => "states", :action => "edit"
  post "/update_state/:id", :controller => "states", :action => "update"

  # DELETE
  get "/delete_state/:id", :controller => "states", :action => "destroy"
  #------------------------------

  # Routes for the Party resource:
  # CREATE
  get "/parties/new", :controller => "parties", :action => "new"
  post "/create_party", :controller => "parties", :action => "create"

  # READ
  get "/parties", :controller => "parties", :action => "index"
  get "/parties/:id", :controller => "parties", :action => "show"

  # UPDATE
  get "/parties/:id/edit", :controller => "parties", :action => "edit"
  post "/update_party/:id", :controller => "parties", :action => "update"

  # DELETE
  get "/delete_party/:id", :controller => "parties", :action => "destroy"
  #------------------------------

  # Routes for the Senator resource:
  # CREATE
  get "/senators/new", :controller => "senators", :action => "new"
  post "/create_senator", :controller => "senators", :action => "create"

  # READ
  get "/senators", :controller => "senators", :action => "index"
  get "/senators/:id", :controller => "senators", :action => "show"

  # UPDATE
  get "/senators/:id/edit", :controller => "senators", :action => "edit"
  post "/update_senator/:id", :controller => "senators", :action => "update"

  # DELETE
  get "/delete_senator/:id", :controller => "senators", :action => "destroy"
  #------------------------------

  # Routes for the Deputy resource:
  # CREATE
  get "/deputies/new", :controller => "deputies", :action => "new"
  post "/create_deputy", :controller => "deputies", :action => "create"

  # READ
  get "/deputies", :controller => "deputies", :action => "index"
  get "/deputies/:id", :controller => "deputies", :action => "show"

  # UPDATE
  get "/deputies/:id/edit", :controller => "deputies", :action => "edit"
  post "/update_deputy/:id", :controller => "deputies", :action => "update"

  # DELETE
  get "/delete_deputy/:id", :controller => "deputies", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
