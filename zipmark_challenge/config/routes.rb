Rails.application.routes.draw do

  root 'banks#index'

  resources :banks

  get '/data_request', to: 'banks#data_request'
  get '/data_pull', to: 'banks#data_pull'
  get '/record_check/(:api)', to: 'banks#record_check'

end
