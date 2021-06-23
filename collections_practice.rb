require 'pry'

random_numbers = [15,8,3,4,6]
random_words = ['sean','gimelle','arthur','miyamoto','jumanji']

def sort_array_asc array
    array.sort
end

def sort_array_desc array
    array.sort do |a,b|
        if a==b
            0
        elsif a>b
            -1
        elsif a<b
            1
        end
    end
end

def sort_array_char_count array 
    array.sort do |a,b|
        if a.length == b.length 
            0
        elsif a.length>b.length
            1
        elsif a.length<b.length
            -1
        end
    end
end

def swap_elements array
    array[1], array[2] = array[2], array[1]

end

def reverse_array array
    array.reverse
end


# NOT DONE
def kesha_maker array
    new_array = []
    array.each do |string|
        array << string.split(" ")
    end 

    new_array
end 

def find_a array
    new_array = []
    array.each do |word|
        if word.start_with?('a') == true 
            new_array << word
        end
    end

    new_array
end

def sum_array array
    new_array = []
    sum=0
    array.each do |number|
        sum+=number
    end

    sum

end 


def add_s array 
    
    array.collect do |word|
        word << "s"
    end

    array.select do |word|

        if word == array[1]
            word.delete_suffix!(word[-1])
        end 
    end
end 

def add_ss array
    array.each_with_index.collect do |element, index|
        if index == 1
            element
        else
            element << "s"
        end
    end 
end

