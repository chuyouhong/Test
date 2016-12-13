
f1 = 1
f2 = 1
for i in range(1,21):
    print '%15d %15d' % (f1,f2),
    if (i % 3) == 0:
        print '\n'
    f1 = f1 + f2
    f2 = f1 + f2