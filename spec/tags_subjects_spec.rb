class Person 
    attr_reader :first_name, :last_name 
  
    def initialize(first_name, last_name) 
        @first_name = first_name 
        @last_name = last_name 
    end 
end 

describe Person.new 'John', 'Smith' do
    person = Person.new 'John', 'Smith'

    it 'create a new person with a first name', first: true do
    	puts "First meta tag"
        expect(person).to have_attributes(first_name: 'John')
    end

    it 'create a new person with a last name', last: true do
        puts "Last meta tag"
        expect(person).to have_attributes(last_name: 'Smith')
    end

    # Meta tags with subjects? 
    it { is_expected.to have_attributes(first_name: 'John') }
    it { is_expected.to have_attributes(first_name: 'John') }
end

