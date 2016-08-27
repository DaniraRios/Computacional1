# Script para filtrar renglones de un archivo que contengan las cadenas de caracteres dados

#!/bin/bash

egrep -v 'PRES|hPa'  jan2015.txt | egrep '72440|Show|LIFT|SWEAT|K|Totals|virtual|CAPV|Lifted|thickness|Precip' > jantuc15.csv
