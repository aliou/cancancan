module LeftJoin
  module Adapters
    module ActiveRecordAdapter
      def left_join(*columns)
        joins(ActiveRecord::Associations::JoinDependency.new(self, columns, []))
      end
    end

    ActiveRecord::Base.extend ActiveRecordAdapter
  end
end
