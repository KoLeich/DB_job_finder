#!bin/bash
#curl -G -d "param1=value1" -d "param2=value2" http://httpbin.org/get
echo $1
#curl -G  -d "qli=true" -d "query=" -d "sort=pubExternalDate_tdt" -d "itemsPerPage=20" -d "pageNum=$1" -d "travelMode=TRANSIT" -d "startPoint=" -d "endPoint=" -d "country=Deutschland" -d "location=Berlin" -d "positiontype=Akademische%3Ar+Professional"  https://db.jobs/service/search/de-de/5441588 |  grep jobId | grep title-text >Seiten/Seite$1.html
#curl -G  -d "qli=true" -d "query=" -d "sort=pubExternalDate_tdt" -d "itemsPerPage=20" -d "pageNum=$1" -d "travelMode=TRANSIT" -d "startPoint=" -d "endPoint=" -d "country=Deutschland" -d "location=Berlin" -d "positiontype=Direkteinstieg"  https://db.jobs/service/search/de-de/5441588 |  grep jobId | grep title-text >Seiten/Seite$1.html


curl -G -d "qli=true" -d "query=" -d "sort=pubExternalDate_tdt" -d "itemsPerPage=20" -d "pageNum=$1" -d "state=Berlin" https://db.jobs/service/search/de-de/5441588 |  grep jobId | grep title-text >Seiten/Seite$1.html


