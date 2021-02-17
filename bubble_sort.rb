# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?

def bubble_sort(list)
    len = list.size

    for i in 0..(len)
        for j in i+1..(len - 1)
           if list[i] > list[j]
            list[i], list[j] = list[j], list[i]
           end
        end
    end
   return list 
    
end

p bubble_sort([4,3,78,2,0,2])