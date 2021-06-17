# frozen_string_literal: true

require 'display'
require 'grid'

RSpec.describe Display do
  let(:grid) { Grid.new(6, 5) }

  context 'show matrix' do
    it 'with prints method' do
      grid.create_matrix
      matrix = grid.matrix
      display = Display.new(matrix, 6, 5, 1)
      expect(display.prints).not_to eq ''
    end
  end
end
