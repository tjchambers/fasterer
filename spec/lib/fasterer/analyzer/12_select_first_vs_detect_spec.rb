require 'spec_helper'

describe Fasterer::Analyzer do

  let(:test_file_path) { RSpec.root.join('support', '12_select_first_vs_detect', 'main.rb') }

  it 'should detect sort once' do
    analyzer = Fasterer::Analyzer.new(test_file_path)
    analyzer.scan
    expect(analyzer.error_occurrence[:select_first_vs_detect]).to eq(2)
  end
end