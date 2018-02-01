class GAnalyticsController < ApplicationController
    # GET /g_analytics
    def index

    end

    # GET /g_analytics/:start_date/:end_date
    def get_by_date_range
        start_date = params[:start_date]
        end_date = params[:end_date]
        # @analytics = GAnalytic.get_by_date_range(start_date, end_date)
        @analytics = ActiveRecord::Base.connection.execute("Select * from explorer WHERE date >= ? and date <= ?", start_date, end_date)
        render json: @analytics.to_json
    end

    # GET /g_analytics/:start_date
    def get_by_now
        start_date = params[:start_date]
        # @analytics = GAnalytic.get_by_now(start_date)
        @analytics = ActiveRecord::Base.connection.execute("Select * from explorer WHERE date >= ? and date <= ?", start_date, Time.now.strftime('%Y%m%d'))
        render json: @analytics.to_json
    end

    # GET /g_analytics_1/:start_date/:end_date
    def get_analytics
        start_date = params[:start_date]
        end_date = params[:end_date]
        # @analytics = GAnalytic.get_by_date_range(start_date, end_date).select("sum(sessions)")
        @analytics = ActiveRecord::Base.connection.execute("Select sum(sessions) from explorer WHERE date >= ? and date <= ?", start_date, end_date)
        render json: @analytics.to_json
    end
end
