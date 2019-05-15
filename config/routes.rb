Rails.application.routes.draw do
  namespace :dev do
    resources :apis
  end

  root :to => redirect('/dev/apis')

  get '/api/academics/rosters/campus/:wildcard' => 'master#master', :as => :campus_roster, :defaults => { :format => 'json' }
  get '/api/academics/rosters/campus/csv/:wildcard' => 'master#master', :as => :campus_roster_csv, :defaults => { :format => 'csv' }
  get '/api/my/finaid_profile/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/my/committees/photo/member/:wildcard' => 'master#master', :defaults => { :format => 'jpeg' }
  get '/api/my/committees/photo/student/:wildcard' => 'master#master', :defaults => { :format => 'jpeg' }
  get '/api/photo/:wildcard' => 'master#master', :as => :photo, :defaults => {:format => 'jpeg' }
  get '/campus/:wildcard/photo/:wildcard2' => 'master#master', :defaults => { :format => 'jpeg' }, :action => 'show'
  post '/api/my/tasks/delete/:wildcard' => 'master#master', :as => :delete_task, :defaults => { :format => 'json' }
  get '/api/advising/academics/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/advising/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/cache_expiry/academics/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/class_enrollments/:wildcard' => 'master#master', :defaults => { :format => 'json'}
  get '/api/advising/student_committees/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/degree_progress/grad/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/degree_progress/ugrd/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/holds/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/standings/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/registrations/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/resources/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/student/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/student_success/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/transfer_credit/:wildcard' => 'master#master', :defaults => { :format => 'json' }
  get '/api/advising/employment_appointments/:wildcard' =>  'master#master', :defaults => { :format => 'json' }
  get '/api/search_users/id_or_name/:wildcard/' => 'master#master', :defaults => { :format => 'json' }
  get '*path' => 'master#master', :defaults => { :format => 'json' }
end
