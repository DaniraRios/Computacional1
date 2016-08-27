#!/bin/bash

# Despues de editar: chmod 755 script1.sh
# Para ejecutar: ./script1.sh

IFS=":"
 

# Months by number of days
LISTM31="01:03:05:07:08:10:12"
#LISTM31="01:03:05:07"
LISTM30="04:06:09:11"
#LISTM30="04:06"
LISTM28="02"

# Script para bajar info por mes. Año 2011, dentro del URL:  YEAR=2011
# Months 31 days
for i in $LISTM31 ; do
	wget  "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=2015&MONTH=$i&FROM=0112&TO=3112&STNM=72440"
        /bin/sleep 5
done
# Months 30 days
for i in $LISTM30 ; do
	wget  "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=2015&MONTH=$i&FROM=0112&TO=3012&STNM=72440"
        /bin/sleep 5
done
# Feb. 28 days
for i in $LISTM28 ; do
	wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=2015&MONTH=$i&FROM=0112&TO=2812&STNM=72440"
        /bin/sleep 5
done
done
