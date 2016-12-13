#coding:UTF-8


for m in range(1,8):
    for n in range(1,8):
        print ' * ',
    print ''



for i in range(4):
    for j in range(3-i):
        print ' ',
    for k in range(2*i+1):
        print '*',
    print
for i in range(3):
    for j in range(i+1):
        print ' ',
    for k in range(5-2*i):
        print '*',
    print