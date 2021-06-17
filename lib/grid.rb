# frozen_string_literal: true

# clase que crea la matriz
class Grid
  def initialize(width, long)
    @width = width
    @long = long
    @matriz = []
  end

  def matrix
    @matriz
  end

  # Metodo para crear la matrix
  def create_matrix
    @long.times do |long|
      @matriz.push([])
      @width.times do |_width|
        @matriz[long].push([' . ', ' * '].sample)
      end
    end
    kill_cells_in_borders
  end

  # Metodo encargado de matar la vida que exista en los bordes
  def kill_cells_in_borders
    (0..@long - 1).each do |long|
      (0..@width - 1).each do |width|
        @matriz[long][width] = ' . ' if long.zero? || (long == @long - 1) || width.zero? || (width == @width - 1)
      end
    end
  end
end
