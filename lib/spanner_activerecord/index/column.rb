module SpannerActiverecord
  class Index
    class Column
      attr_reader :name, :order, :ordinal_position

      def initialize \
          connection,
          table_name,
          index_name,
          name,
          order: nil,
          ordinal_position: nil
        @connection = connection
        @table_name = table_name
        @index_name = index_name
        @name = name
        @order = order
        @ordinal_position = ordinal_position
      end

      def storing?
        ordinal_position.nil?
      end
    end
  end
end
