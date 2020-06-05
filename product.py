def prod(arr):
	result = 1
	for i in range(len(arr)):
		result *= arr[i]
	return result
