# resolved
# coding=utf-8

def binarySearch(nums, target):
    low = 0
    high = len(nums) - 1

    while low <= high:
        mid = low + (high - low) // 2
        if nums[mid] < target:
            low = mid + 1
        elif nums[mid] > target:
            high = mid - 1
        else:
            return mid

    return low


def findKClosestElements(nums, target, k):
    i = binarySearch(nums, target)
    left = i - 1
    right = i
    while k > 0:
        if left < 0 or (right < len(nums) and abs(nums[left] - target) > abs(nums[right] - target)):
            right = right + 1
        else:
            left = left - 1

        k = k - 1
    return nums[left + 1]


def solve_system(x1, a1, m1, x2, a2, m2, x3, a3, m3, m4, diap, flag_xor):

    fun1 = m2 * m3
    fun2 = m1 * m3
    fun3 = m1 * m2
    solve = []

    for i in range(1, 4):
        mas_key = []
        for j in range(diap[0], diap[1]):
            if (j != 0) and ((locals()[f'fun{i}'] * j) % (locals()[f'm{i}']) == 1):
                mas_key.append(j)
                if j > 0:
                    break
        solve.append(findKClosestElements(mas_key, 0, 1))
    #print(solve)
    X = fun1 * solve[0] * a1 + fun2 * solve[1] * a2 + fun3 * solve[2] * a3
    #print(f'{fun1}*{solve[0]}*{a1} + {fun2}*{solve[1]}*{a2} + {fun3}*{solve[2]}*{a3} = ', X)

    # X = X + x1*x2*x3*K
    mass_x = []
    for k in range(0, 20):
        #print(f'x = {X + m1 * m2 * m3 * k}')
        mass_x.append(X + m1 * m2 * m3 * k)

    for i in range(0, 1000000):
        if (i % m4) in mass_x:
            flag = i ^ flag_xor
            flag = hex(flag)[2:]
            try:
                flag = bytearray.fromhex(flag).decode()
            except:
                continue
            print(f'Maybe a = {i}\nMaybe flag = {flag}')
            break


solve = '''
x ≡ 7 (mod 17)	
x ≡ 4 (mod 23)
x ≡ 9 (mod 37)
x ≡ a (mod 14467)
flag ^ a = 25183524468752482838730336135334402772668615375346038
'''

x1 = 1
m1 = 17
a1 = 7
x2 = 1
m2 = 23
a2 = 4
x3 = 1
m3 = 37
a3 = 9
m4 = 14467
diap = [-10000, 10000]
flag_xor = 25183524468752482838730336135334402772668615375346038

solve_system(x1, a1, m1, x2, a2, m2, x3, a3, m3, m4, diap, flag_xor)
