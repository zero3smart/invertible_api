class GAnalytic < ApplicationRecord
    self.table_name = "explorer"

    scope :get_by_date_range, ->(start_date, end_date) { where("date >= ? and date <= ?", start_date, end_date) }
    scope :get_by_now, ->(start_date) { where("date >= ? and date <= ?", start_date, Time.now.strftime('%Y%m%d')) }

    def self.execute_sql(*sql_array)
        connection.execute(send(:sanitize_sql_array, sql_array))
    end
end
