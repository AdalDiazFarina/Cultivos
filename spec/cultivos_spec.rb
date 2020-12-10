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
        @avena = Cereal.new("avena", 1.0, 2.0, 3.0, 4.0, 380, 45, 0.94, 0.92, 0.75, 83, 20, "Corto", "Primavera")
        @arroz = Cereal.new("Arroz", 1.5, 2.5, 3.5, 4.5, 315, 42, 0.91, 0.93, 0.85, 96, 17, "Largo", "Verano")
        @cebada = Cereal.new("Arroz", 1.0, 2.0, 3.0, 4.0, 200, 40, 0.93, 0.99, 0.81, 90, 76, "Corto", "Otoño")
        @centeno = Cereal.new("Centeno", 1.5, 2.5, 3.5, 4.5, 320, 35, 0.97, 0.99, 0.87, 78, 30, "Corto", "Otoño")
        @espelta = Cereal.new("Centeno", 1.0, 2.0, 3.0, 4.0, 280, 41, 0.92, 0.94, 0.79, 75, 17, "Largo", "Invierno")
        @maiz = Cereal.new("Centeno", 1.5, 2.5, 3.5, 4.5, 100, 32, 0.95, 0.95, 0.95, 20, 70, "Corto", "Primavera")
        @quinoa = Cereal.new("Centeno", 1.0, 2.0, 3.0, 4.0, 180, 30, 0.90, 0.91, 0.83, 60, 80, "Corto", "Primavera")
        @trigo = Cereal.new("Centeno", 1.5, 2.5, 3.5, 4.5, 250, 39, 0.96, 0.98, 0.80, 52, 15, "Largo", "Invierno")
    end 

    context "Comprobando que es cultivo" do
        it "Es un cultivo" do
            expect(@avena.is_a?Cultivo).to eq(true)
        end
        it "Es un cereal" do
            expect(@avena.is_a?Cereal).to eq(true)
        end
        it "Es un String" do
            expect(@avena.is_a?String).to eq(false)
        end
        it "Es un Numeric" do
            expect(@avena.is_a?Numeric).to eq(false)
        end
        it "Se espera que una isntancia de la clase Cereal sea comparable" do
            expect(@avena.is_a?Comparable).to eq(true)
        end 

    end

    context "Nuevos atributos de cereal" do
        it "Comprobar si se asigna el tipo de grano" do
            expect(@avena.tipo_grano).to eq("Corto")
        end  
        it "Comprobar si se asigna la estación de siembra" do
            expect(@avena.estacion_siembra).to eq("Primavera")
        end
        it "Descripción de un cereal" do
            expect(@avena.to_s).to eq("Cereal(avena, 1.0, 2.0, 3.0, 4.0)(Corto, Primavera)")
        end
        it "Comprobar si se asigna NPMC" do
            expect(@avena.npmc).to eq(380)
        end
        it "Comprobar si se asigna PMG" do
            expect(@avena.pmg).to eq(45)
        end
        it "Comprobar si se asigna PG" do
            expect(@avena.pg).to eq(0.94)
        end
        it "Comprobar si se asigna PU" do
            expect(@avena.pu).to eq(0.92)
        end
        it "Comprobar si se asigna GL" do
            expect(@avena.gl).to eq(0.75)
        end
        it "Comprobar si se asigna PML" do
            expect(@avena.pml).to eq(83)
        end
        it "Comprobar si se asigna DS" do
            expect(@avena.ds).to eq(20)
        end

    end

    context "Cereales comparables" do
        it "Comparar con < o <=" do
            expect(@avena < @arroz).to eq(true)
            expect(@avena <= @arroz).to eq(true)
        end
        it "Comparar con > o >=" do
            expect(@avena > @arroz).to eq(false)
            expect(@avena >= @arroz).to eq(false)
        end
        it "Comparar con ==" do
            expect(@avena == @arroz).to eq(false)
        end
    end

    context "Calculos con la clase cereal" do
        it "Densidad de la siembra de un cereal" do
            expect(@avena.densidadSiembra().truncate(2)).to eq(263.64)
            expect(@arroz.densidadSiembra().truncate(2)).to eq(183.49)
            expect(@cebada.densidadSiembra().truncate(2)).to eq(107.27)
            expect(@centeno.densidadSiembra().truncate(2)).to eq(134.05)
            expect(@espelta.densidadSiembra().truncate(2)).to eq(166.86)
            expect(@maiz.densidadSiembra().truncate(2)).to eq(37.32)
            expect(@quinoa.densidadSiembra().truncate(2)).to eq(79.43)
            expect(@trigo.densidadSiembra().truncate(2)).to eq(128.87)
        end
        it "Número de plantas logradas por metro cuadrado de un cereal" do
            expect(@avena.numeroPlantas().truncate(2)).to eq(415)
            expect(@arroz.numeroPlantas().truncate(2)).to eq(564)
            expect(@cebada.numeroPlantas().truncate(2)).to eq(118)
            expect(@centeno.numeroPlantas().truncate(2)).to eq(260)
            expect(@espelta.numeroPlantas().truncate(2)).to eq(441)
            expect(@maiz.numeroPlantas().truncate(2)).to eq(28)
            expect(@quinoa.numeroPlantas().truncate(2)).to eq(75)
            expect(@trigo.numeroPlantas().truncate(2)).to eq(346)
        end
    end


end