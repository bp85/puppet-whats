require 'spec_helper'
describe 'whats' do

  context 'with defaults for all parameters' do
    it { should contain_class('whats') }
  end
end
