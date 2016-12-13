#coding:UTF-8


def getString(l,s):
    if l==0:
        return
    else:
        print s[l-1];
        s=getString(l-1,s);
    return s


s=raw_input("输入一个五位数的正整数：")
l=len(s);
print "这个数的长度：",l
getString(l,s);