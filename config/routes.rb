Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    ## authors
    get '/authors' => 'authors#index'
    get '/authors/:id' => 'authors#show'
    post '/authors' => 'authors#create'
    put '/authors/:id' => 'authors#update'
    delete '/authors/:id' => 'authors#destroy'


    ## books
    get '/books' => 'authors#index'
    get '/books/:id' => 'authors#show'
    post '/books' => 'authors#create'
    put '/books/:id' => 'authors#update'
    get '/books/:id' => 'authors#destroy'
  end
end
