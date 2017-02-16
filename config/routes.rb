Rails.application.routes.draw do
  root 'home#display'
  get '/addtask'=>'home#addtask'
  get '/display'=>'home#display'
  get '/completed'=>'home#completed'
  get '/signin_get'=>'home#signin_get'
  get '/signup_get'=>'home#signup_get'
  post '/signin'=>'home#signin'
  post '/signup'=>'home#signup'
  get '/wrongpassword'=>'home#wrongpassword'
  get '/logincheck'=>'home#logincheck'
  
end
