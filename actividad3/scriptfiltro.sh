# Script para filtrar renglones de un archivo que contengan las cadenas de caracteres dados

#!/bin/bash

egrep -v 'PRES|hPa'  datos2015.txt | egrep '72440|CAPE|CINS' > CAPE.csv
