import os, json

directory = '/home/dsladmin/Desktop/PQET/PQET2/outputs/without_seq/with_mj/'

actual_time = []
our_time = []
postgres_time = []
query = []

for filename in os.listdir(directory):
    if filename.endswith(".json"):
    	path = os.path.join(directory, filename)
    	path = open(path)
    	plan = json.load(path)
    	query.append(filename)
    	actual_time.append(plan['Actual Plan Time'])
    	our_time.append(plan['Our Estimated Plan Time'])
    	postgres_time.append(plan['Postgres Estimated Plan Time'])

try:
	os.remove('/home/dsladmin/Desktop/PQET/PQET2/times.txt')
except:
	print('times.txt already removed!')
f = open('/home/dsladmin/Desktop/PQET/PQET2/times.txt','a+')

for i in range(len(query)):
	string = str(query[i])+" "+str(actual_time[i])+" "+str(our_time[i])+" "+str(postgres_time[i])+"\n"
	f.write(string)
