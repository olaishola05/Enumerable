module MyEnumerable
    
    def  all?
        each { |x| return false unless yield x }
        true
    end
    
    def any?
        each { |x| return true if yield x }
        false
    end


    def filter
        output = []
        each { |x| output.push(x) if yield x }
        output
    end
end