# def getMaxToys(n, arr, money):
#     L, H = 0, n - 1
#     while L <= H:
#         if sum(arr[L:H + 1]) <= money:
#             break
#         else:
#             if arr[L] > arr[H]:
#                 L += 1
#             else:
#                 H -= 1
#     return H - L + 1

# n = int(input())
# arr = list(map(int, input().split()))  # Read and split the input line
# money = int(input())
# print(getMaxToys(n, arr, money))

# A Python3 program to find all the Stepping Number in [n, m]

# This function checks if an integer n is a Stepping Number
def isStepNum(n):

	# Initialize prevDigit with -1
	prevDigit = -1

	# Iterate through all digits of n and compare difference
	# between value of previous and current digits
	while (n):
	
		# Get Current digit
		curDigit = n % 10

		# Single digit is consider as a
		# Stepping Number
		if (prevDigit == -1):
			prevDigit = curDigit
		else:
		
			# Check if absolute difference between
			# prev digit and current digit is 1
			if (abs(prevDigit - curDigit) != 1):
				return False
		prevDigit = curDigit
		n //= 10
	return True

# A brute force approach based function to find all
# stepping numbers.
def displaySteppingNumbers(n, m):

	# Iterate through all the numbers from [N,M]
	# and check if it’s a stepping number.
	for i in range(n, m + 1):
		if (isStepNum(i)):
			print(i, end = " ")

# Driver code
if __name__ == '__main__':
	n, m = 100, 500

	# Display Stepping Numbers in
	# the range [n, m]
	displaySteppingNumbers(n, m)

# This code is contributed by mohit kumar 29
