class Transaction < ActiveRecord::Base
    self.table_name = 'trans_history_table'
    self.primary_key = 'id'
end