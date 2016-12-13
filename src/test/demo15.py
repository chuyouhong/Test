#coding:UTF-8

def foo(i):
    sum=0
    if i==0:
        sum = 1;
    #    print sum
    else:
        sum= i * foo(i-1);
    return sum;

for k in range(1,6):
    print foo(k)




