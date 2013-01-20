CarrierwaveActiverecordProject::Application.routes.draw do
  root :to => 'articles#new'

  resources :articles do
    # FIXME: Should the file be declared as a resource instead of a member?
    # resource :file

    # There is only one file per article, use a generic route.
    member do
      get 'file'
    end

    # OR:
    #
    # Use a segment :filename to be suggestive of how we'll use this route.
    # We don't care what :filename actually is, CarrierWave does not find by name.
    #
    # member 'file/:filename' => 'articles#file'
  end
end
