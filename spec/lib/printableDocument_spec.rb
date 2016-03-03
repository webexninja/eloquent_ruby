require_relative "PrintableDocument.rb"
describe PrintableDocument do
	let(:stub_printer) { double("printer") }

	before :each do
		@text = "A bunch of words"
		@doc = PrintableDocument.new('test', 'nobody', @text, false)
	end
	it 'should know how to print itself' do
		stub_printer.stub(:available?){true}
		stub_printer.stub(:render){nil}
		expect @doc.print(stub_printer) == 'Done'
	end
end
