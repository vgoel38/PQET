import math

def qerror(a,b):
	if a == 0 or b == 0:
		print("ERROR! Q-error arguments are zero!")
		return 0
	return max(a/b,b/a)
