def bubble_sort(array)
   
k = array.length-1

    if array.any? String
        puts "not a valid array"
    else
        for i in 0..k     
            for i in 0..k         
                if array[i].to_f>array[i+1].to_f && i!=k
                    array[i],array[i+1]=array[i+1],array[i]            
                end        
            end
        end
        print array               
    end

end

def bubble_sort_by(array)

    if array.all? String       
        k = array.length-1  
        for i in 0..k 
            for i in 0..k 
                if i!=k
                    if yield(array[i],array[i+1])>0 
                        array[i],array[i+1]=array[i+1],array[i]                             
                    end
                end
            end
        end
        print array  
    else
    puts "not a valid array"
    end         
end

bubble_sort([4,-3,37.3,-78,2.4,0,4])
bubble_sort_by(["hi","hello",4]) do |left,right|
      left.length - right.length
    end
