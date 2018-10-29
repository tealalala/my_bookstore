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
    get '/books' => 'books#index'
    get '/books/:id' => 'bookss#show'
    post '/books' => 'books#create'
    put '/books/:id' => 'books#update'
    get '/books/:id' => 'books#destroy'
  end
end
