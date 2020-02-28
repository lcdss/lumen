# frozen_string_literal: true

module Lumen
  module Repos
    class UserRepo < ROM::Repository[:users]
      include Import['container']

      struct_namespace Lumen

      commands :create,
        use: :timestamps,
        plugins_options: {
          timestamps: {
            timestamps: %i[created_at updated_at]
          }
        }

      def all
        users.to_a
      end

      def query(conditions)
        users.where(conditions)
      end

      def by_id(id)
        users.by_pk(id).one!
      end

      def ids
        users.pluck(:id)
      end
    end
  end
end
