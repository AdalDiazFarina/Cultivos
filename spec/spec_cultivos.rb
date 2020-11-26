Rsepc.describe Cultivo do
    before :each do
        @cultivo_1 = Cultivo.new("Platano", "Fruta de color amarilla y forma alargada")
    end 
    
    context "Almacenamiento del nombre y la descripción de un cultivo" do
        it "Se almacena correctamente el nombre" do
            expect(@cultivo_1.name).to eq("Platano")
        end
        it "Se almacena correctamente la descripcion" do
            expect(@cultivo_1.description).to eq("Platano")
        end
    end

end