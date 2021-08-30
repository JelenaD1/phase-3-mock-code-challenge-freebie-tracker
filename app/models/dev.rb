class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies


    def received_one?(item_name)
        freebie = freebies.find_by(item_name: item_name)
        !!freebie

    end

    def give_away(dev, freebie)
        freebie.update(dev:dev) if freebies.inlcude?(freebie)        
    end

end
