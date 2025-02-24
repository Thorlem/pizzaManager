class Pizza < ApplicationRecord
    has_and_belongs_to_many :toppings

    # Validations
    validates :name, presence: true, uniqueness: { case_sensitive: false },
        length: { minimum: 3 },
        format: { with: /\A[a-zA-Z\s]+\z/, message: "Only letters allowed in the name" }

    validate :unique_topping_combination,

    def unique_topping_combination
        current_toppings = []
        self.toppings.each do |t|
          current_toppings << t.id
        end

        existing_pizza = Pizza.all.find do |p|
            p.toppings.pluck(:id).sort == current_toppings.sort
        end

        if existing_pizza != nil && self.id != existing_pizza.id
            errors.add(:base, "A pizza with these exact toppings already exists: #{existing_pizza.name}")
        end
    end
end
