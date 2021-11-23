Rails.application.routes.draw do
  root 'home#index'
  get '/images', to: 'home#images'
  get '/forms', to: 'home#forms'
  get '/validations', to: 'home#validations'
  get '/links-buttons', to: 'home#links_and_buttons'
  get '/language', to: 'home#language'
  get '/flash-messages', to: 'home#flash_messages'
  get '/tables', to: 'home#tables'
  get '/navigation', to: 'home#navigation'
  get '/page-structure', to: 'home#structure'
  get '/semantic-html-and-aria', to: 'home#semantics'
end
