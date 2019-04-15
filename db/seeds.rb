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
            {:uripath => '/api/academics/rosters/campus/:campus_course_id', :filepath => 'campus_rosters.json'},
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
            #{:uripath => '/api/my/finaid_profile/:aid_year', :filepath => '?.json'},
            #{:uripath => '/api/my/class_enrollments', :filepath => '?.json'},
            {:uripath => '/api/my/classes', :filepath => '/public/dummy/json/classes.json'},
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
            {:uripath => '/api/my/registrations', :filepath => 'my_registrations.json'},
            {:uripath => '/api/my/residency', :filepath => 'residency.json'},
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

  	   ]

pathmaps.each do |pathmap|
  Pathmap.create!(pathmap)
end
