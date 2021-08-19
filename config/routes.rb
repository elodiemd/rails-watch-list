Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies
  resources :lists do
    resources :bookmarks
  end
end

#                    movies GET    /movies(.:format)                                                                        movies#index
#                           POST   /movies(.:format)                                                                        movies#create
#                 new_movie GET    /movies/new(.:format)                                                                    movies#new
#                edit_movie GET    /movies/:id/edit(.:format)                                                               movies#edit
#                     movie GET    /movies/:id(.:format)                                                                    movies#show
#                           PATCH  /movies/:id(.:format)                                                                    movies#update
#                           PUT    /movies/:id(.:format)                                                                    movies#update
#                           DELETE /movies/:id(.:format)                                                                    movies#destroy
#            list_bookmarks GET    /lists/:list_id/bookmarks(.:format)                                                      bookmarks#index
#                           POST   /lists/:list_id/bookmarks(.:format)                                                      bookmarks#create
#         new_list_bookmark GET    /lists/:list_id/bookmarks/new(.:format)                                                  bookmarks#new
#        edit_list_bookmark GET    /lists/:list_id/bookmarks/:id/edit(.:format)                                             bookmarks#edit
#             list_bookmark GET    /lists/:list_id/bookmarks/:id(.:format)                                                  bookmarks#show
#                           PATCH  /lists/:list_id/bookmarks/:id(.:format)                                                  bookmarks#update
#                           PUT    /lists/:list_id/bookmarks/:id(.:format)                                                  bookmarks#update
#                           DELETE /lists/:list_id/bookmarks/:id(.:format)                                                  bookmarks#destroy
#                     lists GET    /lists(.:format)                                                                         lists#index
#                           POST   /lists(.:format)                                                                         lists#create
#                  new_list GET    /lists/new(.:format)                                                                     lists#new
#                 edit_list GET    /lists/:id/edit(.:format)                                                                lists#edit
#                      list GET    /lists/:id(.:format)                                                                     lists#show
#                           PATCH  /lists/:id(.:format)                                                                     lists#update
#                           PUT    /lists/:id(.:format)                                                                     lists#update
#                           DELETE /lists/:id(.:format)                                                                     lists#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
