"Práctica 1 - Introducción al lenguaje de programacíon en R"

x=2
x

y<-3
y

4->z
z


#Ejercicio: Reasigne 5 a la letra z, usando el operador <-, ahora, pregunte Â¿quÃ© es z?
z<-5
z

z<-10+2
z
 
z<-3+rnorm(1)
z

# Crear un vector en secuencia de 1 a 10
x<-1:10
x
x+1

?rnorm
#The Normal Distribution
#Description
#Density, distribution function, quantile function and random generation for the normal distribution with mean equal to mean and standard deviation equal to sd.
#rnorm(n, mean = 0, sd = 1)



#Ejer:multiplique x por 2 y sumele 1 y dividalo por 1.5, ese resultado elevelo al cuadrado. 

(((x*2)+1)/1.5)**2


# Clases de objetos
animales <- c('perro','gato','fara')
animales

frases <- 'El gato se comió el fara'
frases

numeros <- rep(x = 1:3,3)/1.5
numeros

enteros <- seq(from = 1,to = 10,by = 2)
enteros

complejos <- c(2i,5i, 3i)
complejos

logicos <- c(T,F,TRUE,FALSE)

logicos

# Ejer: tome cualquier objeto anterior y preguntele la clase

class(enteros)
class(logicos)

# Crear un vector con problemas de clases
prueba <- c(1, "perro", FALSE, "gato", 1.5)
prueba

#Ejercicio:¿Qué clase tiene el vector?
class(prueba)


#Desarrollo
> x=2
> x
[1] 2
> y<-3
> y
[1] 3
> 4->z
> z
[1] 4
> #Ejercicio: Reasigne 5 a la letra z, usando el operador <-, ahora, pregunte Â¿quÃ© es z?
> z<-5
> z
[1] 5
> z<-10+2
> z
[1] 12
> ?rnorm
> z<-3+rnorm(1)
> z
[1] 2.242477
> # Crear un vector en secuencia de 1 a 10
> x<-1:10
> x
 [1]  1  2  3  4  5  6  7  8  9 10
> x+1
 [1]  2  3  4  5  6  7  8  9 10 11
> (((x*2)+1)/1.5)**2
 [1]   4.00000  11.11111  21.77778  36.00000  53.77778  75.11111 100.00000 128.44444
 [9] 160.44444 196.00000
> # Clases de objetos
> animales <- c('perro','gato','fara')
> animales
[1] "perro" "gato"  "fara" 
> frases <- 'El gato se comió el fara'
> frases
[1] "El gato se comió el fara"
> numeros <- rep(x = 1:3,3)/1.5
> numeros
[1] 0.6666667 1.3333333 2.0000000 0.6666667 1.3333333 2.0000000 0.6666667 1.3333333
[9] 2.0000000
> enteros <- seq(from = 1,to = 10,by = 2)
> enteros
[1] 1 3 5 7 9
> complejos <- c(2i,5i, 3i)
> complejos
[1] 0+2i 0+5i 0+3i
> logicos <- c(T,F,TRUE,FALSE)
> logicos
[1]  TRUE FALSE  TRUE FALSE
> class(enteros)
[1] "numeric"
> class(logicos)
[1] "logical"
> # Crear un vector con problemas de clases
> prueba <- c(1, "perro", FALSE, "gato", 1.5)
> prueba
[1] "1"     "perro" "FALSE" "gato"  "1.5"  
> #Ejercicio:¿Qué clase tiene el vector?
> class(prueba)
[1] "character"
> # Creemos un factor con niveles
> grupo_altura <- factor(c("mediano", "pequeño", "grande", "muy grande"),
+                        levels=c("pequeño", "mediano", "grande", "muy grande"))
> grupo_altura
[1] mediano    pequeño    grande     muy grande
Levels: pequeño mediano grande muy grande
> #Ejercicio: Hasta el momento hemnos generado varios vectores/objetos/variables, podemos listarlas usando la función ls() o ls.str(), la cual nos permite, no solo ver las variables, sino el tipo de cada una.
> ls()
 [1] "animales"     "complejos"    "enteros"      "frases"       "grupo_altura"
 [6] "logicos"      "numeros"      "prueba"       "x"            "y"           
[11] "z"           
> ls.str()
animales :  chr [1:3] "perro" "gato" "fara"
complejos :  cplx [1:3] 0+2i 0+5i 0+3i
enteros :  num [1:5] 1 3 5 7 9
frases :  chr "El gato se comió el fara"
grupo_altura :  Factor w/ 4 levels "pequeño","mediano",..: 2 1 3 4
logicos :  logi [1:4] TRUE FALSE TRUE FALSE
numeros :  num [1:9] 0.667 1.333 2 0.667 1.333 ...
prueba :  chr [1:5] "1" "perro" "FALSE" "gato" "1.5"
x :  int [1:10] 1 2 3 4 5 6 7 8 9 10
y :  num 3
z :  num 2.24
> #Matrices
> vector1<- seq(1:12)
> vector1
 [1]  1  2  3  4  5  6  7  8  9 10 11 12
> matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)
> matrix1
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
> vector1<- seq(1:12)
> vector1[6]
[1] 6
> vector1
 [1]  1  2  3  4  5  6  7  8  9 10 11 12
> matrix1[2,3]
[1] 8
> matrix1
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
> # el objeto de la fila 2, columna 3
> matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)
> matrix1[2,3]
[1] 8
> matrix1
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
> arreglo<- array(data = 1:12,dim = c(3,4,3))
> arreglo[2,4,3]
[1] 11
> arreglo
, , 1

     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

, , 2

     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

, , 3

     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

> vector1<-rep(1:4,3)
> vector2<- seq(2,24,2)
> array(data = c(vector1,vector2),dim = c(3,4,2))
, , 1

     [,1] [,2] [,3] [,4]
[1,]    1    4    3    2
[2,]    2    1    4    3
[3,]    3    2    1    4

, , 2

     [,1] [,2] [,3] [,4]
[1,]    2    8   14   20
[2,]    4   10   16   22
[3,]    6   12   18   24

> #Ejercicio: Cree un una secuencia que repita los números de 1 a 4, 3 veces
> #asignela a un objeto llamado vector1. Ahora, cree una secuencia de números pares del 2 al 24 
> #asignela a un objeto llamado vector2. Gnere un arreglo con ambos vectores
> #busque la columna 2, fila 1 de la segunda matriz y para la primera.
> vector1<-rep(1:4,3)
> vector2<- seq(2,24,2)
> array(data = c(vector1,vector2),dim = c(3,4,2))
, , 1

     [,1] [,2] [,3] [,4]
[1,]    1    4    3    2
[2,]    2    1    4    3
[3,]    3    2    1    4

, , 2

     [,1] [,2] [,3] [,4]
[1,]    2    8   14   20
[2,]    4   10   16   22
[3,]    6   12   18   24

> array
function (data = NA, dim = length(data), dimnames = NULL) 
{
    if (is.atomic(data) && !is.object(data)) 
        return(.Internal(array(data, dim, dimnames)))
    data <- as.vector(data)
    if (is.object(data)) {
        dim <- as.integer(dim)
        if (!length(dim)) 
            stop("'dim' cannot be of length 0")
        vl <- prod(dim)
        if (length(data) != vl) {
            if (vl > .Machine$integer.max) 
                stop("'dim' specifies too large an array")
            data <- rep_len(data, vl)
        }
        if (length(dim)) 
            dim(data) <- dim
        if (is.list(dimnames) && length(dimnames)) 
            dimnames(data) <- dimnames
        data
    }
    else .Internal(array(data, dim, dimnames))
}
<bytecode: 0x000001f318aa8390>
<environment: namespace:base>
> data(iris)
> iris
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
1            5.1         3.5          1.4         0.2     setosa
2            4.9         3.0          1.4         0.2     setosa
3            4.7         3.2          1.3         0.2     setosa
4            4.6         3.1          1.5         0.2     setosa
5            5.0         3.6          1.4         0.2     setosa
6            5.4         3.9          1.7         0.4     setosa
7            4.6         3.4          1.4         0.3     setosa
8            5.0         3.4          1.5         0.2     setosa
9            4.4         2.9          1.4         0.2     setosa
10           4.9         3.1          1.5         0.1     setosa
11           5.4         3.7          1.5         0.2     setosa
12           4.8         3.4          1.6         0.2     setosa
13           4.8         3.0          1.4         0.1     setosa
14           4.3         3.0          1.1         0.1     setosa
15           5.8         4.0          1.2         0.2     setosa
16           5.7         4.4          1.5         0.4     setosa
17           5.4         3.9          1.3         0.4     setosa
18           5.1         3.5          1.4         0.3     setosa
19           5.7         3.8          1.7         0.3     setosa
20           5.1         3.8          1.5         0.3     setosa
21           5.4         3.4          1.7         0.2     setosa
22           5.1         3.7          1.5         0.4     setosa
23           4.6         3.6          1.0         0.2     setosa
24           5.1         3.3          1.7         0.5     setosa
25           4.8         3.4          1.9         0.2     setosa
26           5.0         3.0          1.6         0.2     setosa
27           5.0         3.4          1.6         0.4     setosa
28           5.2         3.5          1.5         0.2     setosa
29           5.2         3.4          1.4         0.2     setosa
30           4.7         3.2          1.6         0.2     setosa
31           4.8         3.1          1.6         0.2     setosa
32           5.4         3.4          1.5         0.4     setosa
33           5.2         4.1          1.5         0.1     setosa
34           5.5         4.2          1.4         0.2     setosa
35           4.9         3.1          1.5         0.2     setosa
36           5.0         3.2          1.2         0.2     setosa
37           5.5         3.5          1.3         0.2     setosa
38           4.9         3.6          1.4         0.1     setosa
39           4.4         3.0          1.3         0.2     setosa
40           5.1         3.4          1.5         0.2     setosa
41           5.0         3.5          1.3         0.3     setosa
42           4.5         2.3          1.3         0.3     setosa
43           4.4         3.2          1.3         0.2     setosa
44           5.0         3.5          1.6         0.6     setosa
45           5.1         3.8          1.9         0.4     setosa
46           4.8         3.0          1.4         0.3     setosa
47           5.1         3.8          1.6         0.2     setosa
48           4.6         3.2          1.4         0.2     setosa
49           5.3         3.7          1.5         0.2     setosa
50           5.0         3.3          1.4         0.2     setosa
51           7.0         3.2          4.7         1.4 versicolor
52           6.4         3.2          4.5         1.5 versicolor
53           6.9         3.1          4.9         1.5 versicolor
54           5.5         2.3          4.0         1.3 versicolor
55           6.5         2.8          4.6         1.5 versicolor
56           5.7         2.8          4.5         1.3 versicolor
57           6.3         3.3          4.7         1.6 versicolor
58           4.9         2.4          3.3         1.0 versicolor
59           6.6         2.9          4.6         1.3 versicolor
60           5.2         2.7          3.9         1.4 versicolor
61           5.0         2.0          3.5         1.0 versicolor
62           5.9         3.0          4.2         1.5 versicolor
63           6.0         2.2          4.0         1.0 versicolor
64           6.1         2.9          4.7         1.4 versicolor
65           5.6         2.9          3.6         1.3 versicolor
66           6.7         3.1          4.4         1.4 versicolor
67           5.6         3.0          4.5         1.5 versicolor
68           5.8         2.7          4.1         1.0 versicolor
69           6.2         2.2          4.5         1.5 versicolor
70           5.6         2.5          3.9         1.1 versicolor
71           5.9         3.2          4.8         1.8 versicolor
72           6.1         2.8          4.0         1.3 versicolor
73           6.3         2.5          4.9         1.5 versicolor
74           6.1         2.8          4.7         1.2 versicolor
75           6.4         2.9          4.3         1.3 versicolor
76           6.6         3.0          4.4         1.4 versicolor
77           6.8         2.8          4.8         1.4 versicolor
78           6.7         3.0          5.0         1.7 versicolor
79           6.0         2.9          4.5         1.5 versicolor
80           5.7         2.6          3.5         1.0 versicolor
81           5.5         2.4          3.8         1.1 versicolor
82           5.5         2.4          3.7         1.0 versicolor
83           5.8         2.7          3.9         1.2 versicolor
84           6.0         2.7          5.1         1.6 versicolor
85           5.4         3.0          4.5         1.5 versicolor
86           6.0         3.4          4.5         1.6 versicolor
87           6.7         3.1          4.7         1.5 versicolor
88           6.3         2.3          4.4         1.3 versicolor
89           5.6         3.0          4.1         1.3 versicolor
90           5.5         2.5          4.0         1.3 versicolor
91           5.5         2.6          4.4         1.2 versicolor
92           6.1         3.0          4.6         1.4 versicolor
93           5.8         2.6          4.0         1.2 versicolor
94           5.0         2.3          3.3         1.0 versicolor
95           5.6         2.7          4.2         1.3 versicolor
96           5.7         3.0          4.2         1.2 versicolor
97           5.7         2.9          4.2         1.3 versicolor
98           6.2         2.9          4.3         1.3 versicolor
99           5.1         2.5          3.0         1.1 versicolor
100          5.7         2.8          4.1         1.3 versicolor
101          6.3         3.3          6.0         2.5  virginica
102          5.8         2.7          5.1         1.9  virginica
103          7.1         3.0          5.9         2.1  virginica
104          6.3         2.9          5.6         1.8  virginica
105          6.5         3.0          5.8         2.2  virginica
106          7.6         3.0          6.6         2.1  virginica
107          4.9         2.5          4.5         1.7  virginica
108          7.3         2.9          6.3         1.8  virginica
109          6.7         2.5          5.8         1.8  virginica
110          7.2         3.6          6.1         2.5  virginica
111          6.5         3.2          5.1         2.0  virginica
112          6.4         2.7          5.3         1.9  virginica
113          6.8         3.0          5.5         2.1  virginica
114          5.7         2.5          5.0         2.0  virginica
115          5.8         2.8          5.1         2.4  virginica
116          6.4         3.2          5.3         2.3  virginica
117          6.5         3.0          5.5         1.8  virginica
118          7.7         3.8          6.7         2.2  virginica
119          7.7         2.6          6.9         2.3  virginica
120          6.0         2.2          5.0         1.5  virginica
121          6.9         3.2          5.7         2.3  virginica
122          5.6         2.8          4.9         2.0  virginica
123          7.7         2.8          6.7         2.0  virginica
124          6.3         2.7          4.9         1.8  virginica
125          6.7         3.3          5.7         2.1  virginica
126          7.2         3.2          6.0         1.8  virginica
127          6.2         2.8          4.8         1.8  virginica
128          6.1         3.0          4.9         1.8  virginica
129          6.4         2.8          5.6         2.1  virginica
130          7.2         3.0          5.8         1.6  virginica
131          7.4         2.8          6.1         1.9  virginica
132          7.9         3.8          6.4         2.0  virginica
133          6.4         2.8          5.6         2.2  virginica
134          6.3         2.8          5.1         1.5  virginica
135          6.1         2.6          5.6         1.4  virginica
136          7.7         3.0          6.1         2.3  virginica
137          6.3         3.4          5.6         2.4  virginica
138          6.4         3.1          5.5         1.8  virginica
139          6.0         3.0          4.8         1.8  virginica
140          6.9         3.1          5.4         2.1  virginica
141          6.7         3.1          5.6         2.4  virginica
142          6.9         3.1          5.1         2.3  virginica
143          5.8         2.7          5.1         1.9  virginica
144          6.8         3.2          5.9         2.3  virginica
145          6.7         3.3          5.7         2.5  virginica
146          6.7         3.0          5.2         2.3  virginica
147          6.3         2.5          5.0         1.9  virginica
148          6.5         3.0          5.2         2.0  virginica
149          6.2         3.4          5.4         2.3  virginica
150          5.9         3.0          5.1         1.8  virginica
> iris$Sepal.Length
  [1] 5.1 4.9 4.7 4.6 5.0 5.4 4.6 5.0 4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 5.1
 [21] 5.4 5.1 4.6 5.1 4.8 5.0 5.0 5.2 5.2 4.7 4.8 5.4 5.2 5.5 4.9 5.0 5.5 4.9 4.4 5.1
 [41] 5.0 4.5 4.4 5.0 5.1 4.8 5.1 4.6 5.3 5.0 7.0 6.4 6.9 5.5 6.5 5.7 6.3 4.9 6.6 5.2
 [61] 5.0 5.9 6.0 6.1 5.6 6.7 5.6 5.8 6.2 5.6 5.9 6.1 6.3 6.1 6.4 6.6 6.8 6.7 6.0 5.7
 [81] 5.5 5.5 5.8 6.0 5.4 6.0 6.7 6.3 5.6 5.5 5.5 6.1 5.8 5.0 5.6 5.7 5.7 6.2 5.1 5.7
[101] 6.3 5.8 7.1 6.3 6.5 7.6 4.9 7.3 6.7 7.2 6.5 6.4 6.8 5.7 5.8 6.4 6.5 7.7 7.7 6.0
[121] 6.9 5.6 7.7 6.3 6.7 7.2 6.2 6.1 6.4 7.2 7.4 7.9 6.4 6.3 6.1 7.7 6.3 6.4 6.0 6.9
[141] 6.7 6.9 5.8 6.8 6.7 6.7 6.3 6.5 6.2 5.9
> iris$Sepal.Length[36]
[1] 5
> iris[36,1]
[1] 5
> data(iris)
> c(iris[,1],iris[,2])
  [1] 5.1 4.9 4.7 4.6 5.0 5.4 4.6 5.0 4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 5.1
 [21] 5.4 5.1 4.6 5.1 4.8 5.0 5.0 5.2 5.2 4.7 4.8 5.4 5.2 5.5 4.9 5.0 5.5 4.9 4.4 5.1
 [41] 5.0 4.5 4.4 5.0 5.1 4.8 5.1 4.6 5.3 5.0 7.0 6.4 6.9 5.5 6.5 5.7 6.3 4.9 6.6 5.2
 [61] 5.0 5.9 6.0 6.1 5.6 6.7 5.6 5.8 6.2 5.6 5.9 6.1 6.3 6.1 6.4 6.6 6.8 6.7 6.0 5.7
 [81] 5.5 5.5 5.8 6.0 5.4 6.0 6.7 6.3 5.6 5.5 5.5 6.1 5.8 5.0 5.6 5.7 5.7 6.2 5.1 5.7
[101] 6.3 5.8 7.1 6.3 6.5 7.6 4.9 7.3 6.7 7.2 6.5 6.4 6.8 5.7 5.8 6.4 6.5 7.7 7.7 6.0
[121] 6.9 5.6 7.7 6.3 6.7 7.2 6.2 6.1 6.4 7.2 7.4 7.9 6.4 6.3 6.1 7.7 6.3 6.4 6.0 6.9
[141] 6.7 6.9 5.8 6.8 6.7 6.7 6.3 6.5 6.2 5.9 3.5 3.0 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1
[161] 3.7 3.4 3.0 3.0 4.0 4.4 3.9 3.5 3.8 3.8 3.4 3.7 3.6 3.3 3.4 3.0 3.4 3.5 3.4 3.2
[181] 3.1 3.4 4.1 4.2 3.1 3.2 3.5 3.6 3.0 3.4 3.5 2.3 3.2 3.5 3.8 3.0 3.8 3.2 3.7 3.3
[201] 3.2 3.2 3.1 2.3 2.8 2.8 3.3 2.4 2.9 2.7 2.0 3.0 2.2 2.9 2.9 3.1 3.0 2.7 2.2 2.5
[221] 3.2 2.8 2.5 2.8 2.9 3.0 2.8 3.0 2.9 2.6 2.4 2.4 2.7 2.7 3.0 3.4 3.1 2.3 3.0 2.5
[241] 2.6 3.0 2.6 2.3 2.7 3.0 2.9 2.9 2.5 2.8 3.3 2.7 3.0 2.9 3.0 3.0 2.5 2.9 2.5 3.6
[261] 3.2 2.7 3.0 2.5 2.8 3.2 3.0 3.8 2.6 2.2 3.2 2.8 2.8 2.7 3.3 3.2 2.8 3.0 2.8 3.0
[281] 2.8 3.8 2.8 2.8 2.6 3.0 3.4 3.1 3.0 3.1 3.1 3.1 2.7 3.2 3.3 3.0 2.5 3.0 3.4 3.0
> cbind(iris[,1],iris[,2])
       [,1] [,2]
  [1,]  5.1  3.5
  [2,]  4.9  3.0
  [3,]  4.7  3.2
  [4,]  4.6  3.1
  [5,]  5.0  3.6
  [6,]  5.4  3.9
  [7,]  4.6  3.4
  [8,]  5.0  3.4
  [9,]  4.4  2.9
 [10,]  4.9  3.1
 [11,]  5.4  3.7
 [12,]  4.8  3.4
 [13,]  4.8  3.0
 [14,]  4.3  3.0
 [15,]  5.8  4.0
 [16,]  5.7  4.4
 [17,]  5.4  3.9
 [18,]  5.1  3.5
 [19,]  5.7  3.8
 [20,]  5.1  3.8
 [21,]  5.4  3.4
 [22,]  5.1  3.7
 [23,]  4.6  3.6
 [24,]  5.1  3.3
 [25,]  4.8  3.4
 [26,]  5.0  3.0
 [27,]  5.0  3.4
 [28,]  5.2  3.5
 [29,]  5.2  3.4
 [30,]  4.7  3.2
 [31,]  4.8  3.1
 [32,]  5.4  3.4
 [33,]  5.2  4.1
 [34,]  5.5  4.2
 [35,]  4.9  3.1
 [36,]  5.0  3.2
 [37,]  5.5  3.5
 [38,]  4.9  3.6
 [39,]  4.4  3.0
 [40,]  5.1  3.4
 [41,]  5.0  3.5
 [42,]  4.5  2.3
 [43,]  4.4  3.2
 [44,]  5.0  3.5
 [45,]  5.1  3.8
 [46,]  4.8  3.0
 [47,]  5.1  3.8
 [48,]  4.6  3.2
 [49,]  5.3  3.7
 [50,]  5.0  3.3
 [51,]  7.0  3.2
 [52,]  6.4  3.2
 [53,]  6.9  3.1
 [54,]  5.5  2.3
 [55,]  6.5  2.8
 [56,]  5.7  2.8
 [57,]  6.3  3.3
 [58,]  4.9  2.4
 [59,]  6.6  2.9
 [60,]  5.2  2.7
 [61,]  5.0  2.0
 [62,]  5.9  3.0
 [63,]  6.0  2.2
 [64,]  6.1  2.9
 [65,]  5.6  2.9
 [66,]  6.7  3.1
 [67,]  5.6  3.0
 [68,]  5.8  2.7
 [69,]  6.2  2.2
 [70,]  5.6  2.5
 [71,]  5.9  3.2
 [72,]  6.1  2.8
 [73,]  6.3  2.5
 [74,]  6.1  2.8
 [75,]  6.4  2.9
 [76,]  6.6  3.0
 [77,]  6.8  2.8
 [78,]  6.7  3.0
 [79,]  6.0  2.9
 [80,]  5.7  2.6
 [81,]  5.5  2.4
 [82,]  5.5  2.4
 [83,]  5.8  2.7
 [84,]  6.0  2.7
 [85,]  5.4  3.0
 [86,]  6.0  3.4
 [87,]  6.7  3.1
 [88,]  6.3  2.3
 [89,]  5.6  3.0
 [90,]  5.5  2.5
 [91,]  5.5  2.6
 [92,]  6.1  3.0
 [93,]  5.8  2.6
 [94,]  5.0  2.3
 [95,]  5.6  2.7
 [96,]  5.7  3.0
 [97,]  5.7  2.9
 [98,]  6.2  2.9
 [99,]  5.1  2.5
[100,]  5.7  2.8
[101,]  6.3  3.3
[102,]  5.8  2.7
[103,]  7.1  3.0
[104,]  6.3  2.9
[105,]  6.5  3.0
[106,]  7.6  3.0
[107,]  4.9  2.5
[108,]  7.3  2.9
[109,]  6.7  2.5
[110,]  7.2  3.6
[111,]  6.5  3.2
[112,]  6.4  2.7
[113,]  6.8  3.0
[114,]  5.7  2.5
[115,]  5.8  2.8
[116,]  6.4  3.2
[117,]  6.5  3.0
[118,]  7.7  3.8
[119,]  7.7  2.6
[120,]  6.0  2.2
[121,]  6.9  3.2
[122,]  5.6  2.8
[123,]  7.7  2.8
[124,]  6.3  2.7
[125,]  6.7  3.3
[126,]  7.2  3.2
[127,]  6.2  2.8
[128,]  6.1  3.0
[129,]  6.4  2.8
[130,]  7.2  3.0
[131,]  7.4  2.8
[132,]  7.9  3.8
[133,]  6.4  2.8
[134,]  6.3  2.8
[135,]  6.1  2.6
[136,]  7.7  3.0
[137,]  6.3  3.4
[138,]  6.4  3.1
[139,]  6.0  3.0
[140,]  6.9  3.1
[141,]  6.7  3.1
[142,]  6.9  3.1
[143,]  5.8  2.7
[144,]  6.8  3.2
[145,]  6.7  3.3
[146,]  6.7  3.0
[147,]  6.3  2.5
[148,]  6.5  3.0
[149,]  6.2  3.4
[150,]  5.9  3.0
> minuevatabla<- cbind(iris[,1],iris[,2])
> minuevatabla
       [,1] [,2]
  [1,]  5.1  3.5
  [2,]  4.9  3.0
  [3,]  4.7  3.2
  [4,]  4.6  3.1
  [5,]  5.0  3.6
  [6,]  5.4  3.9
  [7,]  4.6  3.4
  [8,]  5.0  3.4
  [9,]  4.4  2.9
 [10,]  4.9  3.1
 [11,]  5.4  3.7
 [12,]  4.8  3.4
 [13,]  4.8  3.0
 [14,]  4.3  3.0
 [15,]  5.8  4.0
 [16,]  5.7  4.4
 [17,]  5.4  3.9
 [18,]  5.1  3.5
 [19,]  5.7  3.8
 [20,]  5.1  3.8
 [21,]  5.4  3.4
 [22,]  5.1  3.7
 [23,]  4.6  3.6
 [24,]  5.1  3.3
 [25,]  4.8  3.4
 [26,]  5.0  3.0
 [27,]  5.0  3.4
 [28,]  5.2  3.5
 [29,]  5.2  3.4
 [30,]  4.7  3.2
 [31,]  4.8  3.1
 [32,]  5.4  3.4
 [33,]  5.2  4.1
 [34,]  5.5  4.2
 [35,]  4.9  3.1
 [36,]  5.0  3.2
 [37,]  5.5  3.5
 [38,]  4.9  3.6
 [39,]  4.4  3.0
 [40,]  5.1  3.4
 [41,]  5.0  3.5
 [42,]  4.5  2.3
 [43,]  4.4  3.2
 [44,]  5.0  3.5
 [45,]  5.1  3.8
 [46,]  4.8  3.0
 [47,]  5.1  3.8
 [48,]  4.6  3.2
 [49,]  5.3  3.7
 [50,]  5.0  3.3
 [51,]  7.0  3.2
 [52,]  6.4  3.2
 [53,]  6.9  3.1
 [54,]  5.5  2.3
 [55,]  6.5  2.8
 [56,]  5.7  2.8
 [57,]  6.3  3.3
 [58,]  4.9  2.4
 [59,]  6.6  2.9
 [60,]  5.2  2.7
 [61,]  5.0  2.0
 [62,]  5.9  3.0
 [63,]  6.0  2.2
 [64,]  6.1  2.9
 [65,]  5.6  2.9
 [66,]  6.7  3.1
 [67,]  5.6  3.0
 [68,]  5.8  2.7
 [69,]  6.2  2.2
 [70,]  5.6  2.5
 [71,]  5.9  3.2
 [72,]  6.1  2.8
 [73,]  6.3  2.5
 [74,]  6.1  2.8
 [75,]  6.4  2.9
 [76,]  6.6  3.0
 [77,]  6.8  2.8
 [78,]  6.7  3.0
 [79,]  6.0  2.9
 [80,]  5.7  2.6
 [81,]  5.5  2.4
 [82,]  5.5  2.4
 [83,]  5.8  2.7
 [84,]  6.0  2.7
 [85,]  5.4  3.0
 [86,]  6.0  3.4
 [87,]  6.7  3.1
 [88,]  6.3  2.3
 [89,]  5.6  3.0
 [90,]  5.5  2.5
 [91,]  5.5  2.6
 [92,]  6.1  3.0
 [93,]  5.8  2.6
 [94,]  5.0  2.3
 [95,]  5.6  2.7
 [96,]  5.7  3.0
 [97,]  5.7  2.9
 [98,]  6.2  2.9
 [99,]  5.1  2.5
[100,]  5.7  2.8
[101,]  6.3  3.3
[102,]  5.8  2.7
[103,]  7.1  3.0
[104,]  6.3  2.9
[105,]  6.5  3.0
[106,]  7.6  3.0
[107,]  4.9  2.5
[108,]  7.3  2.9
[109,]  6.7  2.5
[110,]  7.2  3.6
[111,]  6.5  3.2
[112,]  6.4  2.7
[113,]  6.8  3.0
[114,]  5.7  2.5
[115,]  5.8  2.8
[116,]  6.4  3.2
[117,]  6.5  3.0
[118,]  7.7  3.8
[119,]  7.7  2.6
[120,]  6.0  2.2
[121,]  6.9  3.2
[122,]  5.6  2.8
[123,]  7.7  2.8
[124,]  6.3  2.7
[125,]  6.7  3.3
[126,]  7.2  3.2
[127,]  6.2  2.8
[128,]  6.1  3.0
[129,]  6.4  2.8
[130,]  7.2  3.0
[131,]  7.4  2.8
[132,]  7.9  3.8
[133,]  6.4  2.8
[134,]  6.3  2.8
[135,]  6.1  2.6
[136,]  7.7  3.0
[137,]  6.3  3.4
[138,]  6.4  3.1
[139,]  6.0  3.0
[140,]  6.9  3.1
[141,]  6.7  3.1
[142,]  6.9  3.1
[143,]  5.8  2.7
[144,]  6.8  3.2
[145,]  6.7  3.3
[146,]  6.7  3.0
[147,]  6.3  2.5
[148,]  6.5  3.0
[149,]  6.2  3.4
[150,]  5.9  3.0
> c(iris[1:5,],iris[10:30,])
$Sepal.Length
[1] 5.1 4.9 4.7 4.6 5.0

$Sepal.Width
[1] 3.5 3.0 3.2 3.1 3.6

$Petal.Length
[1] 1.4 1.4 1.3 1.5 1.4

$Petal.Width
[1] 0.2 0.2 0.2 0.2 0.2

$Species
[1] setosa setosa setosa setosa setosa
Levels: setosa versicolor virginica

$Sepal.Length
 [1] 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 5.1 5.4 5.1 4.6 5.1 4.8 5.0 5.0 5.2 5.2
[21] 4.7

$Sepal.Width
 [1] 3.1 3.7 3.4 3.0 3.0 4.0 4.4 3.9 3.5 3.8 3.8 3.4 3.7 3.6 3.3 3.4 3.0 3.4 3.5 3.4
[21] 3.2

$Petal.Length
 [1] 1.5 1.5 1.6 1.4 1.1 1.2 1.5 1.3 1.4 1.7 1.5 1.7 1.5 1.0 1.7 1.9 1.6 1.6 1.5 1.4
[21] 1.6

$Petal.Width
 [1] 0.1 0.2 0.2 0.1 0.1 0.2 0.4 0.4 0.3 0.3 0.3 0.2 0.4 0.2 0.5 0.2 0.2 0.4 0.2 0.2
[21] 0.2

$Species
 [1] setosa setosa setosa setosa setosa setosa setosa setosa setosa setosa setosa
[12] setosa setosa setosa setosa setosa setosa setosa setosa setosa setosa
Levels: setosa versicolor virginica

> rbind(iris[1:5,],iris[10:30,])
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1           5.1         3.5          1.4         0.2  setosa
2           4.9         3.0          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
4           4.6         3.1          1.5         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
10          4.9         3.1          1.5         0.1  setosa
11          5.4         3.7          1.5         0.2  setosa
12          4.8         3.4          1.6         0.2  setosa
13          4.8         3.0          1.4         0.1  setosa
14          4.3         3.0          1.1         0.1  setosa
15          5.8         4.0          1.2         0.2  setosa
16          5.7         4.4          1.5         0.4  setosa
17          5.4         3.9          1.3         0.4  setosa
18          5.1         3.5          1.4         0.3  setosa
19          5.7         3.8          1.7         0.3  setosa
20          5.1         3.8          1.5         0.3  setosa
21          5.4         3.4          1.7         0.2  setosa
22          5.1         3.7          1.5         0.4  setosa
23          4.6         3.6          1.0         0.2  setosa
24          5.1         3.3          1.7         0.5  setosa
25          4.8         3.4          1.9         0.2  setosa
26          5.0         3.0          1.6         0.2  setosa
27          5.0         3.4          1.6         0.4  setosa
28          5.2         3.5          1.5         0.2  setosa
29          5.2         3.4          1.4         0.2  setosa
30          4.7         3.2          1.6         0.2  setosa


# Creemos un factor con niveles
grupo_altura <- factor(c("mediano", "pequeño", "grande", "muy grande"),
                       levels=c("pequeño", "mediano", "grande", "muy grande"))
grupo_altura

#Ejercicio: Hasta el momento hemnos generado varios vectores/objetos/variables, podemos listarlas usando la función ls() o ls.str(), la cual nos permite, no solo ver las variables, sino el tipo de cada una.
ls()
ls.str()

#Matrices
vector1<- seq(1:12)

vector1

matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)
matrix1

vector1<- seq(1:12)

vector1[6]

vector1

matrix1[2,3]

matrix1

    # Arreglos

# el objeto de la fila 2, columna 3
matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)

matrix1[2,3]

matrix1

# el objeto de la fila 2, columna 3

arreglo<- array(data = 1:12,dim = c(3,4,3))

arreglo[2,4,3]

arreglo

vector1<-rep(1:4,3)
vector2<- seq(2,24,2)
array(data = c(vector1,vector2),dim = c(3,4,2))

#Ejercicio: Cree un una secuencia que repita los números de 1 a 4, 3 veces
#asignela a un objeto llamado vector1. Ahora, cree una secuencia de números pares del 2 al 24 
#asignela a un objeto llamado vector2. Gnere un arreglo con ambos vectores
#busque la columna 2, fila 1 de la segunda matriz y para la primera.
vector1<-rep(1:4,3)
vector2<- seq(2,24,2)
array(data = c(vector1,vector2),dim = c(3,4,2))
array

# Data.Frames

data(iris)
iris
# Longitud del Sepalo

iris$Sepal.Length

# Longitud del Sepalo del individuo 36

iris$Sepal.Length[36]

iris[36,1]

#Ejercicio:  tome la primera columna  y la segunda, concatenelas con c() ¿Qué encuentra?
  #Ahora, tome amabas columnas y use la funcion cbind(), asignelo a un objeto llamado minuevatabla.
#Haga lo mismo, con las filas del 1:5 y del 10:30, use primero c() y luego rbind() ¿Qué encuentra? 
  
data(iris)

c(iris[,1],iris[,2])

cbind(iris[,1],iris[,2])

minuevatabla<- cbind(iris[,1],iris[,2])

minuevatabla

c(iris[1:5,],iris[10:30,])

rbind(iris[1:5,],iris[10:30,])

#Busque el archivo suministrado por el profesor, carguelo a R y revise qué contien. Extraiga las 5 primeras columnas con las 10 primeras filas, escriba esa nueva matriz como csv en su computador.

setwd("C:/Users/BODEGA-/Desktop/ESTADISTICA practica/Semana1_IntroR/")

read.csv("Semana1_IntroR.Rmd")


