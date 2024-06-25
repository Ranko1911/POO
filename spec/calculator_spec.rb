# spec/calculator_spec.rb
require 'rspec'
require_relative '../lib/calculator'


RSpec.describe Ejercicio do
  describe "Basic Work" do
    it "Iniciar clase vacía" do
      expect(Ejercicio.new).to_not be_nil
    end
    it "Test Identificador attribute" do
      e = Ejercicio.new(1)
      expect(e.Identificador).to eq(1)
    end
    it "Test Setter Identificador attribute" do
      e = Ejercicio.new
      e.set_id(1)
      expect(e.Identificador).to eq(1)
    end
    it "Test titulo" do
      e = Ejercicio.new(1,"primer")
      expect(e.titulo).to eq("primer")
    end
    it "Test Setter titulo" do
      e = Ejercicio.new
      e.set_titulo("primer")
      expect(e.titulo).to eq("primer")
    end
    it "Test de materiales" do
      e1 = Ejercicio.new(1,"primer", [])
      e2 = Ejercicio.new(2,"segundo", ["libro"])
      e3 = Ejercicio.new(3, "tercero", ["tijeras", "pegamento"])

      expect(e1.materiales).to eq([])
      expect(e2.materiales).to eq(["libro"])
      expect(e3.materiales).to eq(["tijeras", "pegamento"])
    end
    it "Test Setter Materiales" do
      e1 = Ejercicio.new(1,"primer", [])
      e1.set_materiales(["libro"])
      expect(e1.materiales).to eq(["libro"])
    end

    it "Test To_s" do
      e = Ejercicio.new(1,"primer", ["libro"])
      expect(e.to_s).to eq("1 primer [\"libro\"]")
    end
  end

  describe "Comparable" do
    it "Test Comparable" do
      e1 = Ejercicio.new(1,"primer", [])
      e2 = Ejercicio.new(2,"segundo", ["libro"])
      e3 = Ejercicio.new(3, "tercero", ["tijeras", "pegamento"])

      expect(e1 < e2).to eq(true)
      expect(e2 < e3).to eq(true)
      expect(e1 < e3).to eq(true)
    end
  end

  describe "Enumerable" do
    it "Test Enumerable" do
      e = Ejercicio.new(1,"primer", ["libro", "tijeras", "pegamento"])
      expect(e.map{|x| x.upcase}).to eq(["LIBRO", "TIJERAS", "PEGAMENTO"])
      expect(e.select{|x| x.length > 5}).to eq(["tijeras", "pegamento"])
      expect(e.reject{|x| x.length > 5}).to eq(["libro"])
      expect(e.first).to eq("libro")
      expect(e.max).to eq("tijeras")
      expect(e.min).to eq("libro")
    end
  end

end
