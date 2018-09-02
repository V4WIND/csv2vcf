f=open("contact.csv","r")
r=f.readlines()
y=[]
for x in r:
    s1=x.split(",")
    s2="KOSS "+ s1[0]+"," + s1[1]
    y.append(s2)
with open('contact1.csv', 'w') as f:
    for item in y:
        f.write("%s" % item)
