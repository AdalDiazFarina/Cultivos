# = cultivo.rb
#
# Autor::   Adal Díaz Fariña
# Web::     https://github.com/ULL-ESIT-LPP-2021/cultivos-AdalDiazFarina.git
#
# == Descripción
# Clase que representa un cultivo. Es la clase de la que heredan los demás tipos de cultivos
# 
# == Métodos
# * getName
# * getDescription
# * getGei
# * getTerr
# * getPrice
# * getCost
#
# == Parámetros:
# * name: Nombre de la hortaliza
# * gei: Emisión de gases de efecto invernadero
# * terr: Terreno usado
# * price: Precio de la hortaliza
# * cost: Coste de cultivarla

class Cultivo
    include Comparable
    attr_reader :name, :gei, :terr, :price, :cost

    def initialize(name, gei, terr, price, cost)
        @name = name
        @gei = gei
        @terr = terr
        @price =  price
        @cost = cost
    end

    # Representacion en una cadena del objeto
    # Devuelve::
    # Una cadena con los atributos del cultivo
    def to_s
        "#{self.class}(#{@name}, #{@gei}, #{@terr}, #{@price}, #{@cost})"
    end

    # Getter del nombre del cultivo
    # Devuelve:: 
    # El nombre del cultivo 
    def getName()
        return @name
    end

    # Getter de la emisiones de gases de efecto invernadero que produce el cultivo
    # Devuelve:: 
    # Las emisiones de gases de efecto invernadero
    def getGei()
        return @gei
    end

    # Getter del terreno usado por el cultivo
    # Devuelve:: 
    # Terreno usado por el cultivo en metros cuadrados
    def getTerr()
        return @terr
    end

    # Getter del precio del cultivo
    # Devuelve:: 
    # Precio del cultivo en euros
    def getPrice()
        return @price
    end

    # Getter del coste del cultivo
    # Devuelve:: 
    # El lo ue cuesta producir el cultivo en euros
    def getCost()
        return @cost
    end
end