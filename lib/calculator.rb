# lib/calculator.rb
require 'pry'

class Ejercicio
  include Comparable 
  include Enumerable
  attr_reader :Identificador, :titulo, :materiales
  def initialize(id = nil, titulo = nil, materiales = [])
    @Identificador = id
    @titulo = titulo
    @materiales = materiales
  end

  def set_id(id)
    @Identificador = id
  end

  def set_titulo(titulo)
    @titulo = titulo
  end

  def set_materiales(materiales)
    @materiales = materiales
  end

  def to_s
    "#{@Identificador} #{@titulo} #{@materiales}"
  end

  def <=>(other)
    raise typeError "Tipo de dato incorrecto" unless other.is_a? Ejercicio
    @Identificador <=> other.Identificador
  end

  def each 
    @materiales.each do |material|
      yield material
    end
  end
end

e = Ejercicio.new(1,"primer", ["libro"])

# e.to_s

binding.pry  # Iniciar la sesión de pry
