require 'mv/core/migration/operations/base'

module Mv
  module Core
    module Migration
      module Operations
        class RenameColumn < Base
          attr_reader :old_column_name, :new_column_name
          
          def initialize(version, table_name, old_column_name, new_column_name)
            super version, table_name
            
            @old_column_name = old_column_name
            @new_column_name = new_column_name
          end
        end
      end
    end
  end
end