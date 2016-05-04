def sortArray(*t)
	arr,s,e = t
	
	if s < e
		pivot = s
		i = s
		j = e
		while i < j
			while arr[i] < arr[pivot] && i < j
				i = i + 1
			end
			while arr[j] > arr[pivot]
				j = j - 1
			end
			if i < j
				temp = arr[i]
				arr[i] = arr[j]
				arr[j] = temp
			end
		end	
		temp = arr[j]
		arr[j] = arr[pivot]
		arr[pivot] = temp
		sortArray(arr,s,j-1)
		sortArray(arr,j+1,e)	
	end
	
end	
	
test = gets.chomp.to_i()
while test > 0
	arr1 = gets.chomp.split(' ')
	N = arr1[0].to_i
	X = arr1[1].to_i
	arr2 = gets.chomp.split(' ')
	arr = Array.new(arr2.count)	
	c = arr2.count
	for i in 0..c-1
		arr[i] = arr2[i].to_i
	end
	sortArray(arr, 0, c-1)
	k = 0
	print arr
	while X > arr[k]
		X = X - arr[k]
		k = k + 1
	end	
	puts k	

	test = test - 1
end


