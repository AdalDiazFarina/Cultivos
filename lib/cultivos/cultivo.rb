class Cultivo
    attr_reader :name, :description, :gei, :terr
    
    def initialize(name, description, gei, terr)
        @name = name
        @description = description
        @gei = gei
        @terr = terr
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
end