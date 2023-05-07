data =  [0] * 22
data[0]=0x4D18
data[1]=0x4D28
data[2]=0x4D04
data[3]=0x4D00
data[4]=0x4D1C
data[5]=0x4D70
data[6]=0x4DF8
data[7]=0x4CD0
data[8]=0x4D2C
data[9]=0x4D4C
data[10]=0x4D10
data[11]=0x4D24
data[12]=0x4CD0
data[13]=0x4D04
data[14]=0x4D68
data[15]=0x4D34
data[16]=0x4CD8
data[17]=0x4D10
data[18]=0x4D04
data[19]=0x4CD8
data[20]=0x4D5C
data[21]=0x4DE0

def check1(num):
  	result = (4 * int(num)) ^ int(0xC8)
  	return result

def check2(num):
	return(check1(int(num) ^int(0x1337)))

count = 0
while True:
	for i in range(0,1000000):
		if (check2(i)) == data[count]:
			print(chr(i),end='')
			count += 1
