Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/g_analytics/explorer/:start_date/:end_date', to: 'g_analytics#get_by_date_range'
  get '/g_analytics/explorer/:start_date', to: 'g_analytics#get_by_now'
  get '/g_analytics_1/:start_date/:end_date', to: 'g_analytics#get_analytics'
end
