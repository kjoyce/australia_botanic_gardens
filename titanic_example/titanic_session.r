 
R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet"                                                                                                                                                                                   
Copyright (C) 2014 The R Foundation for Statistical Computing                                                                                                                                                                      
Platform: x86_64-unknown-linux-gnu (64-bit)                                                                                                                                                                                        
                                                                                                                                                                                                                                   
R is free software and comes with ABSOLUTELY NO WARRANTY.                                                                                                                                                                          
You are welcome to redistribute it under certain conditions.                                                                                                                                                                       
Type 'license()' or 'licence()' for distribution details.                                                                                                                                                                          
                                                                                                                                                                                                                                   
  Natural language support but running in an English locale                                                                                                                                                                        
                                                                                                                                                                                                                                   
R is a collaborative project with many contributors.                                                                                                                                                                               
Type 'contributors()' for more information and                                                                                                                                                                                     
'citation()' on how to cite R or R packages in publications.                                                                                                                                                                       
                                                                                                                                                                                                                                   
Type 'demo()' for some demos, 'help()' for on-line help, or                                                                                                                                                                        
'help.start()' for an HTML browser interface to help.                                                                                                                                                                              
Type 'q()' to quit R.                                                                                                                                                                                                              

> Titanic 
, , Age = Child, Survived = No
                                                                                                                                                                                                                                   
      Sex                                                                                                                                                                                                                          
Class  Male Female                                                                                                                                                                                                                 
  1st     0      0                                                                                                                                                                                                                 
  2nd     0      0                                                                                                                                                                                                                 
  3rd    35     17                                                                                                                                                                                                                 
  Crew    0      0

, , Age = Adult, Survived = No

      Sex
Class  Male Female
  1st   118      4
  2nd   154     13
  3rd   387     89
  Crew  670      3

, , Age = Child, Survived = Yes

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    13     14
  Crew    0      0

, , Age = Adult, Survived = Yes

      Sex
Class  Male Female
  1st    57    140
  2nd    14     80
  3rd    75     76
  Crew  192     20

> help(table) 
table                   package:base                   R Documentation

Cross Tabulation and Table Creation

Destors to build a contingency
     table of the counts at each combination of factor levels.

Usage:

     table(..., exclude = if (useNA == "no") c(NA, NaN), useNA = c("no",
         "ifany", "always"), dnn = list.names(...), deparse.level = 1)
     
     as.table(x, ...)
     is.table(x)
     
     ## S3 method for class 'table'
     as.data.frame(x, row.names = NULL, ...,
                   responseName = "Freq", stringsAsFactors = TRUE,
                   sep = "", base = list(LETTERS))
     
Arguments:

     ...: one or more objects which can be interpreted as factors
          (including character strings), or a list (or data frame)
          whose components can be so interpreted.  (For ‘as.table’,
          arguments passed to specific methods; for ‘as.data.frame’,
          unused.)

 exclude: levels to remove for all factors in ‘...’.  If set to ‘NULL’,
          it implies ‘useNA = "always"’.  See ‘Details’ for its
          interpretation for non-factor arguments.

   useNA: whether to include ‘NA’ values in the table.  See ‘Details’.

     dnn: the names to be given to the dimensions in the result (the
          _dimnames names_).

deparse.level: controls how the default ‘dnn’ is constructed.  See
          ‘Details’.

       x: an arbitrary R object, or an object inheriting from class
          ‘"table"’ for the ‘as.data.frame’ method. Note that
          ‘as.data.frame.table(x, *)’ may be called explicitly for
          non-table ‘x’ for “reshaping” ‘array’s.

row.names: a character vector giving the row names for the data frame.

responseName: The name to be used for the column of table entries,
          usually counts.

stringsAsFactors: logical: should the classifying factors be returned
          as factors (the default) or character vectors?

sep, base: passed to ‘provideDimnames’.

Details:

: function
     ‘list.names’ is called to compute the ‘dimname names’.  If the
     arguments in ‘...’ are named, those names are used.  For the
:mpty name,
     ‘deparse.level = 1’ uses the supplied argument if it is a symbol,
     and ‘deparse.level = 2’ will deparse the argument.
> table(Titanic) 
Titanic
  0   1   3   4   5  11  13  14  17  20  35  57  75  76  80  89 118 140 154 192 
  8   1   1   1   1   1   3   2   1   1   1   1   1   1   1   1   1   1   1   1 
387 670 
  1   1 
> help(titanic) 
No documentation for ‘titanic’ in specified packages and libraries:
you could try ‘??titanic’
> help(Titanic) 
Titanic                package:datasets                R Documentation

Survival of passengers on the Titanic

Description:

     This data set provides information on the fate of passengers on
     the fatal maiden voyage of the ocean liner ‘Titanic’, summarized
     according to economic status (class), sex, age and survival.

Usage:

     Titanic
     
Format:

Format:
 
     A 4-dimensional array resulting from cross-tabulating 2201
     observations on 4 variables.  The variables and their levels are
     as follows:

       No  Name      Levels              
        1  Class     1st, 2nd, 3rd, Crew 
        2  Sex       Male, Female        
        3  Age       Child, Adult        
        4  Survived  No, Yes             
      
Details:

     The sinking of the Titanic is a famous event, and new books are
     still being published about it.  Many well-known facts-from the
     proportions of first-class passengers to the ‘women and children
     first’ policy, and the fact that that policy was not entirely
     successful in saving the women and children in the third class-are
     reflected in the survival rates for various classes of passenger.

     These data were originally collected by the British Board of Trade
     in their investigation of the sinking.  Note that there is not
     complete agreement among primary sources as to the exact numbers
     on board, rescued, or lost.

     Due in particular to the very successful film ‘Titanic’, the last
     years saw a rise in public interest in the Titanic.  Very detailed
     data about the passengers is now available on the Internet, at
     sites such as _Encyclopedia Titanica_ (<URL:
     http://www.rmplc.co.uk/eduweb/sites/phind>).

Source:

     Dawson, Robert J. MacG. (1995), The ‘Unusual Episode’ Data
     Revisited.  _Journal of Statistics Education_, *3*.  <URL:
     http://www.amstat.org/publications/jse/v3n3/datasets.dawson.html>

     The source provides a data set recording class, sex, age, and
     survival status for each person on board of the Titanic, and is
     based on data originally collected by the British Board of Trade
     and reprinted in:

     British Board of Trade (1990), _Report on the Loss of the
     ‘Titanic’ (S.S.)_.  British Board of Trade Inquiry Report
     (reprint).  Gloucester, UK: Allan Sutton Publishing.

Examples:

     require(graphics)
     mosaicplot(Titanic, main = "Survival on the Titanic")
     ## Higher survival rates in children?
     apply(Titanic, c(3, 4), sum)
     ## Higher survival rates in females?
     apply(Titanic, c(2, 4), sum)
     ## Use loglm() in package 'MASS' for further analysis ...
     

> apply(Titanic, sum) 
Error in match.fun(FUN) : argument "FUN" is missing, with no default
> help(apply) 
apply                   package:base                   R Documentation

Apply Functions Over Array Margins

Description:

     Returns a vector or array or list of values obtained by applying a
     function to margins of an array or matrix.

Usage:

     apply(X, MARGIN, FUN, ...)
     
Arguments:

       X: an array, including a matrix.

  MARGIN: a vector giving the subscripts which the function will be
          applied over.  E.g., for a matri‘c(1, 2)’ indicates rows and a character vector
          selecting dimension names.

     FUN: the function to be applied: see ‘Details’.  In the case of
          functions like ‘+’, ‘%*%’, etc., the function name must be
          backquoted or quoted.

     ...: optional arguments to ‘FUN’.

Details:
     apply(X, MARGIN, FUN, ...)
     
Arguments:
 
       X: an array, including a matrix.
 
  MARGIN: a vector giving the subscripts which the function will be
          applied over.  E.g., for a matrix ‘1’ indicates rows, ‘2’
          indicates columns, ‘c(1, 2)’ indicates rows and columns.
          Where ‘X’ has named dimnames, it can be a character vector
          selecting dimension names.
 
     FUN: the function to be applied: see ‘Details’.  In the case of
          functions like ‘+’, ‘%*%’, etc., the function name must be
          backquoted or quoted.
 
     ...: optional arguments to ‘FUN’.
 
Details:
 
     If ‘X’ is not an array but an object of a class with a non-null
 
 
     If ‘X’ is not an array but an object of a class with a non-null
     ‘dim’ value (such as a data frame), ‘apply’ attempts to coerce it
     to an array via ‘as.matrix’ if it is two-dimensional (e.g., a data
> apply(Titanic,c(1,2,3) sum)
Error: unexpected symbol in "apply(Titanic,c(1,2,3) sum"
> apply(Titanic,c(1,2,3), sum)
, , Age = Child

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    48     31
  Crew    0      0

, , Age = Adult

      Sex
Class  Male Female
  1st   175    144
  2nd   168     93
  3rd   462    165
  Crew  862     23

> apply(Titanic,c(1,2,3,4), sum)
, , Age = Child, Survived = No

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd    35     17
  Crew    0      0

, , Age = Adult, Survived = No

      Sex
Class  Male Female
  1st   118      4
  2nd   154     13
  3rd   387     89
  Crew  670      3

, , Age = Child, Survived = Yes

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    13     14
  Crew    0      0

, , Age = Adult, Survived = Yes

      Sex
Class  Male Female
  1st    57    140
  2nd    14     80
  3rd    75     76
  Crew  192     20

> apply(Titanic,1, sum)
 1st  2nd  3rd Crew 
 325  285  706  885 
> apply(Titanic,2, sum)
  Male Female 
  1731    470 
> apply(Titanic,3, sum)
Child Adult 
  109  2092 
> apply(Titanic,4, sum)
  No  Yes 
1490  711 
> apply(Titanic,c(1,4), sum)
      Survived
Class   No Yes
  1st  122 203
  2nd  167 118
  3rd  528 178
  Crew 673 212
> apply(Titanic,c(1,2,4), sum)
, , Survived = No

      Sex
Class  Male Female
  1st   118      4
  2nd   154     13
  3rd   422    106
  Crew  670      3

, , Survived = Yes

      Sex
Class  Male Female
  1st    62    141
  2nd    25     93
  3rd    88     90
  Crew  192     20

> Titanic 
, , Age = Child, Survived = No

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd    35     17
  Crew    0      0

, , Age = Adult, Survived = No

      Sex
Class  Male Female
  1st   118      4
  2nd   154     13
  3rd   387     89
  Crew  670      3

, , Age = Child, Survived = Yes

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    13     14
  Crew    0      0

, , Age = Adult, Survived = Yes

      Sex
Class  Male Female
  1st    57    140
  2nd    14     80
  3rd    75     76
  Crew  192     20

> apply(Titanic,c(1,2,3,4), sum)
, , Age = Child, Survived = No

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd    35     17
  Crew    0      0

, , Age = Adult, Survived = No

      Sex
Class  Male Female
  1st   118      4
  2nd   154     13
  3rd   387     89
  Crew  670      3

, , Age = Child, Survived = Yes

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    13     14
  Crew    0      0

, , Age = Adult, Survived = Yes

      Sex
Class  Male Female
  1st    57    140
  2nd    14     80
  3rd    75     76
  Crew  192     20

> apply(Titanic,c(1,2,3), sum)
, , Age = Child

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    48     31
  Crew    0      0

, , Age = Adult

      Sex
Class  Male Female
  1st   175    144
  2nd   168     93
  3rd   462    165
  Crew  862     23

> apply(Titanic,c(1,2), sum)
      Sex
Class  Male Female
  1st   180    145
  2nd   179    106
  3rd   510    196
  Crew  862     23
> apply(Titanic,c(2,4), sum)
        Survived
Sex        No Yes
  Male   1364 367
  Female  126 344
> Titanic[c(4,1,2,3)] 
[1]  0  0  0 35
> help(trans 
trans3d               transform             transform.data.frame  transform.default     
> Titanic 
, , Age = Child, Survived = No

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd    35     17
  Crew    0      0

, , Age = Adult, Survived = No

      Sex
Class  Male Female
  1st   118      4
  2nd   154     13
  3rd   387     89
  Crew  670      3

, , Age = Child, Survived = Yes

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    13     14
  Crew    0      0

, , Age = Adult, Survived = Yes

      Sex
Class  Male Female
  1st    57    140
  2nd    14     80
  3rd    75     76
  Crew  192     20

> help(T) 
logical                  package:base                  R Documentation

Logical Vectors

Description:

     Create or test for objects of type ‘"logical"’, and the basic
     logical constants.

Usage:

     TRUE
     FALSE
     T; F
     
     logical(length = 0)
     as.logical(x, ...)
     is.logical(x)
     
Arguments:

  length: A non-negative integer specifying the desired length.  Double
          values will be coerced to integer: supplying an argument of
          length other than one is an error.

       x: object to be coerced or tested.

     ...: further arguments passed to or from other methods.

Details:

     ‘TRUE’ and ‘FALSE’ are reserved words denoting logical constants
     in the R language, whereas ‘T’ and ‘F’ are global variables whose
     initial values set to these.  All four are ‘logical(1)’ vectors.

     Logical vectors are coerced to integer vectors in contexts where a
     numerical value is required, weger_’.

Value:

     ‘logical’ creates a logical vector of the specified length.  Each
     element of tmpts to coerce its argument to bes including names.  Character
     strings ‘c("T", "TRUE", "True", "true")’ are regarded as true,
     ‘c("F", "FALSE", "False", "false")’ as false, and all others as
     ‘NA’.

     ‘is.logical’ returns ‘TRUE’ or ‘FALSE’ depending on whether its
     argument is of logical type or not.

> tra 
trace                 traceback             tracemem              traceOff              traceOn               tracingState          trans3d               transform             transform.data.frame  transform.default
> trans 
trans3d               transform             transform.data.frame  transform.default     
> help(trans3) 
No documentation for ‘trans3’ in specified packages and libraries:
you could try ‘??trans3’
> ??transpose 
Help files with alias or concept or title matching ‘transpose’ using
fuzzy matching:


base::aperm             Array Transposition
base::t                 Matrix Transpose
Matrix::%*%-methods     Matrix (Cross) Products (of Transpose)


Type '?PKG::FOO' to inspect entries 'PKG::FOO', or 'TYPE?PKG::FOO' for
entries like 'PKG::FOO-TYPE'.




> help(aperm) 
aperm                   package:base                   R Documentation

Array Transposition

Description:

     Transpose an array by permuting its dimensions and optionally
     resizing it.

Usage:

     aperm(a, perm, ...)
     ## Default S3 method:
     aperm(a, perm = NULL, resize = TRUE, ...)
     ## S3 method for class 'table'
     aperm(a, perm = NULL, resize = TRUE, keep.class = TRUE, ...)
     
Arguments:

       a: the array to be transposed.

    perm: the subscript permutation vector, usually a permutation of
          the integers ‘1:n’, where ‘n’ is the number of dimensions of
          ‘a’.  When ‘a’ has named dimnames, it can be a character
          vector of length ‘n’ giving a permutation of those names. The
          default (used whenever ‘perm’ has zero length) is to reverse
          the order of the dimensions.

  resize: a flag indicating whether the vector should be resized as
          well as having its elements reordered (default ‘TRUE’).

keep.class: logical indicating if the result should be of the same
          class as ‘a’.

     ...: potential further arguments of methods.

Value:

     A transposed version of array ‘a’, with subscripts permuted as
     indicated by the array ‘perm’.  If ‘resize’ is ‘TRUE’, the array
     is reshaped as well as having its elements permuted, the
     ‘dimnames’ are also permuted; if ‘resize = FALSE’ then the
     returned object has the same dimensions as ‘a’, and the dimnames
     are dropped.  In each case other attributes are copied from ‘a’.

     The function ‘t’ provides a faster and more convenient way of
     transposing matrices.

Author(s):

     Jonathan Rougier, <email: J.C.Rougier@durham.ac.uk> did the faster
     C implementation.

References:
> aperm(Titanic,c(4,1,2,3)) 
, , Sex = Male, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  35    0
     Yes   5  11  13    0

, , Sex = Female, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  17    0
     Yes   1  13  14    0

, , Sex = Male, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No  118 154 387  670
     Yes  57  14  75  192

, , Sex = Female, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No    4  13  89    3
     Yes 140  80  76   20

> aperm(Titanic,c(4,1,2,3)) 
, , Sex = Male, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  35    0
     Yes   5  11  13    0

, , Sex = Female, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  17    0
     Yes   1  13  14    0

, , Sex = Male, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No  118 154 387  670
     Yes  57  14  75  192

, , Sex = Female, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No    4  13  89    3
     Yes 140  80  76   20

> help(Titanic) 
Titanic                package:datasets                R Documentation

Survival of passengers on the Titanic

Description:

     This data set provides information on the fate of passengers on
     the fatal maiden voyago economic status (class), sex, age and survival.

Usage:

     Titanic
     
Format:

     A 4-dimensional array resulting from cross-tabulating 2201
     observations on 4 variables.  The variables and their levels are
     as follows:

       No  Name      Levels              
        1  Class     1st, 2nd, 3rd, Crew 
        2  Sex       Male, Female        
        3  Age       Child, Adult        
        4  Survived  No, Yes             
      
Details:

     The sinking of the Titanic is a famous event, and new books are
     still being published about it.  Many well-known facts-from the
     proportions of first-class passengers to the ‘women and children
     first’ policy, and the fact that that policy was not entirely
     successful in saving the women and children in the third class-are
     reflected in the survival rates for various classes of passenger.

     These data were originally collected by the British Board of Trade
     in their investigation of the sinking.  Note that there is not
     complete agreement among primary sources as to the exact numbers
     on board, rescued, or lost.

     Due in particular to the very successful film ‘Titanic’, the last
     years saw a rise in public interest in the Titanic.  Very detailed
     data about the passengers is now available on the Internet, at
     sites such as _Encyclopedia Titanica_ (<URL:
     http://www.rmplc.co.uk/eduweb/sites/phind>).

Source:

     Dawson, Robert J. MacG. (1995), The ‘Unusual Episode’ Data
     Revisited.  _Journal of Statistics Education_, *3*.  <URL:
     http://www.amstat.org/publications/jse/v3n3/datasets.dawson.html>

     The source provides a data set recording class, sex, age, and
     survival status for each person on board of the Titanic, and is
> aperm(Titanic,c(4,1,2,3))
, , Sex = Male, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  35    0
     Yes   5  11  13    0

, , Sex = Female, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  17    0
     Yes   1  13  14    0

, , Sex = Male, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No  118 154 387  670
     Yes  57  14  75  192

, , Sex = Female, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No    4  13  89    3
     Yes 140  80  76   20

> as.array(aperm(Titanic,c(4,1,2,3))) 
, , Sex = Male, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  35    0
     Yes   5  11  13    0

, , Sex = Female, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  17    0
     Yes   1  13  14    0

, , Sex = Male, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No  118 154 387  670
     Yes  57  14  75  192

, , Sex = Female, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No    4  13  89    3
     Yes 140  80  76   20

> as.array(aperm(Titanic,c(4,1,2,3))) 
, , Sex = Male, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  35    0
     Yes   5  11  13    0

, , Sex = Female, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  17    0
     Yes   1  13  14    0

, , Sex = Male, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No  118 154 387  670
     Yes  57  14  75  192

, , Sex = Female, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No    4  13  89    3
     Yes 140  80  76   20

> ??flatten 
Help files with alias or concept or title matching ‘flatten’ using
fuzzy matching:


base::unlist            Flatten Lists
codetools::codetools    Low Level Code Analysis Tools for R


Type '?PKG::FOO' to inspect entries 'PKG::FOO', or 'TYPE?PKG::FOO' for
entries like 'PKG::FOO-TYPE'.




> as.data.frame.table(Titanic) 
   Class    Sex   Age Survived Freq
1    1st   Male Child       No    0
2    2nd   Male Child       No    0
3    3rd   Male Child       No   35
4   Crew   Male Child       No    0
5    1st Female Child       No    0
6    2nd Female Child       No    0
7    3rd Female Child       No   17
8   Crew Female Child       No    0
9    1st   Male Adult       No  118
10   2nd   Male Adult       No  154
11   3rd   Male Adult       No  387
12  Crew   Male Adult       No  670
13   1st Female Adult       No    4
14   2nd Female Adult       No   13
15   3rd Female Adult       No   89
16  Crew Female Adult       No    3
17   1st   Male Child      Yes    5
18   2nd   Male Child      Yes   11
19   3rd   Male Child      Yes   13
20  Crew   Male Child      Yes    0
21   1st Female Child      Yes    1
22   2nd Female Child      Yes   13
23   3rd Female Child      Yes   14
24  Crew Female Child      Yes    0
25   1st   Male Adult      Yes   57
26   2nd   Male Adult      Yes   14
27   3rd   Male Adult      Yes   75
28  Crew   Male Adult      Yes  192
29   1st Female Adult      Yes  140
30   2nd Female Adult      Yes   80
31   3rd Female Adult      Yes   76
32  Crew Female Adult      Yes   20
> as.data.frame.table(aperm(Titanic,c(4,1,2,3)))
   Survived Class    Sex   Age Freq
1        No   1st   Male Child    0
2       Yes   1st   Male Child    5
3        No   2nd   Male Child    0
4       Yes   2nd   Male Child   11
5        No   3rd   Male Child   35
6       Yes   3rd   Male Child   13
7        No  Crew   Male Child    0
8       Yes  Crew   Male Child    0
9        No   1st Female Child    0
10      Yes   1st Female Child    1
11       No   2nd Female Child    0
12      Yes   2nd Female Child   13
13       No   3rd Female Child   17
14      Yes   3rd Female Child   14
15       No  Crew Female Child    0
16      Yes  Crew Female Child    0
17       No   1st   Male Adult  118
18      Yes   1st   Male Adult   57
19       No   2nd   Male Adult  154
20      Yes   2nd   Male Adult   14
21       No   3rd   Male Adult  387
22      Yes   3rd   Male Adult   75
23       No  Crew   Male Adult  670
24      Yes  Crew   Male Adult  192
25       No   1st Female Adult    4
26      Yes   1st Female Adult  140
27       No   2nd Female Adult   13
28      Yes   2nd Female Adult   80
29       No   3rd Female Adult   89
30      Yes   3rd Female Adult   76
31       No  Crew Female Adult    3
32      Yes  Crew Female Adult   20
> sum(Titanic,c(1,2,3)) 
[1] 2207
> sum(Titanic,1)
[1] 2202
> apply(Titanic,c(1,2,3),sum) 
, , Age = Child

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    48     31
  Crew    0      0

, , Age = Adult

      Sex
Class  Male Female
  1st   175    144
  2nd   168     93
  3rd   462    165
  Crew  862     23

> as.data.frame.table(apply(Titanic,c(1,2,3),sum)) 
   Class    Sex   Age Freq
1    1st   Male Child    5
2    2nd   Male Child   11
3    3rd   Male Child   48
4   Crew   Male Child    0
5    1st Female Child    1
6    2nd Female Child   13
7    3rd Female Child   31
8   Crew Female Child    0
9    1st   Male Adult  175
10   2nd   Male Adult  168
11   3rd   Male Adult  462
12  Crew   Male Adult  862
13   1st Female Adult  144
14   2nd Female Adult   93
15   3rd Female Adult  165
16  Crew Female Adult   23
> as.data.frame.table(apply(Titanic,c(1,2,3),sum))
   Class    Sex   Age Freq
1    1st   Male Child    5
2    2nd   Male Child   11
3    3rd   Male Child   48
4   Crew   Male Child    0
5    1st Female Child    1
6    2nd Female Child   13
7    3rd Female Child   31
8   Crew Female Child    0
9    1st   Male Adult  175
10   2nd   Male Adult  168
11   3rd   Male Adult  462
12  Crew   Male Adult  862
13   1st Female Adult  144
14   2nd Female Adult   93
15   3rd Female Adult  165
16  Crew Female Adult   23
> as.data.frame.table(apply(Titanic,c(1,2,3),function(x)( x=="Yes")))
   Var1 Class    Sex   Age  Freq
1    No   1st   Male Child FALSE
2   Yes   1st   Male Child FALSE
3    No   2nd   Male Child FALSE
4   Yes   2nd   Male Child FALSE
5    No   3rd   Male Child FALSE
6   Yes   3rd   Male Child FALSE
7    No  Crew   Male Child FALSE
8   Yes  Crew   Male Child FALSE
9    No   1st Female Child FALSE
10  Yes   1st Female Child FALSE
11   No   2nd Female Child FALSE
12  Yes   2nd Female Child FALSE
13   No   3rd Female Child FALSE
14  Yes   3rd Female Child FALSE
15   No  Crew Female Child FALSE
16  Yes  Crew Female Child FALSE
17   No   1st   Male Adult FALSE
18  Yes   1st   Male Adult FALSE
19   No   2nd   Male Adult FALSE
20  Yes   2nd   Male Adult FALSE
21   No   3rd   Male Adult FALSE
22  Yes   3rd   Male Adult FALSE
23   No  Crew   Male Adult FALSE
24  Yes  Crew   Male Adult FALSE
25   No   1st Female Adult FALSE
26  Yes   1st Female Adult FALSE
27   No   2nd Female Adult FALSE
28  Yes   2nd Female Adult FALSE
29   No   3rd Female Adult FALSE
30  Yes   3rd Female Adult FALSE
31   No  Crew Female Adult FALSE
32  Yes  Crew Female Adult FALSE
> as.data.frame.table(apply(Titanic,c(1,2,3),function(x)( sum(x=="Yes"))))
   Class    Sex   Age Freq
1    1st   Male Child    0
2    2nd   Male Child    0
3    3rd   Male Child    0
4   Crew   Male Child    0
5    1st Female Child    0
6    2nd Female Child    0
7    3rd Female Child    0
8   Crew Female Child    0
9    1st   Male Adult    0
10   2nd   Male Adult    0
11   3rd   Male Adult    0
12  Crew   Male Adult    0
13   1st Female Adult    0
14   2nd Female Adult    0
15   3rd Female Adult    0
16  Crew Female Adult    0
> Titanic 
, , Age = Child, Survived = No

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd    35     17
  Crew    0      0

, , Age = Adult, Survived = No

      Sex
Class  Male Female
  1st   118      4
  2nd   154     13
  3rd   387     89
  Crew  670      3

, , Age = Child, Survived = Yes

      Sex
Class  Male Female
  1st     5      1
  2nd    11     13
  3rd    13     14
  Crew    0      0

, , Age = Adult, Survived = Yes

      Sex
Class  Male Female
  1st    57    140
  2nd    14     80
  3rd    75     76
  Crew  192     20

> aperm(Titanic(c(4,1,2,3))) 
Error in aperm(Titanic(c(4, 1, 2, 3))) : 
  could not find function "Titanic"
> aperm(Titanic,c(4,1,2,3)) 
, , Sex = Male, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  35    0
     Yes   5  11  13    0

, , Sex = Female, Age = Child

        Class
Survived 1st 2nd 3rd Crew
     No    0   0  17    0
     Yes   1  13  14    0

, , Sex = Male, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No  118 154 387  670
     Yes  57  14  75  192

, , Sex = Female, Age = Adult

        Class
Survived 1st 2nd 3rd Crew
     No    4  13  89    3
     Yes 140  80  76   20

> as.data.frame.table(Titanic)
   Class    Sex   Age Survived Freq
1    1st   Male Child       No    0
2    2nd   Male Child       No    0
3    3rd   Male Child       No   35
4   Crew   Male Child       No    0
5    1st Female Child       No    0
6    2nd Female Child       No    0
7    3rd Female Child       No   17
8   Crew Female Child       No    0
9    1st   Male Adult       No  118
10   2nd   Male Adult       No  154
11   3rd   Male Adult       No  387
12  Crew   Male Adult       No  670
13   1st Female Adult       No    4
14   2nd Female Adult       No   13
15   3rd Female Adult       No   89
16  Crew Female Adult       No    3
17   1st   Male Child      Yes    5
18   2nd   Male Child      Yes   11
19   3rd   Male Child      Yes   13
20  Crew   Male Child      Yes    0
21   1st Female Child      Yes    1
22   2nd Female Child      Yes   13
23   3rd Female Child      Yes   14
24  Crew Female Child      Yes    0
25   1st   Male Adult      Yes   57
26   2nd   Male Adult      Yes   14
27   3rd   Male Adult      Yes   75
28  Crew   Male Adult      Yes  192
29   1st Female Adult      Yes  140
30   2nd Female Adult      Yes   80
31   3rd Female Adult      Yes   76
32  Crew Female Adult      Yes   20
> as.data.frame.table(aperm(Titanic,c(4,1,2,3))) 
   Survived Class    Sex   Age Freq
1        No   1st   Male Child    0
2       Yes   1st   Male Child    5
3        No   2nd   Male Child    0
4       Yes   2nd   Male Child   11
5        No   3rd   Male Child   35
6       Yes   3rd   Male Child   13
7        No  Crew   Male Child    0
8       Yes  Crew   Male Child    0
9        No   1st Female Child    0
10      Yes   1st Female Child    1
11       No   2nd Female Child    0
12      Yes   2nd Female Child   13
13       No   3rd Female Child   17
14      Yes   3rd Female Child   14
15       No  Crew Female Child    0
16      Yes  Crew Female Child    0
17       No   1st   Male Adult  118
18      Yes   1st   Male Adult   57
19       No   2nd   Male Adult  154
20      Yes   2nd   Male Adult   14
21       No   3rd   Male Adult  387
22      Yes   3rd   Male Adult   75
23       No  Crew   Male Adult  670
24      Yes  Crew   Male Adult  192
25       No   1st Female Adult    4
26      Yes   1st Female Adult  140
27       No   2nd Female Adult   13
28      Yes   2nd Female Adult   80
29       No   3rd Female Adult   89
30      Yes   3rd Female Adult   76
31       No  Crew Female Adult    3
32      Yes  Crew Female Adult   20
> as.data.frame.table(aperm(Titanic,c(3,2,1,4)))
     Age    Sex Class Survived Freq
1  Child   Male   1st       No    0
2  Adult   Male   1st       No  118
3  Child Female   1st       No    0
4  Adult Female   1st       No    4
5  Child   Male   2nd       No    0
6  Adult   Male   2nd       No  154
7  Child Female   2nd       No    0
8  Adult Female   2nd       No   13
9  Child   Male   3rd       No   35
10 Adult   Male   3rd       No  387
11 Child Female   3rd       No   17
12 Adult Female   3rd       No   89
13 Child   Male  Crew       No    0
14 Adult   Male  Crew       No  670
15 Child Female  Crew       No    0
16 Adult Female  Crew       No    3
17 Child   Male   1st      Yes    5
18 Adult   Male   1st      Yes   57
19 Child Female   1st      Yes    1
20 Adult Female   1st      Yes  140
21 Child   Male   2nd      Yes   11
22 Adult   Male   2nd      Yes   14
23 Child Female   2nd      Yes   13
24 Adult Female   2nd      Yes   80
25 Child   Male   3rd      Yes   13
26 Adult   Male   3rd      Yes   75
27 Child Female   3rd      Yes   14
28 Adult Female   3rd      Yes   76
29 Child   Male  Crew      Yes    0
30 Adult   Male  Crew      Yes  192
31 Child Female  Crew      Yes    0
32 Adult Female  Crew      Yes   20
> as.data.frame.table(aperm(Titanic,c(1,2,3,4)))
   Class    Sex   Age Survived Freq
1    1st   Male Child       No    0
2    2nd   Male Child       No    0
3    3rd   Male Child       No   35
4   Crew   Male Child       No    0
5    1st Female Child       No    0
6    2nd Female Child       No    0
7    3rd Female Child       No   17
8   Crew Female Child       No    0
9    1st   Male Adult       No  118
10   2nd   Male Adult       No  154
11   3rd   Male Adult       No  387
12  Crew   Male Adult       No  670
13   1st Female Adult       No    4
14   2nd Female Adult       No   13
15   3rd Female Adult       No   89
16  Crew Female Adult       No    3
17   1st   Male Child      Yes    5
18   2nd   Male Child      Yes   11
19   3rd   Male Child      Yes   13
20  Crew   Male Child      Yes    0
21   1st Female Child      Yes    1
22   2nd Female Child      Yes   13
23   3rd Female Child      Yes   14
24  Crew Female Child      Yes    0
25   1st   Male Adult      Yes   57
26   2nd   Male Adult      Yes   14
27   3rd   Male Adult      Yes   75
28  Crew   Male Adult      Yes  192
29   1st Female Adult      Yes  140
30   2nd Female Adult      Yes   80
31   3rd Female Adult      Yes   76
32  Crew Female Adult      Yes   20
> tit = as.data.frame.table(Titanic)  
> help(as.data.frame.table) 
table                   package:base                   R Documentation

Cross Tabulation and Table Creation

Destors to build a contingency
     table of the counts at each combination of factor levels.

Usage:

     table(..., exclude = if (useNA == "no") c(NA, NaN), useNA = c("no",
         "ifany", "always"), dnn = list.names(...), deparse.level = 1)
     
     as.table(x, ...)
     is.table(x)
     
     ## S3 method for class 'table'
     as.data.frame(x, row.names = NULL, ...,
                   responseName = "Freq", stringsAsFactors = TRUE,
                   sep = "", base = list(LETTERS))
     
Arguments:

     ...: one or more objects which can be interpreted as factors
          (including character strings), or a list (or data frame)
          whose components can be so interpreted.  (For ‘as.table’,
          arguments passed to specific methods; for ‘as.data.frame’,
          unused.)

 exclude: levels to remove for all factors in ‘...’.  If set to ‘NULL’,
          it implies ‘useNA = "always"’.  See ‘Details’ for its
          interpretation for non-factor arguments.

   useNA: whether to include ‘NA’ values in the table.  See ‘Details’.

     dnn: the names to be given to the dimensions in the result (the
          _dimnames names_).

deparse.level: controls how the default ‘dnn’ is constructed.  See
          ‘Details’.

       x: an arbitrary R object, or an object inheriting from class
          ‘"table"’ for the ‘as.data.frame’ method. Note that
          ‘as.data.frame.table(x, *)’ may be called explicitly for
          non-table ‘x’ for “reshaping” ‘array’s.

row.names: a character vector giving the row names for the data frame.

responseName: The name to be used for the column of table entries,
          usually counts.

> tit 
   Class    Sex   Age Survived Freq
1    1st   Male Child       No    0
2    2nd   Male Child       No    0
3    3rd   Male Child       No   35
4   Crew   Male Child       No    0
5    1st Female Child       No    0
6    2nd Female Child       No    0
7    3rd Female Child       No   17
8   Crew Female Child       No    0
9    1st   Male Adult       No  118
10   2nd   Male Adult       No  154
11   3rd   Male Adult       No  387
12  Crew   Male Adult       No  670
13   1st Female Adult       No    4
14   2nd Female Adult       No   13
15   3rd Female Adult       No   89
16  Crew Female Adult       No    3
17   1st   Male Child      Yes    5
18   2nd   Male Child      Yes   11
19   3rd   Male Child      Yes   13
20  Crew   Male Child      Yes    0
21   1st Female Child      Yes    1
22   2nd Female Child      Yes   13
23   3rd Female Child      Yes   14
24  Crew Female Child      Yes    0
25   1st   Male Adult      Yes   57
26   2nd   Male Adult      Yes   14
27   3rd   Male Adult      Yes   75
28  Crew   Male Adult      Yes  192
29   1st Female Adult      Yes  140
30   2nd Female Adult      Yes   80
31   3rd Female Adult      Yes   76
32  Crew Female Adult      Yes   20
> tapply(tit,tit$Survived, function(x)( x == "Yes")) 
Error in tapply(tit, tit$Survived, function(x) (x == "Yes")) : 
  arguments must have same length
> help(as.data.frame.table) 
table                   package:base                   R Documentation

Cross Tabulation and Table Creation

Destors to build a contingency
     table of the counts at each combination of factor levels.

Usage:

     table(..., exclude = if (useNA == "no") c(NA, NaN), useNA = c("no",
         "ifany", "always"), dnn = list.names(...), deparse.level = 1)
     
     as.table(x, ...)
     is.table(x)
     
     ## S3 method for class 'table'
     as.data.frame(x, row.names = NULL, ...,
                   responseName = "Freq", stringsAsFactors = TRUE,
                   sep = "", base = list(LETTERS))
     
Arguments:

     ...: one or more objects which can be interpreted as factors
          (including character strings), or a list (or data frame)
          whose components can be so interpreted.  (For ‘as.table’,
          arguments passed to specific methods; for ‘as.data.frame’,
          unused.)

 exclude: levels to remove for all factors in ‘...’.  If set to ‘NULL’,
          it implies ‘useNA = "always"’.  See ‘Details’ for its
          interpretation for non-factor arguments.

   useNA: whether to include ‘NA’ values in the table.  See ‘Details’.

     dnn: the names to be given to the dimensions in the result (the
          _dimnames names_).

deparse.level: controls how the default ‘dnn’ is constructed.  See
          ‘Details’.

       x: an arbitrary R object, or an object inheriting from class
          ‘"table"’ for the ‘as.data.frame’ method. Note that
          ‘as.data.frame.table(x, *)’ may be called explicitly for
          non-table ‘x’ for “reshaping” ‘array’s.

row.names: a character vector giving the row names for the data frame.

responseName: The name to be used for the column of table entries,
          usually counts.

stringsAsFactors: logical: should the classifying factors be returned
          as factors (the default) or character vectors?

sep, base: passed to ‘provideDimnames’.

Details:

: function
     ‘list.names’ is called to compute the ‘dimname names’.  If the
     arguments in ‘...’ are named, those names are used.  For the
:mpty name,
     ‘deparse.level = 1’ uses the supplied argument if it is a symbol,
     and ‘deparse.level = 2’ will deparse the argument.

     Only when ‘exclude’ is specified and non-NULL (i.e., not by
     default), will ‘table’ potentially drop levels of factor
     arguments.

     allowed values correspond to never, only if the count is positive
     and even for zero counts.  This is overridden by specifying
     mapped to ‘NA’ and so included in ‘NA’ counts.

     Both ‘exclude’ and ‘useNA’ operate on an "all or none" basis.  If
     you want to control the dimensions of a multiway table separately,
     modify each argument using ‘factor’ or ‘addNA’.

     It is best to supply factors rather than rely on coercion.  In
: factor, and so
     values (not levels) which appear in ‘exclude’ before coercion will
     be mapped to ‘NA’ rather than be discarded.

     The ‘summary’ method for class ‘"table"’ (used for objects created
     by ‘table’ or ‘xtabs’) which gives basic information and performs
     a chi-squared test for independence of factors (note that the
:bles).

Value:

     ‘table()’ returns a _contingency table_, an object of class
     ‘"table"’, an array of integer values.  Note that unlike S the
     result is always an array, a 1D array if one factor is given.

     ‘as.table’ and ‘is.table’ coerce to and test for contingency
     table, respectively.

     The ‘as.data.frame’ method for objects inheriting from class
     ‘"table"’ can be used to convert the array-based representation of
     a contingency table to a data frame containing the classifying
     factors and the corresponding entries (the latter as component

References:

     Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) _The New S
     Language_.  Wadsworth & Brooks/Cole.

See Also:

     ‘tabulate’ is the underlying function and allows finer control.

     Use ‘ftable’ for printing (and more) of multidimensional tables.
     ‘margin.table’, ‘prop.table’, ‘addmargins’.

     ‘xtabs’ for cross tabulation of data frames with a formula
     interface.

Examples:

     require(stats) # for rpois and xtabs
     ## Simple frequency distribution
     table(rpois(100, 5))
     ## Check the design:
     with(warpbreaks, table(wool, tension))
     table(state.division, state.region)
     
     # simple two-way contingency table
     with(airquality, table(cut(Temp, quantile(Temp)), Month))
     
     a <- letters[1:3]
     table(a, sample(a))                    # dnn is c("a", "")
     table(a, sample(a), deparse.level = 0) # dnn is c("", "")
     table(a, sample(a), deparse.level = 2) # dnn is c("a", "sample(a)")
     
     ## xtabs() <-> as.data.frame.table() :
     UCBAdmissions ## already a contingency table
     DF <- as.data.frame(UCBAdmissions)
     class(tab <- xtabs(Freq ~ ., DF)) # xtabs & table
     ## tab *is* "the same" as the original table:
     all(tab == UCBAdmissions)
     all.equal(dimnames(tab), dimnames(UCBAdmissions))
     
     a <- rep(c(NA, 1/0:3), 10)
     table(a)
     table(a, exclude = NULL)
     b <- factor(rep(c("A","B","C"), 10))
     table(b)
     table(b, exclude = "B")
     d <- factor(rep(c("A","B","C"), 10), levels = c("A","B","C","D","E"))
     table(d, exclude = "B")
     print(table(b, d), zero.print = ".")
     
     ## NA counting:
     is.na(d) <- 3:4
     d. <- addNA(d)
> table(tit) 
, , Age = Child, Survived = No, Freq = 0

      Sex
Class  Male Female
  1st     1      1
  2nd     1      1
  3rd     0      0
  Crew    1      1

, , Age = Adult, Survived = No, Freq = 0

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 0

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    1      1

, , Age = Adult, Survived = Yes, Freq = 0

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 1

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 1

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 1

      Sex
Class  Male Female
  1st     0      1
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 1

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 3

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 3

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      1

, , Age = Child, Survived = Yes, Freq = 3

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 3

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 4

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 4

      Sex
Class  Male Female
  1st     0      1
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 4

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 4

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 5

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 5

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 5

      Sex
Class  Male Female
  1st     1      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 5

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 11

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 11

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 11

      Sex
Class  Male Female
  1st     0      0
  2nd     1      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 11

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 13

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 13

      Sex
Class  Male Female
  1st     0      0
  2nd     0      1
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 13

      Sex
Class  Male Female
  1st     0      0
  2nd     0      1
  3rd     1      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 13

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 14

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 14

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 14

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      1
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 14

      Sex
Class  Male Female
  1st     0      0
  2nd     1      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 17

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      1
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 17

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 17

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 17

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 20

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 20

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 20

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 20

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      1

, , Age = Child, Survived = No, Freq = 35

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     1      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 35

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 35

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 35

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 57

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 57

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 57

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 57

      Sex
Class  Male Female
  1st     1      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 75

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 75

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 75

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 75

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     1      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 76

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 76

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 76

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 76

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      1
  Crew    0      0

, , Age = Child, Survived = No, Freq = 80

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 80

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 80

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 80

      Sex
Class  Male Female
  1st     0      0
  2nd     0      1
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 89

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 89

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      1
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 89

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 89

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 118

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 118

      Sex
Class  Male Female
  1st     1      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 118

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 118

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 140

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 140

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 140

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 140

      Sex
Class  Male Female
  1st     0      1
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 154

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 154

      Sex
Class  Male Female
  1st     0      0
  2nd     1      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 154

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 154

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 192

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 192

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 192

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 192

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    1      0

, , Age = Child, Survived = No, Freq = 387

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 387

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     1      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 387

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 387

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 670

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 670

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    1      0

, , Age = Child, Survived = Yes, Freq = 670

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 670

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

> help(table) 
table                   package:base                   R Documentation

Cross Tabulation and Table Creation

Destors to build a contingency
     table of the counts at each combination of factor levels.

Usage:

     table(..., exclude = if (useNA == "no") c(NA, NaN), useNA = c("no",
         "ifany", "always"), dnn = list.names(...), deparse.level = 1)
     
     as.table(x, ...)
     is.table(x)
     
     ## S3 method for class 'table'
     as.data.frame(x, row.names = NULL, ...,
                   responseName = "Freq", stringsAsFactors = TRUE,
                   sep = "", base = list(LETTERS))
     
Arguments:

     table(..., exclude = if (useNA == "no") c(NA, NaN), useNA = c("no",
         "ifany", "always"), dnn = list.names(...), deparse.level = 1)
     
     as.table(x, ...)
     is.table(x)
     
     ## S3 method for class 'table'
     as.data.frame(x, row.names = NULL, ...,
                   responseName = "Freq", stringsAsFactors = TRUE,
                   sep = "", base = list(LETTERS))
     
Arguments:
 
     ...: one or more objects which can be interpreted as factors
          (including character strings), or a list (or data frame)
          whose components can be so interpreted.  (For ‘as.table’,
          arguments passed to specific methods; for ‘as.data.frame’,
          unused.)

 exclude: levels to remove for all factors in ‘...’.  If set to ‘NULL’,
          it implies ‘useNA = "always"’.  See ‘Details’ for its
          interpretation for non-factor arguments.

   useNA: whether to include ‘NA’ values in the table.  See ‘Details’.

     dnn: the names to be given to the dimensions in the result (the
          _dimnames names_).

deparse.level: controls how the default ‘dnn’ is constructed.  See
          ‘Details’.

       x: an arbitrary R object, or an object inheriting from class
          ‘"table"’ for the ‘as.data.frame’ method. Note that
          ‘as.data.frame.table(x, *)’ may be called explicitly for
          non-table ‘x’ for “reshaping” ‘array’s.

row.names: a character vector giving the row names for the data frame.

responseName: The name to be used for the column of table entries,
          usually counts.

stringsAsFactors: logical: should the classifying factors be returned
          as factors (the default) or character vectors?

sep, base: passed to ‘provideDimnames’.

Details:

: function
     ‘list.names’ is called to compute the ‘dimname names’.  If the
     arguments in ‘...’ are named, those names are used.  For the
:mpty name,
     ‘deparse.level = 1’ uses the supplied argument if it is a symbol,
     and ‘deparse.level = 2’ will deparse the argument.

     Only when ‘exclude’ is specified and non-NULL (i.e., not by
     default), will ‘table’ potentially drop levels of factor
     arguments.

     allowed values correspond to never, only if the count is positive
     and even for zero counts.  This is overridden by specifying
     mapped to ‘NA’ and so included in ‘NA’ counts.

     Both ‘exclude’ and ‘useNA’ operate on an "all or none" basis.  If
     you want to control the dimensions of a multiway table separately,
     modify each argument using ‘factor’ or ‘addNA’.

     It is best to supply factors rather than rely on coercion.  In
: factor, and so
     values (not levels) which appear in ‘exclude’ before coercion will
     be mapped to ‘NA’ rather than be discarded.

     The ‘summary’ method for class ‘"table"’ (used for objects created
     by ‘table’ or ‘xtabs’) which gives basic information and performs
     a chi-squared test for independence of factors (note that the
:bles).

Value:

     ‘table()’ returns a _contingency table_, an object of class
     ‘"table"’, an array of integer values.  Note that unlike S the
     result is always an array, a 1D array if one factor is given.

     ‘as.table’ and ‘is.table’ coerce to and test for contingency
     table, respectively.

     The ‘as.data.frame’ method for objects inheriting from class
     ‘"table"’ can be used to convert the array-based representation of
     a contingency table to a data frame containing the classifying
     factors and the corresponding entries (the latter as component

References:

     Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) _The New S
     Language_.  Wadsworth & Brooks/Cole.

See Also:

     ‘tabulate’ is the underlying function and allows finer control.

> help(as.data.frame.table) 
table                   package:base                   R Documentation

Cross Tabulation and Table Creation

Description:

     ‘table’ uses the cross-classifying factors to build a contingency
     table of the counts at each combination of factor levels.

Usage:

     table(..., exclude = if (useNA == "no") c(NA, NaN), useNA = c("no",
         "ifany", "always"), dnn = list.names(...), deparse.level = 1)
     
     as.table(x, ...)
     is.table(x)
     
     ## S3 method for class 'table'
     as.data.frame(x, row.names = NULL, ...,
                   responseName = "Freq", stringsAsFactors = TRUE,
                   sep = "", base = list(LETTERS))
     
Arguments:

     ...: one or more objects which can be interpreted as factors
> names(tit) 
[1] "Class"    "Sex"      "Age"      "Survived" "Freq"    
> table(tit,exclude=c("Class","Sex","Freq"))
, , Age = Child, Survived = No, Freq = 0

      Sex
Class  Male Female
  1st     1      1
  2nd     1      1
  3rd     0      0
  Crew    1      1

, , Age = Adult, Survived = No, Freq = 0

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 0

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    1      1

, , Age = Adult, Survived = Yes, Freq = 0

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 1

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 1

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 1

      Sex
Class  Male Female
  1st     0      1
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 1

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 3

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 3

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      1

, , Age = Child, Survived = Yes, Freq = 3

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 3

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 4

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 4

      Sex
Class  Male Female
  1st     0      1
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 4

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 4

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 5

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 5

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 5

      Sex
Class  Male Female
  1st     1      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 5

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 11

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 11

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 11

      Sex
Class  Male Female
  1st     0      0
  2nd     1      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 11

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 13

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 13

      Sex
Class  Male Female
  1st     0      0
  2nd     0      1
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 13

      Sex
Class  Male Female
  1st     0      0
  2nd     0      1
  3rd     1      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 13

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 14

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 14

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 14

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      1
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 14

      Sex
Class  Male Female
  1st     0      0
  2nd     1      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 17

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      1
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 17

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 17

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 17

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 20

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 20

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 20

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 20

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      1

, , Age = Child, Survived = No, Freq = 35

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     1      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 35

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 35

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 35

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 57

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 57

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 57

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 57

      Sex
Class  Male Female
  1st     1      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 75

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 75

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 75

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 75

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     1      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 76

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 76

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 76

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 76

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      1
  Crew    0      0

, , Age = Child, Survived = No, Freq = 80

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 80

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 80

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 80

      Sex
Class  Male Female
  1st     0      0
  2nd     0      1
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 89

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 89

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      1
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 89

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 89

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 118

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 118

      Sex
Class  Male Female
  1st     1      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 118

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 118

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 140

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 140

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 140

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 140

      Sex
Class  Male Female
  1st     0      1
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 154

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 154

      Sex
Class  Male Female
  1st     0      0
  2nd     1      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 154

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 154

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 192

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 192

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 192

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 192

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    1      0

, , Age = Child, Survived = No, Freq = 387

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 387

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     1      0
  Crew    0      0

, , Age = Child, Survived = Yes, Freq = 387

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 387

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Child, Survived = No, Freq = 670

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = No, Freq = 670

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    1      0

, , Age = Child, Survived = Yes, Freq = 670

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

, , Age = Adult, Survived = Yes, Freq = 670

      Sex
Class  Male Female
  1st     0      0
  2nd     0      0
  3rd     0      0
  Crew    0      0

Warning message:
In as.vector(exclude, typeof(x)) : NAs introduced by coercion
> help(table) 
table                   package:base                   R Documentation

Cross Tabulation and Table Creation

Description:

     ‘table’ uses the cross-classifying factors to build a contingency
     table of the counts at each combination of factor levels.

Usage:

     table(..., exclude = if (useNA == "no") c(NA, NaN), useNA = c("no",
         "ifany", "always"), dnn = list.names(...), deparse.level = 1)
     
     as.table(x, ...)
     is.table(x)
     
     ## S3 method for class 'table'
     as.data.frame(x, row.names = NULL, ...,
                   responseName = "Freq", stringsAsFactors = TRUE,
                   sep = "", base = list(LETTERS))
     
Arguments:

     ...: one or more objects which can be interpreted as factors
          (including character strings), or a list (or data frame)
          whose components can be so interpreted.  (For ‘as.table’,
          arguments passed to specific methods; for ‘as.data.frame’,
          unused.)

 exclude: levels to remove for all factors in ‘...’.  If set to ‘NULL’,
          it implies ‘useNA = "always"’.  See ‘Details’ for its
          interpretation for non-factor arguments.

   useNA: whether to include ‘NA’ values in the table.  See ‘Details’.

     dnn: the names to be given to the dimensions in the result (the
          _dimnames names_).

deparse.level: controls how the default ‘dnn’ is constructed.  See
          ‘Details’.

       x: an arbitrary R object, or an object inheriting from class
          ‘"table"’ for the ‘as.data.frame’ method. Note that
          ‘as.data.frame.table(x, *)’ may be called explicitly for
          non-table ‘x’ for “reshaping” ‘array’s.

row.names: a character vector giving the row names for the data frame.

responseName: The name to be used for the column of table entries,
          usually counts.

stringsAsFactors: logical: should the classifying factors be returned
          as factors (the default) or character vectors?

sep, base: passed to ‘provideDimnames’.

> tit 
   Class    Sex   Age Survived Freq
1    1st   Male Child       No    0
2    2nd   Male Child       No    0
3    3rd   Male Child       No   35
4   Crew   Male Child       No    0
5    1st Female Child       No    0
6    2nd Female Child       No    0
7    3rd Female Child       No   17
8   Crew Female Child       No    0
9    1st   Male Adult       No  118
10   2nd   Male Adult       No  154
11   3rd   Male Adult       No  387
12  Crew   Male Adult       No  670
13   1st Female Adult       No    4
14   2nd Female Adult       No   13
15   3rd Female Adult       No   89
16  Crew Female Adult       No    3
17   1st   Male Child      Yes    5
18   2nd   Male Child      Yes   11
19   3rd   Male Child      Yes   13
20  Crew   Male Child      Yes    0
21   1st Female Child      Yes    1
22   2nd Female Child      Yes   13
23   3rd Female Child      Yes   14
24  Crew Female Child      Yes    0
25   1st   Male Adult      Yes   57
26   2nd   Male Adult      Yes   14
27   3rd   Male Adult      Yes   75
28  Crew   Male Adult      Yes  192
29   1st Female Adult      Yes  140
30   2nd Female Adult      Yes   80
31   3rd Female Adult      Yes   76
32  Crew Female Adult      Yes   20
> temp = as.data.frame.table(Titanic) 
> temp$Survived[1] 
[1] No
Levels: No Yes
> temp$Survived[1] == No 
Error: object 'No' not found
> temp$Survived[1] == "No" 
[1] TRUE
> temp[temp$Survived == "No"] 
Error in `[.data.frame`(temp, temp$Survived == "No") : 
  undefined columns selected
> temp[temp$Survived == "No",]
   Class    Sex   Age Survived Freq
1    1st   Male Child       No    0
2    2nd   Male Child       No    0
3    3rd   Male Child       No   35
4   Crew   Male Child       No    0
5    1st Female Child       No    0
6    2nd Female Child       No    0
7    3rd Female Child       No   17
8   Crew Female Child       No    0
9    1st   Male Adult       No  118
10   2nd   Male Adult       No  154
11   3rd   Male Adult       No  387
12  Crew   Male Adult       No  670
13   1st Female Adult       No    4
14   2nd Female Adult       No   13
15   3rd Female Adult       No   89
16  Crew Female Adult       No    3
> temp[temp$Survived == "Yes",]
   Class    Sex   Age Survived Freq
17   1st   Male Child      Yes    5
18   2nd   Male Child      Yes   11
19   3rd   Male Child      Yes   13
20  Crew   Male Child      Yes    0
21   1st Female Child      Yes    1
22   2nd Female Child      Yes   13
23   3rd Female Child      Yes   14
24  Crew Female Child      Yes    0
25   1st   Male Adult      Yes   57
26   2nd   Male Adult      Yes   14
27   3rd   Male Adult      Yes   75
28  Crew   Male Adult      Yes  192
29   1st Female Adult      Yes  140
30   2nd Female Adult      Yes   80
31   3rd Female Adult      Yes   76
32  Crew Female Adult      Yes   20
> tit = temp[temp$Survived == "Yes",c("Class","Sex","Freq")] 
> tit 
   Class    Sex Freq
17   1st   Male    5
18   2nd   Male   11
19   3rd   Male   13
20  Crew   Male    0
21   1st Female    1
22   2nd Female   13
23   3rd Female   14
24  Crew Female    0
25   1st   Male   57
26   2nd   Male   14
27   3rd   Male   75
28  Crew   Male  192
29   1st Female  140
30   2nd Female   80
31   3rd Female   76
32  Crew Female   20
> names(tit) = c("Class","Sex","Survived") 
> tit 
   Class    Sex Survived
17   1st   Male        5
18   2nd   Male       11
19   3rd   Male       13
20  Crew   Male        0
21   1st Female        1
22   2nd Female       13
23   3rd Female       14
24  Crew Female        0
25   1st   Male       57
26   2nd   Male       14
27   3rd   Male       75
28  Crew   Male      192
29   1st Female      140
30   2nd Female       80
31   3rd Female       76
32  Crew Female       20
> names(tit) = c("Class","Sex","Survived")tit$Died = temp[temp$Survived == "No",c("Class","Sex","Freq")] 
Error: unexpected symbol in "names(tit) = c("Class","Sex","Survived")tit"
> tit$Died = temp[temp$Survived == "No",c("Class","Sex","Freq")] 
> tit 
   Class    Sex Survived Died.Class Died.Sex Died.Freq
17   1st   Male        5        1st     Male         0
18   2nd   Male       11        2nd     Male         0
19   3rd   Male       13        3rd     Male        35
20  Crew   Male        0       Crew     Male         0
21   1st Female        1        1st   Female         0
22   2nd Female       13        2nd   Female         0
23   3rd Female       14        3rd   Female        17
24  Crew Female        0       Crew   Female         0
25   1st   Male       57        1st     Male       118
26   2nd   Male       14        2nd     Male       154
27   3rd   Male       75        3rd     Male       387
28  Crew   Male      192       Crew     Male       670
29   1st Female      140        1st   Female         4
30   2nd Female       80        2nd   Female        13
31   3rd Female       76        3rd   Female        89
32  Crew Female       20       Crew   Female         3
> temp = as.data.frame.table(Titanic) # Make into a categorized data frame
> tit = temp[temp$Survived == "Yes",c("Class","Sex","Freq")] # Count the the survived passengers
> tit$Died = temp[temp$Survived == "No",c("Freq")]
> names(tit) = c("Class","Sex","Survived") # Rename Freq to Survived 
> tit 
   Class    Sex Survived  NA
17   1st   Male        5   0
18   2nd   Male       11   0
19   3rd   Male       13  35
20  Crew   Male        0   0
21   1st Female        1   0
22   2nd Female       13   0
23   3rd Female       14  17
24  Crew Female        0   0
25   1st   Male       57 118
26   2nd   Male       14 154
27   3rd   Male       75 387
28  Crew   Male      192 670
29   1st Female      140   4
30   2nd Female       80  13
31   3rd Female       76  89
32  Crew Female       20   3
> temp = as.data.frame.table(Titanic) # Make into a categorized data frame
> tit = temp[temp$Survived == "Yes",c("Class","Sex","Freq")] # extract the the survived passengers
> tit$Died = temp[temp$Survived == "No",c("Freq")] # extract the dead passengers
> names(tit) = c("Class","Sex","Survived","Died") # Rename Freq to Survived and Died
> tit$Total = tit$Survived + tit$Died 
> tit 
   Class    Sex Survived Died Total
17   1st   Male        5    0     5
18   2nd   Male       11    0    11
19   3rd   Male       13   35    48
20  Crew   Male        0    0     0
21   1st Female        1    0     1
22   2nd Female       13    0    13
23   3rd Female       14   17    31
24  Crew Female        0    0     0
25   1st   Male       57  118   175
26   2nd   Male       14  154   168
27   3rd   Male       75  387   462
28  Crew   Male      192  670   862
29   1st Female      140    4   144
30   2nd Female       80   13    93
31   3rd Female       76   89   165
32  Crew Female       20    3    23
> temp = as.data.frame.table(Titanic) # Make into a categorized data frame
> tit = temp[temp$Survived == "Yes",c("Class","Sex","Age","Freq")] # extract the the survived passengers
> tit$Died = temp[temp$Survived == "No",c("Freq")] # extract the dead passengers
> names(tit) = c("Class","Sex","Age","Survived","Died") # Rename Freq to Survived and Died
> tit$Total = tit$Survived + tit$Died 
> tit 
   Class    Sex   Age Survived Died Total
17   1st   Male Child        5    0     5
18   2nd   Male Child       11    0    11
19   3rd   Male Child       13   35    48
20  Crew   Male Child        0    0     0
21   1st Female Child        1    0     1
22   2nd Female Child       13    0    13
23   3rd Female Child       14   17    31
24  Crew Female Child        0    0     0
25   1st   Male Adult       57  118   175
26   2nd   Male Adult       14  154   168
27   3rd   Male Adult       75  387   462
28  Crew   Male Adult      192  670   862
29   1st Female Adult      140    4   144
30   2nd Female Adult       80   13    93
31   3rd Female Adult       76   89   165
32  Crew Female Adult       20    3    23
> summary(glm( c(Survived,Died)~Age+Class+Sex,data=tit,family=binomial)) 
Error in model.frame.default(formula = c(Survived, Died) ~ Age + Class +  : 
  variable lengths differ (found for 'Age')
> tit$Age 
 [1] Child Child Child Child Child Child Child Child Adult Adult Adult Adult
[13] Adult Adult Adult Adult
Levels: Child Adult
> summary(glm( c(Survived,Died)~Age+Class+Sex,data=tit,family=binomial)) 
Error in model.frame.default(formula = c(Survived, Died) ~ Age + Class +  : 
  variable lengths differ (found for 'Age')
> summary(glm( c(tit$Survived,tit$Died)~tit$Age+tit$Class+tit$Sex,family=binomial))
Error in model.frame.default(formula = c(tit$Survived, tit$Died) ~ tit$Age +  : 
  variable lengths differ (found for 'tit$Age')
> help(glm) 
glm                   package:stats                    R Documentation

Fitting Generalized Linear Models

Description:

     ‘glm’ is used to fit generalized linear models, specified by
     giving a symbolic description of the linear predictor and a
     description of the error distribution.

Usage:

     glm(formula, family = gaussian, data, weights, subset,
         na.action, start = NULL, etastart, mustart, offset,
         control = list(...), model = TRUE, method = "glm.fit",
         x = FALSE, y = TRUE, contrasts = NULL, ...)
     
     glm.fit(x, y, weights = rep(1, nobs),
             start = NULL, etastart = NULL, mustart = NULL,
             offset = rep(0, nobs), family = gaussian(),
             control = list(), intercept = TRUE)
     
     ## S3 method for class 'glm'
     weights(object, type = c("prior", "working"), ...)
     
Arguments:

 formula: an object of class ‘"formula"’ (or one that can be coerced to
          that class): a symbolic description of the model to be
          fitted.  The details of model specification are given under
          ‘Details’.

  family: a description of the error distribution and link function to
          be used in the model. This can be a character string naming a
          family function, a family function or the result of a call to
          a family function.  (See ‘family’ for details of family
          functions.)

    data: an optional data frame, list or environment (or object
          coercible by ‘as.data.frame’ to a data frame) containing the
          variables are takethe environment from which ‘glm’ is called.

 weights: an optional vector of ‘prior weights’ to be used in the
          fitting process.  Should be ‘NULL’ or a numeric vector.

  subset: an optional vector specifying a subset of observations to be
          used in the fitting process.

na.action: a function which indicates what should happen when the data
          contain ‘NA’s.  The default is set by the ‘na.action’ setting
          of ‘options’, and is ‘na.fail’ if that is unset.  The
:ther possible value
          is ‘NULL’, no action.  Value ‘na.exclude’ can be useful.

   start: starting values for the parameters in the linear predictor.

etastart: starting values for the linear predictor.

 mustart: starting values for the vector of means.

  offset: this can be used to specify an _a priori_ known component to
          be included in the linear predictor during fitting.  This
: equal to the
         d
          in the formula instead or as well, and if more than one is
          specified their sum is used.  See ‘model.offset’.

 control: a list of parameters for controlling the fitting process.
          For ‘glm.fit’ this is passed to ‘glm.control’.

   model: a logical value indicating whether _model frame_ should be
          included as a component of the returned value.

  method: the method to be used in fitting the model.  The default
          method ‘"glm.fit"’ uses iteratively reweighted least squares
          (IWLS): the alternative ‘"model.frame"’ returns the model
          frame and does no fitting.

          User-supplied fitting functions can be supplied either as a
          function or a character string naming a function, with a
          function which takes the same arguments as ‘glm.fit’.  If
          specified as a character string it is looked up from within
          the ‘stats’ namespace.

    x, y: For ‘glm’: logical values indicating whether the response
          vector and model matrix used in the fitting process should be
          returned as components of the returned value.

          For ‘glm.fit’: ‘x’ is a design matrix of dimension ‘n * p’,
          and ‘y’ is a vector of observations of length ‘n’.

contrasts: an optional list. See the ‘contrasts.arg’ of
          ‘model.matrix.default’.

intercept: logical. Should an intercept be included in the _null_
          model?

  object: an object inheriting from class ‘"glm"’.

    type: character, partial matching allowed.  Type of weights to
          extract from the fitted model object.

     ...: For ‘glm’: arguments to be used to form the default ‘control’
          argument if it is not supplied directly.

          For ‘weights’: further arguments passed to or from other
          methods.

> Age 
Error: object 'Age' not found
> attach(tit) 
> Age 
 [1] Child Child Child Child Child Child Child Child Adult Adult Adult Adult
[13] Adult Adult Adult Adult
Levels: Child Adult
> Survived 
 [1]   5  11  13   0   1  13  14   0  57  14  75 192 140  80  76  20
> Died 
 [1]   0   0  35   0   0   0  17   0 118 154 387 670   4  13  89   3
> Sex 
 [1] Male   Male   Male   Male   Female Female Female Female Male   Male  
[11] Male   Male   Female Female Female Female
Levels: Male Female
> Class 
 [1] 1st  2nd  3rd  Crew 1st  2nd  3rd  Crew 1st  2nd  3rd  Crew 1st  2nd  3rd 
[16] Crew
Levels: 1st 2nd 3rd Crew
> factor(Age) 
 [1] Child Child Child Child Child Child Child Child Adult Adult Adult Adult
[13] Adult Adult Adult Adult
Levels: Child Adult
> form = c(Survived,Died) ~ Age + Class + Sex 
> form 
c(Survived, Died) ~ Age + Class + Sex
> glm(form,family=binomial) 
Error in model.frame.default(formula = form, drop.unused.levels = TRUE) : 
  variable lengths differ (found for 'Age')
> glm(c(Survived,Died) ~ factor(Age) + factor(Class) + factor(Sex),family=binomial)
Error in model.frame.default(formula = c(Survived, Died) ~ factor(Age) +  : 
  variable lengths differ (found for 'factor(Age)')
> c(Survived,Died) 
 [1]   5  11  13   0   1  13  14   0  57  14  75 192 140  80  76  20   0   0  35
[20]   0   0   0  17   0 118 154 387 670   4  13  89   3
> cbind(Survived,Died) 
      Survived Died
 [1,]        5    0
 [2,]       11    0
 [3,]       13   35
 [4,]        0    0
 [5,]        1    0
 [6,]       13    0
 [7,]       14   17
 [8,]        0    0
 [9,]       57  118
[10,]       14  154
[11,]       75  387
[12,]      192  670
[13,]      140    4
[14,]       80   13
[15,]       76   89
[16,]       20    3
> summary(glm(cbind(Survived,Died) ~ Age + Class + Sex)) 
Error in x[good, , drop = FALSE] : (subscript) logical subscript too long
> resp = cbind(Survived,Died) 
> summary(glm(resp ~ Age + Class + Sex)) 
Error in x[good, , drop = FALSE] : (subscript) logical subscript too long
> resp 
      Survived Died
 [1,]        5    0
 [2,]       11    0
 [3,]       13   35
 [4,]        0    0
 [5,]        1    0
 [6,]       13    0
 [7,]       14   17
 [8,]        0    0
 [9,]       57  118
[10,]       14  154
[11,]       75  387
[12,]      192  670
[13,]      140    4
[14,]       80   13
[15,]       76   89
[16,]       20    3
> summary(glm(resp ~ Age + Class + Sex,family=binomial))
 
Call:
glm(formula = resp ~ Age + Class + Sex, family = binomial)

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-4.1356  -0.7004   0.3039   2.2401   4.3833  

Coefficients:
            Estimate Std. Error z value Pr(>|z|)    
(Intercept)   0.6853     0.2730   2.510   0.0121 *  
AgeAdult     -1.0615     0.2440  -4.350 1.36e-05 ***
Class2nd     -1.0181     0.1960  -5.194 2.05e-07 ***
Class3rd     -1.7778     0.1716 -10.362  < 2e-16 ***
ClassCrew    -0.8577     0.1573  -5.451 5.00e-08 ***
SexFemale     2.4201     0.1404  17.236  < 2e-16 ***
---
Signif. codes:  0 ‘
                   (Dispersion parameter for binomial family taken to be 1)

    Null deviance: 671.96  on 13  degrees of freedom
Residual deviance: 112.57  on  8  degrees of freedom
AIC: 171.19

Number of Fisher Scoring iterations: 5

> glm.1 = glm(resp ~ Age + Class + Sex,family=binomial)
> residuals(glm.1,"pearson") 
         1          2          3          4          5          6          7 
 1.5873393  3.9170366  0.3143122  0.0000000  0.2116778  1.2697655 -4.6353568 
         8          9         10         11         12         13         14 
 0.0000000 -2.1898097 -3.7479635  4.1112729 -0.1940344  3.2727032  2.7158675 
        15         16 
-2.7349623  1.1726395 
> residuals(glm.1,"deviance") 
         1          2          3          4          5          6          7 
 2.0201019  4.3832530  0.3116936  0.0000000  0.2960833  1.7434963 -4.1272775 
         8          9         10         11         12         13         14 
 0.0000000 -2.2186924 -4.1355521  3.8349477 -0.1943169  3.8566494  2.8999600 
        15         16 
-2.7195669  1.2507319 
> glm.1$deviance 
glm.1$deviance
> glm.1$deviance 
[1] 112.5666
> glm.1$ 
glm.1$coefficients       glm.1$R                  glm.1$linear.predictors  glm.1$iter               glm.1$df.null            glm.1$model              glm.1$data               glm.1$contrasts          
glm.1$residuals          glm.1$rank               glm.1$deviance           glm.1$weights            glm.1$y                  glm.1$call               glm.1$offset             glm.1$xlevels            
glm.1$fitted.values      glm.1$qr                 glm.1$aic                glm.1$prior.weights      glm.1$converged          glm.1$formula            glm.1$control            
glm.1$effects            glm.1$family             glm.1$null.deviance      glm.1$df.residual        glm.1$boundary           glm.1$terms              glm.1$method             
> glm.1$null.deviance 
[1] 671.9622
> glm.1$null.deviance - glm1$full 
glm1$full
> glm.1$null.deviance - glm1$devi 
glm1$devi
> glm.1$null.deviance - glm.1$deviance 
[1] 559.3956
> tit 
   Class    Sex   Age Survived Died Total
17   1st   Male Child        5    0     5
18   2nd   Male Child       11    0    11
19   3rd   Male Child       13   35    48
20  Crew   Male Child        0    0     0
21   1st Female Child        1    0     1
22   2nd Female Child       13    0    13
23   3rd Female Child       14   17    31
24  Crew Female Child        0    0     0
25   1st   Male Adult       57  118   175
26   2nd   Male Adult       14  154   168
27   3rd   Male Adult       75  387   462
28  Crew   Male Adult      192  670   862
29   1st Female Adult      140    4   144
30   2nd Female Adult       80   13    93
31   3rd Female Adult       76   89   165
32  Crew Female Adult       20    3    23
> sort(tit,"Age") 
Error in sort(tit, "Age") : 
  'decreasing' must be a length-1 logical vector.
Did you intend to set 'partial'?
> help(sort) 
sort                   package:base                    R Documentation

Sorting or Ordering Vectors

Description:

     Sort (or _order_) a vector or factor (partially) into ascending or
     descending order.  For ordering along more than one variable,
     e.g., for sorting data frames, see ‘order’.

Usage:

     sort(x, decreasing = FALSE, ...)
     
     ## Default S3 method:
     sort(x, decreasing = FALSE, na.last = NA, ...)
     
     sort.int(x, partial = NULL, na.last = NA, decreasing = FALSE,
              method = c("shell", "quick"), index.return = FALSE)
     
Arguments:

       x: for ‘sort’ an R object with a class or a numeric, complex,
          character or logical vector.  For ‘sort.int’, a numeric,
          complex, character or logical vector, or a factor.

decreasing: logical.  Should the sort be increasing or decreasing?  Not
          available for partial sorting.

     ...: arguments to be passed to or from methods or (for the default
          methods and objects without a class) to ‘sort.int’.

          values in the data are put last; if ‘FALSE’, they are put
          first; if ‘NA’, they are removed.

 partial: ‘NULL’ or a vector of indices for partial sorting.

  method: character string specifying the algorithm used.  Not
          available for partial sorting.

index.return: logical indicating if the ordering index vector should be
          returned as well; this is only available for a few cases, the
          default ‘na.last = NA’ and full sorting of non-factors.

Details:

> sort(tit,partial=c("Age")) 
Error in `[.data.frame`(x, order(x, na.last = na.last, decreasing = decreasing)) : 
  undefined columns selected
> tit 
   Class    Sex   Age Survived Died Total
17   1st   Male Child        5    0     5
18   2nd   Male Child       11    0    11
19   3rd   Male Child       13   35    48
20  Crew   Male Child        0    0     0
21   1st Female Child        1    0     1
22   2nd Female Child       13    0    13
23   3rd Female Child       14   17    31
24  Crew Female Child        0    0     0
25   1st   Male Adult       57  118   175
26   2nd   Male Adult       14  154   168
27   3rd   Male Adult       75  387   462
28  Crew   Male Adult      192  670   862
29   1st Female Adult      140    4   144
30   2nd Female Adult       80   13    93
31   3rd Female Adult       76   89   165
32  Crew Female Adult       20    3    23
> tit 
   Class    Sex   Age Survived Died Total
17   1st   Male Child        5    0     5
18   2nd   Male Child       11    0    11
19   3rd   Male Child       13   35    48
20  Crew   Male Child        0    0     0
21   1st Female Child        1    0     1
22   2nd Female Child       13    0    13
23   3rd Female Child       14   17    31
24  Crew Female Child        0    0     0
25   1st   Male Adult       57  118   175
26   2nd   Male Adult       14  154   168
27   3rd   Male Adult       75  387   462
28  Crew   Male Adult      192  670   862
29   1st Female Adult      140    4   144
30   2nd Female Adult       80   13    93
31   3rd Female Adult       76   89   165
32  Crew Female Adult       20    3    23
> help(sort) 
sort                   package:base                    R Documentation

Sorting or Ordering Vectors

Description:

     Sort (or _order_) a vector or factor (partially) into ascending or
     descending order.  For ordering along more than one variable,
     e.g., for sorting data frames, see ‘order’.

Usage:

     sort(x, decreasing = FALSE, ...)
     
     ## Default S3 method:
     sort(x, decreasing = FALSE, na.last = NA, ...)
     
     sort.int(x, partial = NULL, na.last = NA, decreasing = FALSE,
              method = c("shell", "quick"), index.return = FALSE)
     
Arguments:

       x: for ‘sort’ an R object with a class or a numeric, complex,
          character or logical vector.  For ‘sort.int’, a numeric,
          complex, character or logical vector, or a factor.
...skipping...
sort                   package:base                    R Documentation

Sorting or Ordering Vectors

Description:

     Sort (or _order_) a vector or factor (partially) into ascending or
     descending order.  For ordering along more than one variable,
     e.g., 

     sort(x, decreasing = FALSE, ...)
     
     ## Default S3 method:
     sort(x, decreasing = FALSE, na.last = NA, ...)
     
     sort.int(x, partial = NULL, na.last = NA, decreasing = FALSE,
              method = c("shell", "quick"), index.return = FALSE)
     
Arguments:

       x: for ‘sort’ an R object with a class or a numeric, complex,
          character or logical vector.  For ‘sort.int’, a numeric,
          complex, character or logical vector, or a factor.
> help(order) 
order                   package:base                   R Documentation

Ordering Permutation

Description:

     ‘order’ returns a permutation which rearranges its first argument
     into ascending or descending order, breaking ties by further
     arguments. ‘sort.list’ is the same, using only one argument.
     See the examples for how to use these functions to sort data
     frames, etc.

Usage:

     order(..., na.last = TRUE, decreasing = FALSE)
     
     sort.list(x, partial = NULL, na.last = TRUE, decreasing = FALSE,
               method = c("shell", "quick", "radix"))
     
Arguments:

     ...: a sequence of numeric, complex, character or logical vectors,
          all of the same length, or a classed R object.

       x: an atomic vector.
> tit[order(tit$Age),] 
   Class    Sex   Age Survived Died Total
17   1st   Male Child        5    0     5
18   2nd   Male Child       11    0    11
19   3rd   Male Child       13   35    48
20  Crew   Male Child        0    0     0
21   1st Female Child        1    0     1
22   2nd Female Child       13    0    13
23   3rd Female Child       14   17    31
24  Crew Female Child        0    0     0
25   1st   Male Adult       57  118   175
26   2nd   Male Adult       14  154   168
27   3rd   Male Adult       75  387   462
28  Crew   Male Adult      192  670   862
29   1st Female Adult      140    4   144
30   2nd Female Adult       80   13    93
31   3rd Female Adult       76   89   165
32  Crew Female Adult       20    3    23
> tit$Age = factor(Age,levels(Age)[2,1],with=tit) 
Error in factor(Age, levels(Age)[2, 1], with = tit) : 
  unused argument (with = tit)
> tit$Age = factor(tit$Age,levels(tit$Age)[2,1])
Error in levels(tit$Age)[2, 1] : incorrect number of dimensions
> levels(tit$Age) 
[1] "Child" "Adult"
> levels(tit$Age)[2,1] 
Error in levels(tit$Age)[2, 1] : incorrect number of dimensions
> tit$Age = factor(tit$Age,levels(tit$Age)[c(2,1)])
> tit 
   Class    Sex   Age Survived Died Total
17   1st   Male Child        5    0     5
18   2nd   Male Child       11    0    11
19   3rd   Male Child       13   35    48
20  Crew   Male Child        0    0     0
21   1st Female Child        1    0     1
22   2nd Female Child       13    0    13
23   3rd Female Child       14   17    31
24  Crew Female Child        0    0     0
25   1st   Male Adult       57  118   175
26   2nd   Male Adult       14  154   168
27   3rd   Male Adult       75  387   462
28  Crew   Male Adult      192  670   862
29   1st Female Adult      140    4   144
30   2nd Female Adult       80   13    93
31   3rd Female Adult       76   89   165
32  Crew Female Adult       20    3    23
> levels(tit$Age) 
[1] "Adult" "Child"
> levels(tit$Sex) 
[1] "Male"   "Female"
> tit$Sex = factor(tit$Sex,levels(tit$Sex)[c(2,1)])
> summary(glm(cbind(Survived,Died)~Age+Class+Sex,family=binomial,with=tit)) 
Error in glm.control(with = list(Class = c(1L, 2L, 3L, 4L, 1L, 2L, 3L,  : 
  unused argument (with = list(Class = c(1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4), Sex = c(2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1), Age = c(2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1), Survived = c(5, 11, 13,
 0, 1, 13, 14, 0, 57, 14, 75, 192, 140, 80, 76, 20), Died = c(0, 0, 35, 0, 0, 0, 17, 0, 118, 154, 387, 670, 4, 13, 89, 3), Total = c(5, 11, 48, 0, 1, 13, 31, 0, 175, 168, 462, 862, 144, 93, 165, 23)))
> resp = cbind(Survived,Died) 
> detach(tit) 
> attach(tit) 
> summary(glm(cbind(Survived,Died)~Age+Class+Sex,family=binomial))

Call:
glm(formula = cbind(Survived, Died) ~ Age + Class + Sex, family = binomial)

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-4.1356  -0.7004   0.3039   2.2401   4.3833  

Coefficients:
            Estimate Std. Error z value Pr(>|z|)    
(Intercept)   2.0438     0.1679  12.171  < 2e-16 ***
AgeChild      1.0615     0.2440   4.350 1.36e-05 ***
Class2nd     -1.0181     0.1960  -5.194 2.05e-07 ***
Class3rd     -1.7778     0.1716 -10.362  < 2e-16 ***
ClassCrew    -0.8577     0.1573  -5.451 5.00e-08 ***
SexMale      -2.4201     0.1404 -17.236  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 parameter for binomial family taken to be 1)

    Null deviance: 671.96  on 13  degrees of freedom
Residual deviance: 112.57  on  8  degrees of freedom
AIC: 171.19

Number of Fisher Scoring iterations: 5

>  
