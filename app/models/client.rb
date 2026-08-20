class Client < ApplicationRecord
    has_many :plans
    has_many :providers, through: :plans
    has_many :journals

    def all_journals
        return journals.sort_by(&:created_at)
    end
end
