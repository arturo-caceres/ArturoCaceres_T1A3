require "../src/player.rb"

# Testing features

Player = Struct.new(:name, :age)

RSpec.describe Player.new("Arturo", 31) do
  it { is_expected.to have_attributes(:name => "Arturo", :age => 31) }
  it { is_expected.to have_attributes(:name => "Arturo") }
  it { is_expected.to have_attributes(:age => 31) }
  it { is_expected.to have_attributes(:age => (a_value >= 7)) }
  it { is_expected.to have_attributes(:age => (a_value <= 99)) }
  it { is_expected.not_to have_attributes(:name => "Bob") }
  it { is_expected.not_to have_attributes(:age => 5) }
end
