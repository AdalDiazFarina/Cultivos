class Cereal < Cultivo
    attr_reader :tipo_grano
    def initialize(name, description, gei, terr, price, cost, tipo_grano)
        super(name, description, gei, terr, price, cost)
        @tipo_grano = tipo_grano
    end
end