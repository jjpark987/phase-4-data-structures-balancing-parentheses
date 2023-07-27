require_relative './stack'

def balancing_parentheses string
    balance = 0
    stack = Stack.new
    string.chars.each do |char|
        if char == '('
            stack.push('(')
            balance += 1
        else
            if stack.peek == '(' 
                stack.pop
                balance -= 1
            else
                stack.push(')')
                balance += 1
            end
        end
    end
    balance
end