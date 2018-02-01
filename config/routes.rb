Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/g_analytics/explorer/:start_date/:end_date', to: 'g_analytics#get_by_date_range_for_explorer'
  get '/g_analytics/explorer/:start_date', to: 'g_analytics#get_by_now_for_explorer'
  get '/g_analytics/performance/:start_date/:end_date', to: 'g_analytics#get_by_date_range_for_performance'
  get '/g_analytics/performance/:start_date', to: 'g_analytics#get_by_now_for_performance'
  # get '/g_analytics_1/:start_date/:end_date', to: 'g_analytics#get_analytics'
end
