class Cereal < Cultivo
    attr_reader :tipo_grano, :estacion_siembra, :npmc
    def initialize(name, gei, terr, price, cost, npmc, tipo_grano, estacion_siembra)
        super(name, gei, terr, price, cost)
        @tipo_grano = tipo_grano
        @estacion_siembra = estacion_siembra
        @npmc = npmc
    end

    def to_s
        super + "(#{@tipo_grano}, #{@estacion_siembra})"
    end

    def <=> (other)
		[@cost, @price] <=> [other.cost, other.price]
	end
end