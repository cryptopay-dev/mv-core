module Mv
  module Core
    module Validation
      class Format
        include ActiveModel::Validations

        attr_reader :table_name, :column_name, 
                    :with, :message, :on, :create_trigger_name, :update_trigger_name, 
                    :allow_nil, :allow_blank, :as

        validates :with, presence: true
        validates :on, inclusion: { in: :available_on }
        validates :allow_nil, :allow_blank, inclusion: { in: [true, false] }
        validates :as, inclusion: { in: :available_as }

        def initialize(table_name, column_name, opts)
          @table_name = table_name
          @column_name = column_name
          
          opts.with_indifferent_access.tap do |opts|
            @with = opts[:with]
            @message = opts[:message] || default_message
            @on = opts[:on] || default_on
            @create_trigger_name = opts[:create_trigger_name] || default_create_trigger_name
            @update_trigger_name = opts[:update_trigger_name] || default_update_trigger_name
            @allow_nil = opts[:allow_nil] || false
            @allow_blank = opts[:allow_blank] || false
            @as = opts[:as] || default_as
          end
        end

        protected

        def available_as
          [:trigger, :check]
        end

        def available_on 
          [:save, :update, :create]
        end

        def default_message
          "Format violated on the table #{table_name} column #{column_name}"
        end

        def default_on
          :save
        end

        def default_as
          :trigger
        end

        def default_create_trigger_name
          [:save, :create].include?(on.to_sym) ? "trg_mv_#{table_name}_ins" : nil
        end

        def default_update_trigger_name
          [:save, :update].include?(on.to_sym) ? "trg_mv_#{table_name}_upd" : nil
        end
      end
    end
  end
end