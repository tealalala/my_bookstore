Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do

    ## authors
    get '/authors' => 'authors#index'
    get '/authors/:id' => 'authors#show'
    # post '/authors' => 'authors#create'
    # delete '/authors/:id' => 'authors#destroy'


    ## books
    get '/books' => 'authors#index'
    get '/books/:id' => 'authors#show'
    # get '/books' => 'authors#create'
    # get '/books/:id' => 'authors#destroy'
  end
end
