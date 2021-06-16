# frozen_string_literal: true

# clase que verifica si la celula vive o muere
class Cell
  def initialize(status, neighbours)
    @status = status
    @neighbours = neighbours
  end

  def change_state
    # Condiciones de acuerdo a los requerimientos de la kata
    # celula viva con mas de 3 vecinos o menos de 2 vecinos vivos muere
    @status = ' . ' if (@neighbours > 3 || @neighbours < 2) && @status == ' * '

    # celula muerta con 3 vecinos vivos  revive
    @status = ' * ' if @neighbours == 3 && @status == ' . '
  end

  def new_status
    @status
  end
end
