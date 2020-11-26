class Cultivo
    attr_reader :name, :description
    
    def initialize(name, description)
        @name, @description = name, description
    end

    def getName()
        return @name
    end

    def getDescription()
        return @description
    end
end