class MySet

#.new(enumerable): Initializes a new MySet and adds any values from the enumerable.
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

#include?(value): Checks if the value is already included in the MySet. Must have a O(1) runtime.
    def include?(value)
        @hash.has_key?(value)
    end

#add(value): Adds the value to the MySet if it isn't already present. Must have a O(1) runtime.
    def add(value)
        @hash[value] = true
        self
    end

#delete(value): Removes the value from the MySet. Must have a O(1) runtime.
    def delete(value)
        @hash.delete(value)
        self
    end
#size: Returns the number of elements in the MySet.
    def size
        @hash.size
    end
end
