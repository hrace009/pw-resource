Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :monster_types, only: :show
  resources :monster_addons, only: :show
  resources :shards, only: [:index, :show]
  resources :shard_types, only: :show
  resources :quivers, only: [:index, :show]
  resources :quiver_types, only: :show
  resources :projectiles, only: [:index, :show]
  resources :projectile_types, only: :show
  resources :throwables, only: [:index, :show]
  resources :quest_items, only: [:index, :show]
  resources :chi_stones, only: [:index, :show]
  resources :resurrection_scrolls, only: [:index, :show]
  resources :teleport_incenses, only: [:index, :show]
  resources :elf_wings, only: [:index, :show]
  resources :flyers, only: [:index, :show]
  resources :skilltomes, only: [:index, :show]
  resources :skilltome_types, only: :show
  resources :defense_charms, only: [:index, :show]
  resources :defense_charm_types, only: :show
  resources :attack_charms, only: [:index, :show]
  resources :attack_charm_types, only: :show
  resources :materials, only: [:index, :show]
  resources :material_subtypes, only: :show
  resources :material_types, only: :show
  resources :potions, only: [:index, :show]
  resources :potion_subtypes, only: :show
  resources :potion_types, only: :show
  resources :ornaments, only: [:index, :show]
  resources :ornament_subtypes, only: :show
  resources :ornament_types, only: :show
  resources :armors, only: [:index, :show]
  resources :armor_subtypes, only: :show
  resources :armor_types, only: :show
  resources :weapons, only: [:index, :show] do
    get :tooltip
  end
  resources :weapon_subtypes, only: :show
  resources :weapon_types, only: :show
  resources :equipment_addons, only: :show
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
