def arraySearch(arr, number)
	counter = 0

	while counter < arr.length
		if number != arr[counter]
			counter += 1
		else
			return counter
			counter += 1
		end
	end
end

# arr = [42, 89, 23, 1]
# p arraySearch(arr, 40)
# puts arraySearch(arr, 40)


 def fibonacci(num)
 	counter = 0
 	arr = []
 	while counter < num
 		if counter == 0
 			arr << 0
 			counter += 1
		elsif counter == 1
 			arr << 1
 			counter += 1
 		else
 			arr << arr[-1] + arr[-2]
 			counter += 1
 		end
 	end
 	return arr
 end

# p fibonacci(6)
# p fibonacci(100)[-1] == 218922995834555169026


#bubbleSort pseudocode
#compare first two numbers of array
#if first number is greater than second, swap them
#otherwise do nothing
#increment position in array by 1
#continue comparisons until no more numbers in array to compare
#if numbers were swapped, loop, otherwise break
#output sorted array

def bubbleSort(arr)
	counter = 0
	swapped = true
	lengthCounter = 0
	while swapped == true
		while arr.length-1 > counter
			if arr[counter] > arr[counter+1]
				arr[counter], arr[counter+1] = arr[counter+1], arr[counter]
				lengthCounter = 0
				counter += 1
				if counter == arr.length-1
					counter = 0
				end
			else 
				lengthCounter += 1
				counter += 1
				if lengthCounter > arr.length-1
					swapped = false
				end				
				if counter == arr.length-1
				counter = 0
				break
				end
			end
		end
	end
	arr
end

arr1 = [21, 11, 31, 160, 90, 15]
arr2 = [11, 25, 50, 35, 10, 11, 9]
p bubbleSort(arr1)
p bubbleSort(arr2)