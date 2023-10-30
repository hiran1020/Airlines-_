class Airline < ApplicationRecord
    has_many :analysis

    before_create :slugify
    def slugify
       self.slug = name.parameterize
    end

    def avg_score
    analysis.average(:score).round(2).to_f
    end
end
