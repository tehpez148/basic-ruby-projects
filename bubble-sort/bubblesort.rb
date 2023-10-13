## bubble sorter project
##method that takes an array and "bubble sorts" through it, pushing smaller numbers down the array.
##start from index 0 and compare to the next index, swapping if first index is higher until all sorted


def bubble_sort(array)
    p array
    bubble = array
    sorted_yet = true
    while sorted_yet do
        c = 0
        sorted_yet = false

        while c < (bubble.length - 1)
            if bubble[c] > bubble[c + 1]
                bubble[c], bubble[c + 1 ] = bubble[c + 1], bubble [c]
                sorted_yet = true
            end
            c+=1         
        end
    end
    bubble
end


numbers = [4,3,78,2,0,2]
p bubble_sort(numbers)

