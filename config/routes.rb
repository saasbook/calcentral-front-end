Rails.application.routes.draw do
  namespace :dev do
    resources :apis
  end

  root :to => redirect('/dev/apis')


  get '*path' => 'master#master', :defaults => { :format => 'json' }
end
