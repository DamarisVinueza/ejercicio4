# “ Ejercicio 1.10.4”
Echo “cd /c/Users/DAMARIS/Documents/bioinformatica/CSB-master/unix/data”
# “ Buzzard et al. (2016) recolectaron datos sobre el crecimiento de un bosque en Costa Rica, en el archivo Buzzard2015_data.csv encontrará un subconjunto de sus datos, incluidos información taxonómica, abundancia y biomasa de árboles”
# “ Escriba un script que, para un archivo CSV y un número de columna determinados” 
# “ imprimir”
#“ Nombre de la columna correspondiente”
#Numero de distintos valores en la columna, el valor maximo z el valor minimo.
cut -d ',' -f 7 Buzzard2015_data.csv | head -n 1
 # “ el número de los valores distintos se encuentran con los comandos tail, sort y uniq” 
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
# “Para encontrar los valores mínimos y máximos usamos los comandos head sort y tail”
 # “Valor mínimo”
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1
 # “Valor máximo”
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
