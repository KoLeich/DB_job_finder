#!bin/bash
echo $1


curl -G -d "qli=true" -d "query=" -d "sort=pubExternalDate_tdt" -d "itemsPerPage=20" -d "pageNum=$1" -d "state=Berlin" https://db.jobs/service/search/de-de/5441588 |  grep jobId | grep title-text >Seiten/Seite$1.html


# state is set to Berlin, if you want to place in another city or more cities, you have to change this value
