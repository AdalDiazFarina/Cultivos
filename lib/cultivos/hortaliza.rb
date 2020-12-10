# = hortaliza.rb
#
# Autor::   Adal Díaz Fariña
# Web::     https://github.com/ULL-ESIT-LPP-2021/cultivos-AdalDiazFarina.git
#
# == Descripción
# Clase que representa un tipo de cultivo que es la hortaliza. Herada de la clase cultivo
class Hortaliza < Cultivo
    # Constructor de la clase Hortaliza
    # Parámetros:
    # * name: Nombre de la hortaliza
    # * gei: Emisión de gases de efecto invernadero
    # * terr: Terreno usado
    # * price: Precio de la hortaliza
    # * cost: Coste de cultivarla
    # Utiliza el constructor de su clase padre cultivo.
    def initialize(name, gei, terr, price, cost)
        super(name, gei, terr, price, cost)
    end
end