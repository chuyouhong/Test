#coding:UTF-8

#水仙花数

for i in range(100,1000):
    bai=i//100;

    shi=(i-bai *100)//10;

    ge =i % 10;

    n=bai*bai*bai+shi*shi*shi+ge*ge*ge;

    if i==n:
        print i