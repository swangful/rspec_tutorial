class HelloWorld
    def say_hello
        "Hello World!"
    end
end

describe HelloWorld do
    context "When testing the HelloWorld class" do
        it "should say 'Hello World' when say_hello is called" do
            hello = HelloWorld.new
            message = hello.say_hello
            expect(message).to eql "Hello World!"
        end
    end
end