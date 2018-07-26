# array = [] 
# reverese=true
# def order (array,reverse)
#   if(reverse == true)
#     return array.reverse
#   else
#     return array
#   end
# end

# puts array

a = []

def order(a,reverse)
   if reverse==true
         arr = a.sort.reverse
     puts arr
     else    
     puts a.sort
     end
 end
order([3, 7, 1], true)

