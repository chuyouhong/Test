#coding:UTF-8


import time
import datetime
print(datetime.date.today().strftime('%Y-%m-%d %H:%H:%S'))
# 暂停1秒输出
for i in range(100):
    print time.strftime("%Y-%m-%d %H:%M:%S",time.localtime())
    time.sleep(1)





