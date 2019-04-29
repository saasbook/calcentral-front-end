# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pathmaps = [{:uripath => '/api/academics/degree_progress/grad', :filepath => '/public/dummy/json/degree_progress_grad.json'},
            {:uripath => '/api/academics/degree_progress/ugrd', :filepath => '/public/dummy/json/degree_progress_ugrd.json'},
            {:uripath => '/api/academics/enrollment_verification', :filepath => '/public/dummy/json/enrollment_verification.json'},

            {:uripath => '/api/academics/exam_results', :filepath => '/public/dummy/json/exam_results.json'},
            {:uripath => '/api/academics/has_exam_results', :filepath => '/public/dummy/json/has_exam_results.json'},
            #{:uripath => '/api/academics/pnp_calculator/calculator_values', :filepath => '?.json'},
            {:uripath => '/api/academics/pnp_calculator/ratio_message', :filepath => '/public/dummy/json/pnp_ratio_message.json'},
            {:uripath => '/api/academics/rosters/campus/:campus_course_id', :filepath => '/public/dummy/json/campus_rosters.json'},
            #{:uripath => '/api/academics/rosters/campus/csv/:campus_course_id', :filepath => '?.csv'},
            {:uripath => '/api/academics/transfer_credits', :filepath => '/public/dummy/json/transfer_credit.json'},
            {:uripath => '/api/advising/my_advising', :filepath => '/public/dummy/json/my_advising.json'},
            #{:uripath => '/api/media/:term_yr/:term_cd/:dept_name/:catalog_id', :filepath => '?.json'},
            #{:uripath => '/api/my/academics', :filepath => '?.json'},
            {:uripath => '/api/my/academic_records', :filepath => '/public/dummy/json/my_academic_records.json'},
            {:uripath => '/api/my/activities', :filepath => '/public/dummy/json/activities.json'},
            #{:uripath => '/api/my/aid_years', :filepath => '?.json'},
            {:uripath => '/api/my/badges', :filepath => '/public/dummy/json/badges.json'},
            #{:uripath => '/api/my/campuslinks', :filepath => '???/public/dummy/json/campus_solutions_link.json'},
            #{:uripath => '/api/my/campuslinks/expire', :filepath => '???/public/dummy/json/campus_solutions_link.json'},
            #{:uripath => '/api/my/campuslinks/refresh', :filepath => '???/public/dummy/json/campus_solutions_link.json'},
            {:uripath => '/api/my/financial_aid_summary', :filepath => '/public/dummy/json/finaid_summary.json'},
            {:uripath => '/api/my/finaid_profile/:aid_year', :filepath => '/public/dummy/json/finaid.json'},
            #{:uripath => '/api/my/class_enrollments', :filepath => '?.json'},
            {:uripath => '/api/my/classes', :filepath => '/public/dummy/json/classes.json'},
            #*****************************************************************************************************************************************************************88
            {:uripath => '/api/my/committees', :filepath => '/public/dummy/json/committees.json'},
            #{:uripath => '/api/my/committees/photo/member/:member_id', :filepath => '?.jpg'},
            #{:uripath => '/api/my/committees/photo/student/:student_id', :filepath => '?.jpg'},
            #{:uripath => '/api/my/eft_enrollment', :filepath => '?.json'},
            {:uripath => '/api/my/financials', :filepath => '/public/dummy/json/financials.json'},
            {:uripath => '/api/my/groups', :filepath => '/public/dummy/json/groups.json'},
            {:uripath => '/api/my/holds', :filepath => '/public/dummy/json/holds_present.json'},
            #above has multiple json files, may depend on logic
            #{:uripath => '/api/my/housing/:aid_year', :filepath => '?.json'},
            #{:uripath => '/api/my/loan_history_aid_years', :filepath => '?.json'},
            #{:uripath => '/api/my/loan_history_cumulative', :filepath => '?.json'},
            #{:uripath => '/api/my/loan_history_inactive', :filepath => '?.json'},
            #{:uripath => '/api/my/loan_history_summary', :filepath => '?.json'},
            {:uripath => '/api/my/new_admit_resources', :filepath => '/public/dummy/json/new_admit_resources.json'},
            #{:uripath => '/api/my/photo', :filepath => '/public/dummy/images/sample_student_72x96.jpg'}, not sure if this is the intended photo
            #{:uripath => '/api/my/profile', :filepath => '?.json'},
            #{:uripath => '/api/my/profile/link', :filepath => '?.json'},
            {:uripath => '/api/my/registrations', :filepath => '/public/dummy/json/my_registrations.json'},
            {:uripath => '/api/my/residency', :filepath => '/public/dummy/json/residency.json'},
            {:uripath => '/api/my/sir_statuses', :filepath => '/public/dummy/json/sir_statuses_completed.json'},
            #above has 3 possible files that may depend on logic, may not be necessary for us to worry about though since that logic would probably not affect front end
            {:uripath => '/api/my/standings', :filepath => '/public/dummy/json/standings_present.json'},
            {:uripath => '/api/my/tasks', :filepath => '/public/dummy/json/tasks.json'},
            #{:uripath => '/api/my/terms_and_conditions/:aid_year', :filepath => '?.json'},
            {:uripath => '/api/my/textbooks_details', :filepath => '/public/dummy/json/textbooks_details.json'},
            #{:uripath => '/api/my/title4', :filepath => '?.json'},
            {:uripath => '/api/my/up_next', :filepath => '/public/dummy/json/up_next.json'},
            #{:uripath => '/api/photo/:uid', :filepath => '?.jpg'},
            #above can probably use whatever photo since what image shows up isnt very important
            #{:uripath => '/api/service_alerts', :filepath => '?.json'},
            #{:uripath => '/api/my/calgrant_acknowledgements', :filepath => '?.json'},
            #{:uripath => '/campus/:campus_course_id/photo/:person_id', :filepath => '?.jpg'},


            {:uripath =>  '/canvas/lti_roster_photos', :filepath => '/public/dummy/xml/lti_roster_photo.xml'},
            {:uripath =>  '/canvas/lti_site_creation', :filepath => '/public/dummy/xml/lti_site_creation.xml'},
            {:uripath =>  '/canvas/lti_site_mailing_list', :filepath => '/public/dummy/xml/lti_site_mailing_list.xml'},
            {:uripath =>  '/canvas/lti_site_mailing_lists', :filepath => '/public/dummy/xml/lti_site_mailing_lists.xml'},
            {:uripath =>  '/canvas/lti_user_provision', :filepath => '/public/dummy/xml/lti_user_provision.xml'},
            {:uripath =>  '/canvas/lti_course_add_user', :filepath => '/public/dummy/xml/lti_course_mediacasts.xml'},
            #{:uripath =>  '/canvas/lti_course_mediacasts', :filepath => '/public/dummy/??'},
            {:uripath =>  '/canvas/lti_course_grade_export', :filepath => '/public/dummy/xml/lti_course_grade_export.xml'},
            {:uripath =>  '/canvas/lti_course_manage_official_sections', :filepath => '/public/dummy/xml/lti_course_manage_official_sections.xml'},
            # A Canvas course ID of "embedded" means to retrieve from session properties.
            #{:uripath =>  '/api/academics/canvas/course_user_roles/:canvas_course_id', :filepath => '/public/dummy/json/??.json'},
            #{:uripath =>  '/api/academics/canvas/external_tools', :filepath => '/public/dummy/json/??.json'},
            #{:uripath =>  '/api/academics/canvas/user_can_create_site', :filepath => '/public/dummy/json/??.json'},
            #{:uripath =>  '/api/academics/canvas/egrade_export/download/:canvas_course_id', :filepath => '/public/dummy/json/??.csv'},
            {:uripath =>  '/api/academics/canvas/egrade_export/options/:canvas_course_id', :filepath => '/public/dummy/json/canvas_course_grade_export_prepare_egrades_cache.json'},
            #{:uripath =>  '/api/academics/canvas/egrade_export/is_official_course', :filepath => '/public/dummy/json/textbooks_details.json'},
            {:uripath =>  '/api/academics/canvas/egrade_export/status/:canvas_course_id', :filepath => '/public/dummy/json/canvas_course_grade_export_job_status_completed.json'},
            #post '/api/academics/canvas/egrade_export/prepare/:canvas_course_id', :filepath => '/public/dummy/json/textbooks_details.json'},
            #post '/api/academics/canvas/egrade_export/resolve/:canvas_course_id', :filepath => '/public/dummy/json/textbooks_details.json'},
            {:uripath =>  '/api/academics/rosters/canvas/:canvas_course_id', :filepath => '/public/dummy/json/canvas_rosters.json'},
            #{:uripath =>  '/api/academics/rosters/canvas/csv/:canvas_course_id', :filepath => '/public/dummy/json/textbooks_details.json'},
            {:uripath =>  '/canvas/:canvas_course_id/photo/:person_id', :filepath => '/public/dummy/json/canvas_rosters.json'},
            {:uripath =>  '/canvas/:canvas_course_id/profile/:person_id', :filepath => '/public/dummy/json/canvas_rosters.json'},
            {:uripath =>  '/api/academics/canvas/course_provision', :filepath => '/public/dummy/json/canvas_course_provision_feed_by_ccns_response.json'},
            {:uripath =>  '/api/academics/canvas/course_provision_as/:admin_acting_as', :filepath => '/public/dummy/json/canvas_course_provision_feed_response.json'},
            #post '/api/academics/canvas/course_provision/create', :filepath => '/public/dummy/json/textbooks_details.json'},
            {:uripath =>  '/api/academics/canvas/course_provision/sections_feed/:canvas_course_id', :filepath => '/public/dummy/json/canvas_course_provision_feed_by_ccns_response.json'},
            #post '/api/academics/canvas/course_provision/edit_sections/:canvas_course_id', :filepath => '/public/dummy/json/textbooks_details.json'},
            {:uripath =>  '/api/academics/canvas/course_provision/status', :filepath => '/public/dummy/json/canvas_course_provision_status_completed.json'},
            #post '/api/academics/canvas/project_provision/create', :filepath => '/public/dummy/json/textbooks_details.json'},
            #post '/api/academics/canvas/user_provision/user_import', :filepath => '/public/dummy/json/textbooks_details.json'},
            {:uripath =>  '/api/academics/canvas/site_creation/authorizations', :filepath => '/public/dummy/json/canvas_rosters.json'},
            {:uripath =>  '/api/academics/canvas/course_add_user/:canvas_course_id/search_users', :filepath => '/public/dummy/json/canvas_rosters.json'},
            {:uripath =>  '/api/academics/canvas/course_add_user/:canvas_course_id/course_sections', :filepath => '/public/dummy/json/canvas_rosters.json'},
            #post '/api/academics/canvas/course_add_user/:canvas_course_id/add_user', :filepath => '/public/dummy/json/textbooks_details.json'},
            #{:uripath =>  '/api/canvas/media/:canvas_course_id', :filepath => '/public/dummy/json/??.json'},
            # Administer Canvas mailing list for a single course site
            {:uripath =>  '/api/academics/canvas/mailing_list/:canvas_course_id', :filepath => '/public/dummy/json/canvas_site_mailing_list_new.json'},
            #post '/api/academics/canvas/mailing_list/:canvas_course_id/create', :filepath => '/public/dummy/json/textbooks_details.json'},
            # Administer Canvas mailing lists for any course site
            {:uripath =>  '/api/academics/canvas/mailing_lists/:canvas_course_id', :filepath => '/public/dummy/json/canvas_site_mailing_list_new.json'},
            #post '/api/academics/canvas/mailing_lists/:canvas_course_id/create', :filepath => '/public/dummy/json/textbooks_details.json'},
            #post '/api/academics/canvas/mailing_lists/:canvas_course_id/populate', :filepath => '/public/dummy/json/textbooks_details.json'},
            #post '/api/academics/canvas/mailing_lists/:canvas_course_id/delete', :filepath => '/public/dummy/json/textbooks_details.json'},
            # Incoming email messages
            #post '/api/mailing_lists/message', :filepath => '/public/dummy/json/textbooks_details.json'},

            # All require auth from google
            #{:uripath =>  '/api/oec/google/request_authorization'=> 'oec_google_auth#refresh_tokens', :defaults => { :format => 'json' }
            #{:uripath =>  '/api/oec/google/handle_callback', :filepath => '/public/dummy/json/textbooks_details.json'},
            #{:uripath =>  '/api/oec/google/current_scope', :filepath => '/public/dummy/json/textbooks_details.json'},
            #{:uripath =>  '/api/oec/google/remove_authorization', :filepath => '/public/dummy/json/textbooks_details.json'},
            #{:uripath =>  '/api/oec/tasks', :filepath => '/public/dummy/json/textbooks_details.json'},
            #post '/api/oec/tasks/:task_name', :filepath => '/public/dummy/json/textbooks_details.json'},
            #{:uripath =>  '/api/oec/tasks/status/:task_id', :filepath => '/public/dummy/json/textbooks_details.json'}
          



            #******************************************User management APIs****************************************
            {:uripath => '/api/my/am_i_logged_in', :filepath => '/public/dummy/json/am_i_logged_in.json'},
            {:uripath => '/api/my/status', :filepath => '/public/dummy/json/status.json'},
            {:uripath => '/api/cache/clear', :filepath => '/public/dummy/json/cache_clear.json'},
            {:uripath => '/api/cache/delete', :filepath => '/public/dummy/json/cache_delete.json'},
            {:uripath => '/api/cache/delete/:key', :filepath => '/public/dummy/json/cache_delete.json'},
            {:uripath => '/api/config', :filepath => '/public/dummy/json/api_config.json'},
            {:uripath => '/api/ping', :filepath => '/public/dummy/json/ping.json'},
            {:uripath => '/api/server_info', :filepath => '/public/dummy/json/server_info.json'},
            {:uripath => '/api/google/current_scope', :filepath => '/public/dummy/json/google_current_scope.json'}
  	   ]


pathmaps.each do |pathmap|
  Pathmap.create!(pathmap)
end
