RSpec.describe Cultivo do
    before :each do
        @cultivo_1 = Cultivo.new("Platano", "Fruta de color amarilla y forma alargada", 300, 0.3, 1.45)
    end 
    
    context "Almacenamiento del nombre y la descripción de un cultivo" do
        it "Se almacena correctamente el nombre" do
            expect(@cultivo_1.name).to eq("Platano")
        end
        it "Se almacena correctamente la descripcion" do
            expect(@cultivo_1.description).to eq("Fruta de color amarilla y forma alargada")
        end
    end

    context "Getters de la clase cultivo" do 
        it "Get el nombre del cultivo" do
            expect(@cultivo_1.getName()).to eq("Platano")
        end
        it "Get el description del cultivo" do
            expect(@cultivo_1.getDescription()).to eq("Fruta de color amarilla y forma alargada")
        end
        it "Get emisiones de gases de efecto invernadero" do
            expect(@cultivo_1.getGei()).to eq(300)
        end
        it "Get tereno utilizado" do
            expect(@cultivo_1.getTerr()).to eq(0.3)
        end
        it "Get price" do 
            expect(@cultivo_1.getPrice().to eq())
        end
    end

end