CarrierwaveActiverecordProject::Application.routes.draw do
  resources :articles do
    member do
      get '/files/:filename' => 'article_files#show', :format => :false,
                                                      :filename => /[^\/]*/
    end
  end
end
