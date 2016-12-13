# -*- coding: utf-8 -*-

inputfile = 'beijinghosp.csv'
outputfile = 'bj.csv'

extitem = None

with open(outputfile,'wt') as f:
    with open(inputfile, 'rt') as c:
        for row in c.readlines()[1:]:
            items = row.strip().split(',')
            if extitem == None:
                extitem = items[:]

            for i, e in enumerate(items):
                if items[i] != '':
                    extitem[i] = items[i]

            newrow = ','.join(extitem) + '\n'

            f.write(newrow)
