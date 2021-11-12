# downloading files from the web
# request is not there built in
# pip install request in command prompt

import requests
res = requests.get("https://krajit.github.io/")
print(res.status_code) # 200 means ok
print(res.text)        # the downloaded file

# save the downloaded text in a  file
open("dump.html","w").write(res.text)


# recommended way to write
dumpFile = open("dumpFile.html","wb")
for chunk in res.iter_content(1000000):
    dumpFile.write(chunk)

dumpFile.close()
    
