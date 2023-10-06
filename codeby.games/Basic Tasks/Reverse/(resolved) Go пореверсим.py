rdx = int(0)
a = int(0)
rbx = int(0)
rsi = int(0)
rdi = int(0)
while rdx!=35384089715228331:
    if rdx>35384089715228331:
        break
    a+=1
    rdx=a
    rbx=rdx
    rdx=rdx**2
    rsi=rdx
    rdx*=rbx
    rdi=rbx
    rbx*=rdx
    rbx*=21940
    rdx*=7021
    rbx+=rdx
    rsi+=59366
    rbx+=rdx
    rdi=rdi*2+rdi
    rdx=rdx*8+rbx
print (a, rdx)
