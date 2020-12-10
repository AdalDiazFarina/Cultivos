# = fruta.rb
#
# Autor::   Adal Díaz Fariña
# Web::     https://github.com/ULL-ESIT-LPP-2021/cultivos-AdalDiazFarina.git
#
# == Descripción
# Clase que representa un tipo de cultivo que es el cereal. Herada de la clase cultivo
class Cereal < Cultivo
    attr_reader :tipo_grano, :estacion_siembra, :npmc, :pmg, :pg, :pu, :gl, :pml, :ds

    # Constructor de la clase Hortaliza
    # Parámetros:
    # * name: Nombre de la hortaliza
    # * gei: Emisión de gases de efecto invernadero
    # * terr: Terreno usado
    # * price: Precio de la hortaliza
    # * cost: Coste de cultivarla
    # * tipo_grano:
    # * estacion_siembra:
    # * npmc: Número de plantas a lograr por metro cuadrado
    # * pmg: Peso de mil granos
    # * pg: Poder germinativo. Porcentaje de semillas que germina y desarrolla una plántula normal cuando se coloca en las condiciones ambientales óptimas para su crecimiento.
    # * pu: Pureza de la semilla. Establece la proporción de semilla respecto demateriales inertes (tierra, insectos, etc.)
    # * gl: El coeficiente de logro
    # * pml: Valor promedio de las plantas emergidas por metro lineal
    # * ds: Distancia entre surcos

    def initialize(name, gei, terr, price, cost, npmc, pmg, pg, pu, gl, pml, ds, tipo_grano, estacion_siembra)
        super(name, gei, terr, price, cost)
        @tipo_grano = tipo_grano
        @estacion_siembra = estacion_siembra
        @npmc = npmc
        @pmg = pmg
        @pg = pg
        @pu = pu
        @gl = gl
        @pml = pml
        @ds = ds
    end

    # Representacion en una cadena del objeto
    # Devuelve::
    # Una cadena con los atributos de la fruta
    def to_s
        super + "(#{@npmc}, #{@pmg}, #{@pg}, #{@pu}, #{@gl}, #{@pml}, #{@ds}, #{@tipo_grano}, #{@estacion_siembra})"
    end

    # Método que te permite compara diferentes cereales por coste de producción y precio
    # Devuelve::
    # True o false
    def <=> (other)
		[@cost, @price] <=> [other.cost, other.price]
    end
    
    # Calcula la densidad de siembra de un cereal
    # Devuelve::
    # El número de kilos por hectárea que es la densidad
    def densidadSiembra()
        return ((@npmc * @pmg)/100) / (@pg * @pu * @gl)
    end

    # Calcula el número de plantas logradas por metro cuadrado de un cereal
    # Devuelve::
    # El número de plantas logradas
    def numeroPlantas()
        return (@pml * 100)/@ds
    end
end