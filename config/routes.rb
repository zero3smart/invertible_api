Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/g_analytics/:start_date/:end_date', to: 'g_analytics#get_by_date_range'
  get '/g_analytics/:start_date', to: 'g_analytics#get_by_now'
end
