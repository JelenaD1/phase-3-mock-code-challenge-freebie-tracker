class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies


    def give_freebie(dev, item_name, value)
        Freebee.create(company: self, dev: dev, item_name: item_name, value: value )

    end 

    def self.oldest_company
        order(:founding_year).limit(1)
    end


end
