class Cereal < Cultivo
    include Comparable
    attr_reader :tipo_grano, :estacion_siembra
    def initialize(name, gei, terr, price, cost, tipo_grano, estacion_siembra)
        super(name, gei, terr, price, cost)
        @tipo_grano = tipo_grano
        @estacion_siembra = estacion_siembra
    end

    def to_s
        super + "(#{@tipo_grano}, #{@estacion_siembra})"
    end

    def <=> other
		@price <=> other.price
	end
end