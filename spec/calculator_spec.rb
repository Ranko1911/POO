# spec/calculator_spec.rb
require 'rspec'
require_relative '../lib/calculator'

# RSpec.describe Calculator do
#   describe '#add' do
#     it 'returns the sum of two numbers' do
#       calculator = Calculator.new
#       result = calculator.add(2, 3)
#       expect(result).to eq(5)
#     end
#   end
# end


# frozen_string_literal: true
RSpec.describe Ejercicio do
  it "Iniciar clase vacía" do
    expect(Ejercicio.new).to_not eq(nil)  
  end
end
