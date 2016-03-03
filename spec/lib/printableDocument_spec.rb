require_relative "PrintableDocument.rb"
require_relative 'spec_helper.rb'
describe PrintableDocument do

	before :each do
		@text = "A bunch of words"
		@doc = PrintableDocument.new('test', 'nobody', @text, false)
	end
	it 'should know how to print itself' do
		mock_printer = mock('Printer')
		mock_printer.should_receive(:available?).and_return(true)
		mock_printer.should_receive(:render).exactly(3).times
		@doc.print( mock_printer ).should == 'Done'
	end
end
