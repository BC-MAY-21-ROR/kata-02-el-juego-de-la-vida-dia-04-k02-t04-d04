# frozen_string_literal: true

# clase que se encarga de imprimir las matrices
class Display
  def initialize(matrix, long, width, generation)
    @matrix = matrix
    @long = long
    @width = width
    @generation = generation
  end

  # Metodo que va a mostrar la matriz en consola con su respectiva generacion
  def prints
    puts "Generation #{@generation}"
    (0..@long - 1).each do |long|
      cadena = ''
      @matrix[long] ||= []
      (0..@width - 1).each do |width|
        cadena += @matrix[long][width].to_s
      end
      puts cadena
    end
  end
end
