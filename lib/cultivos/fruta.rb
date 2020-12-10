# = fruta.rb
#
# Autor::   Adal Díaz Fariña
# Web::     https://github.com/ULL-ESIT-LPP-2021/cultivos-AdalDiazFarina.git
#
# == Descripción
# Clase que representa un tipo de cultivo que es la fruta. Herada de la clase cultivo

class Fruta < Cultivo
    # Constructor de la clase Fruta
    # Parámetros:
    # * name: Nombre de la fruta
    # * gei: Emisión de gases de efecto invernadero
    # * terr: Terreno usado
    # * price: Precio de la fruta
    # * cost: Coste de cultivarla
    # Utiliza el constructor de su clase padre cultivo.
    def initialize(name, gei, terr, price, cost)
        super(name, gei, terr, price, cost)
    end
end