require 'cell'
require 'grid'

RSpec.describe Cell do
  let(:grid) { Grid.new(6,5) }
  context 'test to kill one cell for overcrowding' do
    it 'kill cell' do
      grid.create_matrix
      matriz = grid.matrix
      matriz[1][1] = ' * '
      cell = Cell.new(matriz[1][1], 4)
      cell.change_state
      expect(cell.new_status).to eq ' . '
    end
  end

  context 'test to kill one cell for underpoblation' do
    it 'kill cell' do
      grid.create_matrix
      matriz = grid.matrix
      matriz[1][1] = ' * '
      cell = Cell.new(matriz[1][1], 1)
      cell.change_state
      expect(cell.new_status).to eq ' . '
    end
  end

  context 'test to revive dead cell' do
    it 'revive cell' do
      grid.create_matrix
      matriz = grid.matrix
      matriz[1][1] = ' . '
      cell = Cell.new(matriz[1][1], 3)
      cell.change_state
      expect(cell.new_status).to eq ' * '
    end
  end

  context "return status" do
    it "the return is not empty" do
      grid.create_matrix
      matriz = grid.matrix
      matriz[1][1] = ' . '
      cell = Cell.new(matriz[1][1], 3)
      cell.change_state
      expect(cell.new_status).not_to be 0
    end
  end
end