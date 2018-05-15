Rails.application.routes.draw do
  root 'home#index'
  get '/blogs/new'
  post '/blogs' => 'blogs#create'
  
  get '/blogs' => 'blogs#index'
  get '/blogs/:id' => 'blogs#show'
  
  get '/blogs/:id/edit' => 'blogs#edit'
  patch '/blogs/:id' => 'blogs#update'
  
  delete '/blogs/:id' => 'blogs#destroy'
end
