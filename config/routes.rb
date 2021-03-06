Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'
  get '/images', to: 'home#images'
  get '/forms', to: 'home#forms'
  get '/validations', to: 'home#validations'
  get '/links', to: 'home#links'
  get '/buttons', to: 'home#buttons'
  get '/language', to: 'home#language'
  get '/flash-messages', to: 'home#flash_messages'
  get '/tables', to: 'home#tables'
  get '/testing', to: 'home#testing'
  get '/navigation', to: 'home#navigation'
  get '/page-structure', to: 'home#structure'
  get '/semantic-html-and-aria', to: 'home#semantics'
end
