# frozen_string_literal: true

require_relative 'cell'
require_relative 'grid'
require_relative 'display'

# clase main
class Main
  def initialize(width, long)
    @width_grid = width
    @long_grid = long
    @grid = Grid.new(@width_grid, @long_grid)
    @grid.create_matrix

    print_display
  end

  # Metodo encargado de verificar los vecinos para ver si la celula cambia o no de estatus
  def check_neighbours
    (1..@long_grid - 2).each do |long|
      (1..@width_grid - 2).each do |width|
        status = @matrix[long][width]
        # Invocar clase Cell para ver si cumple alguna condicion de las establecidas para cambiar de estatus
        cell = Cell.new(status, arround_cell(long, width))
        cell.change_state
        @matrix[long][width] = cell.new_status
      end
    end
  end

  # Metodo encargado de contar cuantas celulas vivas tiene de vecino cada celula ya sea muerta o viva
  def arround_cell(long, width)
    neighbours_live = 0
    neighbours_live += 1 if @matrix[long - 1][width - 1] == ' * '
    neighbours_live += 1 if @matrix[long - 1][width] == ' * '
    neighbours_live += 1 if @matrix[long - 1][width + 1] == ' * '
    neighbours_live += 1 if @matrix[long][width - 1] == ' * '
    neighbours_live += 1 if @matrix[long][width + 1] == ' * '
    neighbours_live += 1 if @matrix[long + 1][width - 1] == ' * '
    neighbours_live += 1 if @matrix[long + 1][width] == ' * '
    neighbours_live += 1 if @matrix[long + 1][width + 1] == ' * '
    neighbours_live
  end

  def print_display
    display = Display.new(@grid.matrix, @long_grid, @width_grid, 1)
    display.prints

    @matrix = @grid.matrix

    check_neighbours

    display2 = Display.new(@matrix, @long_grid, @width_grid, 2)
    display2.prints
  end
end

puts('Ancho de la matriz: ')
width = gets.chomp.to_i
puts('Largo de la matriz: ')
long = gets.chomp.to_i
main = Main.new(width, long)
