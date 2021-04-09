require './player.rb'


# RSpec.describe "Player" do
#     subject { Player.new }

#     it "should respond to name" do
#         expect(subject).to respond_to :name 
#     end

#     describe "name" do
#         it "should not be nil" do
#             expect(subject.name).not_to be_nil
#         end
   

#         it "should be assign on initilisation if provided" do
#             player = Player.new "Arturo"
#             expect(player.name).to eq "Arturo"
#         end
#     end
# end


Player = Struct.new(:name, :age)

RSpec.describe Player.new("Arturo", 31) do
   
    it { is_expected.to have_attributes(:name => "Arturo", :age => 31) }
    it { is_expected.to have_attributes(:name => "Arturo") }
    it { is_expected.to have_attributes(:age => 31) }
    it { is_expected.to have_attributes(:age => (a_value >= 7) ) }
    it { is_expected.to have_attributes(:age => (a_value <= 99) ) }
    it { is_expected.not_to have_attributes(:name => "Bob") }
    it { is_expected.not_to have_attributes(:age => 5) }
end