Rails.application.routes.draw do
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
 get '/api/stats' => 'stats#get_stats', :defaults => { :format => 'json' }

    # Feeds of read-only content
    # TODO: replace all routes to 'master#master'
    get '/api/academics/degree_progress/grad' => 'master#master', :defaults => { :format => 'json' }
    get '/api/academics/degree_progress/ugrd' => 'master#master', :defaults => { :format => 'json' }
    get '/api/academics/enrollment_verification' => 'master#master', :defaults => { :format => 'json' }
    get '/api/academics/exam_results' => 'master#master', :defaults => { :format => 'json' }
    get '/api/academics/has_exam_results' => 'master#master', :defaults => { :format => 'json' }
    get '/api/academics/pnp_calculator/calculator_values' => 'master#master', :defaults => { :format => 'json' }
    get '/api/academics/pnp_calculator/ratio_message' => 'master#master', :defaults => { :format => 'json' }
    get '/api/academics/rosters/campus/:campus_course_id' => 'master#master', :as => :campus_roster, :defaults => { :format => 'json' }
    get '/api/academics/rosters/campus/csv/:campus_course_id' => 'master#master', :as => :campus_roster_csv, :defaults => { :format => 'csv' }
    get '/api/academics/transfer_credits' => 'master#master', :defaults => { :format => 'json' }
    get '/api/advising/my_advising' => 'master#master', :as => :advising, :defaults => {:format => 'json'}
    get '/api/media/:term_yr/:term_cd/:dept_name/:catalog_id' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/academics' => 'master#master', :as => :my_academics, :defaults => { :format => 'json' }
    get '/api/my/academic_records' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/activities' => 'master#master', :as => :my_activities, :defaults => { :format => 'json' }
    get '/api/my/aid_years' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/badges' => 'master#master', :as => :my_badges, :defaults => { :format => 'json' }
    get '/api/my/campuslinks' => 'master#master', :as => :my_campus_links, :defaults => { :format => 'json' }
    get '/api/my/campuslinks/expire' => 'master#master'
    get '/api/my/campuslinks/refresh' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/financial_aid_summary' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/finaid_profile/:aid_year' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/class_enrollments' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/classes' => 'master#master', :as => :my_classes, :defaults => { :format => 'json' }
    get '/api/my/committees' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/committees/photo/member/:member_id' => 'master#master', :defaults => { :format => 'jpeg' }
    get '/api/my/committees/photo/student/:student_id' => 'master#master', :defaults => { :format => 'jpeg' }
    get '/api/my/eft_enrollment' => 'master#master', :as => :my_eft_enrollment, :defaults => { :format => 'json' }
    get '/api/my/financials' => 'master#master', :as => :my_financials, :defaults => {:format => 'json'}
    get '/api/my/groups' => 'master#master', :as => :my_groups, :defaults => { :format => 'json' }
    get '/api/my/holds' => 'master#master', :as => :my_holds, :defaults => { :format => 'json' }
    get '/api/my/housing/:aid_year' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/loan_history_aid_years' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/loan_history_cumulative' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/loan_history_inactive' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/loan_history_summary' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/new_admit_resources' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/photo' => 'master#master', :as => :my_photo, :defaults => {:format => 'jpeg' }
    get '/api/my/profile' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/profile/link' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/registrations' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/residency' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/sir_statuses' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/standings' => 'master#master', :as => :my_standings, :defaults => { :format => 'json' }
    get '/api/my/tasks' => 'master#master', :as => :my_tasks, :defaults => { :format => 'json' }
    get '/api/my/terms_and_conditions/:aid_year' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/textbooks_details' => 'master#master', :as => :my_textbooks, :defaults => { :format => 'json' }
    get '/api/my/title4' => 'master#master', :defaults => { :format => 'json' }
    get '/api/my/up_next' => 'master#master', :as => :my_up_next, :defaults => { :format => 'json' }
    get '/api/photo/:uid' => 'master#master', :as => :photo, :defaults => {:format => 'jpeg' }
    get '/api/service_alerts' => 'master#master', :as => :service_alerts, :defaults => { :format => 'json' }
    get '/api/my/calgrant_acknowledgements' => 'master#master', as: :calgrant_acknowledgements, :defaults => { :format => 'json' }
    get '/campus/:campus_course_id/photo/:person_id' => 'master#master', :defaults => { :format => 'jpeg' }, :action => 'show'


end
