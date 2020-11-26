class Cultivo
    include Comparable
    attr_reader :name, :description, :gei, :terr, :price, :cost

    def initialize(name, description, gei, terr, price, cost)
        @name = name
        @description = description
        @gei = gei
        @terr = terr
        @price =  price
        @cost = cost
    end

    def getName()
        return @name
    end

    def getDescription()
        return @description
    end

    def getGei()
        return @gei
    end

    def getTerr()
        return @terr
    end

    def getPrice()
        return @price
    end

    def getCost()
        return @cost
    end
end