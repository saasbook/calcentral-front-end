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
    get '/api/academics/degree_progress/grad' => 'my_degree_progress#get_graduate_milestones', :defaults => { :format => 'json' }
    get '/api/academics/degree_progress/ugrd' => 'my_degree_progress#get_undergraduate_requirements', :defaults => { :format => 'json' }
    get '/api/academics/enrollment_verification' => 'enrollment_verification#get_feed', :defaults => { :format => 'json' }
    get '/api/academics/exam_results' => 'exam_results#get_exam_results', :defaults => { :format => 'json' }
    get '/api/academics/has_exam_results' => 'exam_results#has_exam_results', :defaults => { :format => 'json' }
    get '/api/academics/pnp_calculator/calculator_values' => 'campus_solutions/pnp_calculator#get_calculator_values', :defaults => { :format => 'json' }
    get '/api/academics/pnp_calculator/ratio_message' => 'campus_solutions/pnp_calculator#get_ratio_message', :defaults => { :format => 'json' }
    get '/api/academics/rosters/campus/:campus_course_id' => 'campus_rosters#get_feed', :as => :campus_roster, :defaults => { :format => 'json' }
    get '/api/academics/rosters/campus/csv/:campus_course_id' => 'campus_rosters#get_csv', :as => :campus_roster_csv, :defaults => { :format => 'csv' }
    get '/api/academics/transfer_credits' =>'transfer_credit#get_feed', :defaults => { :format => 'json' }
    get '/api/advising/my_advising' => 'my_advising#get_feed', :as => :advising, :defaults => {:format => 'json'}
    get '/api/media/:term_yr/:term_cd/:dept_name/:catalog_id' => 'mediacasts#get_media', :defaults => { :format => 'json' }
    get '/api/my/academics' => 'my_academics#get_feed', :as => :my_academics, :defaults => { :format => 'json' }
    get '/api/my/academic_records' => 'my_academic_records#get_feed', :defaults => { :format => 'json' }
    get '/api/my/activities' => 'my_activities#get_feed', :as => :my_activities, :defaults => { :format => 'json' }
    get '/api/my/aid_years' => 'my_aid_years#get_feed', :defaults => { :format => 'json' }
    get '/api/my/badges' => 'my_badges#get_feed', :as => :my_badges, :defaults => { :format => 'json' }
    get '/api/my/campuslinks' => 'my_campus_links#get_feed', :as => :my_campus_links, :defaults => { :format => 'json' }
    get '/api/my/campuslinks/expire' => 'my_campus_links#expire'
    get '/api/my/campuslinks/refresh' => 'my_campus_links#refresh', :defaults => { :format => 'json' }
    get '/api/my/financial_aid_summary' => 'my_financial_aid_summary#get_feed', :defaults => { :format => 'json' }
    get '/api/my/finaid_profile/:aid_year' => 'my_finaid_profile#get_feed', :defaults => { :format => 'json' }
    get '/api/my/class_enrollments' => 'my_class_enrollments#get_feed', :defaults => { :format => 'json' }
    get '/api/my/classes' => 'my_classes#get_feed', :as => :my_classes, :defaults => { :format => 'json' }
    get '/api/my/committees' => 'my_committees#get_feed', :defaults => { :format => 'json' }
    get '/api/my/committees/photo/member/:member_id' => 'my_committees#member_photo', :defaults => { :format => 'jpeg' }
    get '/api/my/committees/photo/student/:student_id' => 'my_committees#student_photo', :defaults => { :format => 'jpeg' }
    get '/api/my/eft_enrollment' => 'my_eft_enrollment#get_feed', :as => :my_eft_enrollment, :defaults => { :format => 'json' }
    get '/api/my/financials' => 'my_financials#get_feed', :as => :my_financials, :defaults => {:format => 'json'}
    get '/api/my/groups' => 'my_groups#get_feed', :as => :my_groups, :defaults => { :format => 'json' }
    get '/api/my/holds' => 'my_holds#get_feed', :as => :my_holds, :defaults => { :format => 'json' }
    get '/api/my/housing/:aid_year' => 'my_housing#get_feed', :defaults => { :format => 'json' }
    get '/api/my/loan_history_aid_years' => 'loan_history#get_aid_years_feed', :defaults => { :format => 'json' }
    get '/api/my/loan_history_cumulative' => 'loan_history#get_cumulative_feed', :defaults => { :format => 'json' }
    get '/api/my/loan_history_inactive' => 'loan_history#get_inactive_feed', :defaults => { :format => 'json' }
    get '/api/my/loan_history_summary' => 'loan_history#get_summary_feed', :defaults => { :format => 'json' }
    get '/api/my/new_admit_resources' =>'new_admit_resources#get_feed', :defaults => { :format => 'json' }
    get '/api/my/photo' => 'photo#my_photo', :as => :my_photo, :defaults => {:format => 'jpeg' }
    get '/api/my/profile' => 'my_profile#get_feed', :defaults => { :format => 'json' }
    get '/api/my/profile/link' => 'my_profile#get_edit_link', :defaults => { :format => 'json' }
    get '/api/my/registrations' => 'my_registrations#get_feed', :defaults => { :format => 'json' }
    get '/api/my/residency' => 'my_academics#residency', :defaults => { :format => 'json' }
    get '/api/my/sir_statuses' => 'sir_statuses#get_feed', :defaults => { :format => 'json' }
    get '/api/my/standings' => 'my_standings#get_feed', :as => :my_standings, :defaults => { :format => 'json' }
    get '/api/my/tasks' => 'my_tasks#get_feed', :as => :my_tasks, :defaults => { :format => 'json' }
    get '/api/my/terms_and_conditions/:aid_year' => 'my_terms_and_conditions#get_feed', :defaults => { :format => 'json' }
    get '/api/my/textbooks_details' => 'my_textbooks#get_feed', :as => :my_textbooks, :defaults => { :format => 'json' }
    get '/api/my/title4' => 'my_title4#get_feed', :defaults => { :format => 'json' }
    get '/api/my/up_next' => 'my_up_next#get_feed', :as => :my_up_next, :defaults => { :format => 'json' }
    get '/api/photo/:uid' => 'photo#photo', :as => :photo, :defaults => {:format => 'jpeg' }
    get '/api/service_alerts' => 'service_alerts#get_feed', :as => :service_alerts, :defaults => { :format => 'json' }
    get '/api/my/calgrant_acknowledgements' => 'cal_grant_acknowledgements#index', as: :calgrant_acknowledgements, :defaults => { :format => 'json' }
    get '/campus/:campus_course_id/photo/:person_id' => 'campus_rosters#photo', :defaults => { :format => 'jpeg' }, :action => 'show'


end
