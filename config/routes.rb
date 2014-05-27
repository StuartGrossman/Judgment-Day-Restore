Rails.application.routes.draw do
  devise_for :users
  resources :companies
  resources :layouts
  get 'about' => 'companies#about'
  root 'home_page#home'

end
# Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                companies GET    /companies(.:format)           companies#index
#                          POST   /companies(.:format)           companies#create
#              new_company GET    /companies/new(.:format)       companies#new
#             edit_company GET    /companies/:id/edit(.:format)  companies#edit
#                  company GET    /companies/:id(.:format)       companies#show
#                          PATCH  /companies/:id(.:format)       companies#update
#                          PUT    /companies/:id(.:format)       companies#update
#                          DELETE /companies/:id(.:format)       companies#destroy
#                     root GET    /                              home_page#home