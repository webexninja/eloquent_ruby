require_relative "document.rb"
class PrintableDocument<Document
	def print(printer)
		return 'Printer unavailable' unless printer.available?
		printer.render("{title}\n")
		printer.render(" By {author}\n")
		printer.render(content)
		return 'Done'
	end
end
RSpec.configure do |config|
	config.mock_with :rspec do |c|
		c.syntax = [:should, :expect]
	end
end
