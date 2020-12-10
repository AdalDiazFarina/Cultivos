class Cereal < Cultivo
    attr_reader :tipo_grano, :estacion_siembra, :npmc, :pmg, :pg, :pu, :gl
    def initialize(name, gei, terr, price, cost, npmc, pmg, pg, pu, gl, tipo_grano, estacion_siembra)
        super(name, gei, terr, price, cost)
        @tipo_grano = tipo_grano
        @estacion_siembra = estacion_siembra
        @npmc = npmc
        @pmg = pmg
        @pg = pg
        @pu = pu
        @gl = gl
    end

    def to_s
        super + "(#{@tipo_grano}, #{@estacion_siembra})"
    end

    def <=> (other)
		[@cost, @price] <=> [other.cost, other.price]
    end
    
    def densidadSiembra()
        return ((@npmc * @pmg)/100) / (@pg * @pu * @gl)
    end
end