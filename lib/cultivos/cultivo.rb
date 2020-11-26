class Cultivo
    attr_reader :name, :description, :gei
    
    def initialize(name, description, gei)
        @name, @description, @gei = name, description, gei
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
end