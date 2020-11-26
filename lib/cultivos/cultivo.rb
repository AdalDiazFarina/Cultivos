class Cultivo
    attr_reader :name, :description, :gei, :terr, :price
    
    def initialize(name, description, gei, terr, price)
        @name = name
        @description = description
        @gei = gei
        @terr = terr
        @price =  price
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
end