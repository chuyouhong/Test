#coding:UTF-8

l=[];
s=1;
for i in range(1,21):
    s *=i;
    l.append(s)
    print reduce(lambda x,y:x+y,l)