#coding:UTF-8


a=2.0;
b=1.0;
s=0;
for i in range(1,21):
    s +=a/b;
    t=a;
    a=a+b;
    b=t;
print s;