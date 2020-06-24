import math

def qerror(a,b):
	# print(a,b)
	if a == 0 or b == 0:
		# print("ERROR! Q-error arguments are zero!")
		return 0
	a = max(a,1000)
	b = max(b,1000)
	return max(a/b,b/a)
