def bubble_sort(array)

k = array.length-1

for i in 0..k 
    for i in 0..k 
        if array[i].to_i>array[i+1].to_i && i!=k
            array[i],array[i+1]=array[i+1],array[i]            
         end
    end
end
print array        

end
# def bubble_sort_by(array)

#     k = array.length-1   
#     for i in 0..k 
#         for i in 0..k 
#             if array[i].length>array[i+1].length && i!=k
#                 array[i],array[i+1]=array[i+1],array[i]   
#                 print array        
         
#              end
#         end
#     end
    
#     end

y =[4,-3,373,78,2,0,2]
# x= ["hi","goodbye","hello"]

 bubble_sort(y)
#  bubble_sort_by(x) do |left,right|