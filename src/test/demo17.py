#coding:UTF-8


def getAge(ge):
    age=0;
    if ge==1:
        return 10;
    else:
        age=getAge(ge-1)+2
    return age;


for i in range(1,6):
    print getAge(i)
