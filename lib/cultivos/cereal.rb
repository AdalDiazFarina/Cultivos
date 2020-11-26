class Cereal < Cultivo
    attr_reader :tipo_grano, :estacion_siembra
    def initialize(name, description, gei, terr, price, cost, tipo_grano, estacion_siembra)
        super(name, description, gei, terr, price, cost)
        @tipo_grano = tipo_grano
        @estacion_siembra = estacion_siembra
    end
end