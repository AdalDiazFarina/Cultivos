RSpec.describe Cultivo do
    before :each do
        @cultivo_1 = Cultivo.new("Platano", 300, 0.3, 1.45, 0.40)
    end 
    
    context "Almacenamiento del nombre" do
        it "Se almacena correctamente el nombre" do
            expect(@cultivo_1.name).to eq("Platano")
        end
    end

    context "Descripción de un cultivo" do
        it "Probando mostrar la descripcion de un cultivo" do 
            expect(@cultivo_1.to_s).to eq("Cultivo(Platano, 300, 0.3, 1.45, 0.4)")
        end
    end

    context "Getters de la clase cultivo" do 
        it "Get el nombre del cultivo" do
            expect(@cultivo_1.getName()).to eq("Platano")
        end
        it "Get emisiones de gases de efecto invernadero" do
            expect(@cultivo_1.getGei()).to eq(300)
        end
        it "Get tereno utilizado" do
            expect(@cultivo_1.getTerr()).to eq(0.3)
        end
        it "Get price" do 
            expect(@cultivo_1.getPrice()).to eq(1.45)
        end
        it "Get coste de producción" do
            expect(@cultivo_1.getCost()).to eq(0.40)
        end
    end
end

RSpec.describe Hortaliza do
    before :each do
        @hortaliza_1 = Hortaliza.new("zanahoria", 400, 0.2, 1.55, 0.30)
    end 

    context "Almacenamiento del nombre" do
        it "Se almacena correctamente el nombre" do
            expect(@hortaliza_1.name).to eq("zanahoria")
        end
    end

    context "Descripción de un fruta" do
        it "Probando mostrar la descripcion de una fruta" do 
            expect(@hortaliza_1.to_s).to eq("Hortaliza(zanahoria, 400, 0.2, 1.55, 0.3)")
        end
    end

    context "Utilizando los getters de la clase padre para el hijo" do 
        it "Get el nombre de la hortaliza" do
            expect(@hortaliza_1.getName()).to eq("zanahoria")
        end
        it "Get emisiones de gases de efecto invernadero" do
            expect(@hortaliza_1.getGei()).to eq(400)
        end
        it "Get tereno utilizado" do
            expect(@hortaliza_1.getTerr()).to eq(0.2)
        end
        it "Get price" do 
            expect(@hortaliza_1.getPrice()).to eq(1.55)
        end
        it "Get coste de producción" do
            expect(@hortaliza_1.getCost()).to eq(0.30)
        end
    end
end

RSpec.describe Fruta do
    before :each do
        @fruta_1 = Fruta.new("Platano", 250, 0.25, 1.40, 0.30)
    end 
    
    context "Almacenamiento del nombre y la descripción de un cultivo" do
        it "Se almacena correctamente el nombre" do
            expect(@fruta_1.name).to eq("Platano")
        end
    end

    context "Descripción de un fruta" do
        it "Probando mostrar la descripcion de una fruta" do 
            expect(@fruta_1.to_s).to eq("Fruta(Platano, 250, 0.25, 1.4, 0.3)")
        end
    end

    context "Utilizando los getters de la clase padre para el hijo" do 
        it "Get el nombre de la hortaliza" do
            expect(@fruta_1.getName()).to eq("Platano")
        end
        it "Get emisiones de gases de efecto invernadero" do
            expect(@fruta_1.getGei()).to eq(250)
        end
        it "Get tereno utilizado" do
            expect(@fruta_1.getTerr()).to eq(0.25)
        end
        it "Get price" do 
            expect(@fruta_1.getPrice()).to eq(1.40)
        end
        it "Get coste de producción" do
            expect(@fruta_1.getCost()).to eq(0.30)
        end
    end
end


RSpec.describe Cereal do
    before :each do
        @cereal_1 = Cereal.new("avena", 1.0, 2.0, 3.0, 4.0, "Corto", "Primavera")
        @cereal_2 = Cereal.new("avena", 1.0, 2.0, 3.0, 4.0, "Corto", "Primavera")
        
    end 

    context "Comprobando que es cultivo" do
        it "Es un cultivo" do
            expect(@cereal_1.is_a?Cultivo).to eq(true)
        end
        it "Es un cereal" do
            expect(@cereal_1.is_a?Cereal).to eq(true)
        end
        it "Es un String" do
            expect(@cereal_1.is_a?String).to eq(false)
        end
        it "Es un Numeric" do
            expect(@cereal_1.is_a?Numeric).to eq(false)
        end
        it "Se espera que una isntancia de la clase Cereal sea comparable" do
            expect(@cereal_1.is_a?Comparable).to eq(true)
        end 

    end

    context "Comprobando los nuevos atributos de Cereal que no hereda de la clase padre" do
        it "Comprobar si se asigna el tipo de grano" do
            expect(@cereal_1.tipo_grano).to eq("Corto")
        end  
        it "Comprobar si se asigna la estación de siembra" do
            expect(@cereal_1.estacion_siembra).to eq("Primavera")
        end
        it "Descripción de un cereal" do
            expect(@cereal_1.to_s).to eq("Cereal(avena , 1.0, 2.0, 3.0, 4.0, Corto, Primavera)")
        end
    end

    # context "Cereales comparables sengún el coste de producción y el precio de venta" do
    #     it "Comparables según el coste de producción" do
    #         result =
    #     end
    # end
end