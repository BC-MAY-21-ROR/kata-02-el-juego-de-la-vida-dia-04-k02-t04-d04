# frozen_string_literal: true

# clase que se encarga de imprimir las matrices
class Display
  def initialize(matrix, long, width, generation)
    @matrix = matrix
    @long = long
    @width = width
    @generation = generation
  end

  def prints
    puts "Generation #{@generation}"
    (0..@long - 1).each do |i|
      cadena = ''
      (0..@width - 1).each do |x|
        cadena += @matrix[i][x]
      end
      puts cadena
    end
  end
end

