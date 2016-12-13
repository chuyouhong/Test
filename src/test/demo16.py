#coding:UTF-8




def getSring(l,s):
    if l==0 :
        return
    else:
        print s[l-1];
        getSring(l-1,s);


s=raw_input("请输入一个字符串：");
l=len(s);
getSring(l,s);
#---------------------------------------------------------------------


def getSring1(l,s):
    if l==len(s) :
        return
    else:
        print s[l];
        getSring1(l+1,s);


s=raw_input("请输入一个字符串：");
getSring1(0,s);