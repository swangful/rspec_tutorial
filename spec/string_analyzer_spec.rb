class StringAnalyzer 
   def has_vowels?(str) 
      !!(str =~ /[aeiou]+/i) 
   end 
end

describe StringAnalyzer do 
   context "With valid input" do     
      it "should detect when a string contains vowels" do 
         test = StringAnalyzer.new 
         test_string = 'uuu' 
         expect(test.has_vowels? test_string).to be true 
      end 
		
      it "should detect when a string doesn't contain vowels" do 
         test = StringAnalyzer.new 
         test_string = 'bcdfg' 
         expect(test.has_vowels? test_string).to be false
      end    
   end 
end