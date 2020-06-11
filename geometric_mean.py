import math

def gm(arr):
	result = 1
	for i in range(len(arr)):
		result *= arr[i]
	if result == 0:
		return max(arr[0],arr[1])
	return result
	# return (float)(math.pow(result, (1/len(arr))))
