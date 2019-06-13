class Stack
    def initialize
        @elements = []
    end
    def push(element)
        @elements << element    
    end
    def size
      @elements.size  
    end
    def pop
        if @elements.empty?
            begin
                raise Exception.new
                rescue Exception => error
                return "Cannot pop empty stack."
            end
        end
       @elements.pop   
    end
    def top
        @elements.last
    end
    def empty?
    @elements.empty?    
    end
end