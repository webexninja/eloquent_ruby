require_relative "document.rb"
describe Document do
    it "should hold on to the contents" do
        text = 'A bunch of words'
        doc = Document.new('test', 'nobody', text, false)
        expect doc.content == text 
    end
    it "should return all the words in the document" do
        text = 'A bunch of words'
        doc = Document.new('test', 'nobody', text, false)
        expect(doc.words).to include('A')
        expect(doc.words).to include('bunch')
        expect(doc.words).to include('of')
        expect(doc.words).to include('words')
    end
    it "should know how many words it contains" do
        text = "A bunch of words"
        doc = Document.new('test', 'nobody', text, false)
        expect doc.word_count == 4
    end
end