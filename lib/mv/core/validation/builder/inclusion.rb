require 'mv/core/validation/builder/base'

module Mv
  module Core
    module Validation
      module Builder
        class Inclusion < Base
          delegate :in, to: :validation

          def to_sql
            apply_allow_nil_and_blank(apply_in(column_reference))
          end

          protected

          def db_value value
            return value if value.is_a?(Integer)
            "'#{value.to_s}'"
          end

          def apply_in stmt
            if self.in.is_a?(Range)
              "#{stmt} BETWEEN #{self.in.min} AND #{self.in.max}"
            else
              prepared_in = self.in.to_a.collect{ |v| db_value(v) }

              "#{stmt} IN (#{prepared_in.join(', ')})" 
            end
          end
        end
      end
    end 
  end
end