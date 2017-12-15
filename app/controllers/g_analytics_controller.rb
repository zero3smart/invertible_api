class GAnalyticsController < ApplicationController
    # GET /g_analytics
    def index

    end

    # GET /g_analytics/:start_date/:end_date
    def get_by_date_range
        start_date = params[:start_date]
        end_date = params[:end_date]
        @analytics = GAnalytic.get_by_date_range(start_date, end_date)
        render json: @analytics
    end

    # GET /g_analytics/:start_date
    def get_by_now
        start_date = params[:start_date]
        @analytics = GAnalytic.get_by_now(start_date)
        render json: @analytics
    end
end
