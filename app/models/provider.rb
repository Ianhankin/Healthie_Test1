class Provider < ApplicationRecord
    has_many :plans
    has_many :clients, through: :plans

    def all_journals
        client_ids = clients.map(&:id)
        Journal.all.select { |j| j.client_id in client_ids}
    end
end
