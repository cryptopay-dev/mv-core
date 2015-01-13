module Mv
  module Core
    module Services
      class CreateMigrationValidatorsTable
        attr_reader :db
        delegate :create_table, :table_exists?, :add_index, to: :db

        def initialize db = ::ActiveRecord::Base.connection
          @db = db
        end

        def execute
          unless table_exists?(:migration_validators)
            create_table(:migration_validators) do |table|
              table.string :table_name, null: false
              table.string :column_name, null: false
              table.string :validation_type, null: false
              table.string :options
            end 

            add_index(:migration_validators, 
                      [:table_name, :column_name, :validation_type], 
                      name: 'unique_idx_on_migration_validators')
          end
        end
      end
    end
  end
end