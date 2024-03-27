require 'benchmark'

require './spec_helper.rb'
require './challenge.rb'

RSpec.describe Challenge do
  let(:challenge) { Challenge.new }

  it 'is correct' do
    expect(challenge.perform_optimised).to eq(challenge.perform_naive)
  end

  it 'goes fast' do
    Benchmark.bmbm do |bench|
      bench.report("naive     🐌") { challenge.perform_naive }
      bench.report("optimised 🚀") { challenge.perform_optimised }
    end
  end
end