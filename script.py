import os
with open('file') as files:
    for line in files:
        host, port, option, tunit, age, prefix, tstr=line.split(",")
        os.system("curator --host %s --port %s %s indices --time-unit %s --older-than %s --prefix %s --timestring %s" %(host,port,option,tunit,age,prefix,tstr))

