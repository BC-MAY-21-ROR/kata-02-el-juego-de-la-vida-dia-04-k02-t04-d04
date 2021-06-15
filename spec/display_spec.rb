require 'display'
require 'grid'

RSpec.describe Display do
  let(:grid) { Grid.new(6,5) }

  context 'matrix sample test' do
    it 'matrix sample' do
      grid.create_matrix
      matrix = grid.matrix
      display = Display.new(matrix, 6, 5, 1)
      expect(display.prints).to eq ''
    end
  end
end