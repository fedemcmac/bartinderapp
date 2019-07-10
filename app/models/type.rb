class Type < ApplicationRecord
    has_many :ingredients

    def self.spirits
        self.first.ingredients
    end

    def self.mixers
        self.last.ingredients
    end

    def self.garnishes
        self.second.ingredients
    end
end
