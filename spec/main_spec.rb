# frozen_string_literal: true

require 'main'
require 'grid'

RSpec.describe Main do
  let(:grid) { Grid.new(6, 5) }
  let(:main) { Main.new(6, 5) }

  # Validacion para verificar que el conteo de celulas vivas no regrese en numeros negativos
  context 'count arround_cells' do
    it 'count neighbours' do
      grid.create_matrix
      matriz = grid.matrix
      matriz[1][1] = ' * '
      expect(main.arround_cell(1, 1)).not_to be < 0
    end
  end
end
