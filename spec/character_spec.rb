require './lib/character'

RSpec.describe Character do

  context 'iteration 1' do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    it 'exists' do
      expect(kitt).to be_a(Character)
    end

    it 'has attributes' do
      expect(kitt.name).to eq("KITT")
      expect(kitt.actor).to eq("William Daniels")
      expect(kitt.salary).to eq(1000000)
    end
  end
end
