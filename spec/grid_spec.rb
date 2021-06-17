# frozen_string_literal: true

require 'grid'

RSpec.describe Grid do
  let(:matriz) { Grid.new(6, 5) }
  context 'test to create the matrix' do
    it 'creation' do
      expect(matriz.create_matrix).not_to eq []
    end
  end

  context 'validate no life on borders' do
    it 'dead cell' do
      matriz.create_matrix
      matriz.kill_cells_in_borders
      matrix = matriz.matrix
      5.times do |i|
        6.times do |x|
          next unless i == 0 || i == 5 || x == 0 || x == 6

          expect(matrix[i][x]).to eq ' . '
        end
      end
    end
  end

  context 'return matrix' do
    it 'the return is not empty' do
      expect(matriz.matrix).not_to be []
    end
  end
end
