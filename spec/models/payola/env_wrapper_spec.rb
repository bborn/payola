# frozen_string_literal: true

require 'spec_helper'

module Payola
  describe EnvWrapper do
    describe 'delegations' do
      it 'delegates is_a?' do
        ENV['whatever'] = 'some value'
        wrap = EnvWrapper.new('whatever')
        expect(wrap.is_a?(String)).to be_truthy
      end

      it 'delegates start_with?' do
        ENV['whatever'] = 'some value'
        wrap = EnvWrapper.new('whatever')
        expect(wrap.start_with?('some')).to be_truthy
      end
    end
  end
end
