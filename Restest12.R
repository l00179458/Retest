
> setwd("C:\\Users\\abhil\\OneDrive\\Desktop\\drivers")
> Retest_data <- read.csv("Retest(1).csv")
> > str(Retest_data)
Error: unexpected '>' in ">"
> str(Retest_data)
'data.frame':	88875 obs. of  13 variables:
  $ ID                  : int  1 2 3 4 5 6 7 8 9 10 ...
$ country             : chr  "us" "" "gb" "us" ...
$ state               : chr  "tx" "tx" "" "tx" ...
$ city                : chr  "san marcos" "lackland afb" "chester (uk/england)" "edna" ...
$ shape               : chr  "cylinder" "light" "circle" "circle" ...
$ duration..seconds.  : chr  "2700" "7200" "20" "20" ...
$ duration..hours.min.: chr  "45 minutes" "1-2 hrs" "20 seconds" "1/2 hour" ...
$ comments            : chr  "This event took place in early fall around 1949-50. It occurred after a Boy Scout meeting in the Baptist Church"| __truncated__ "1949 Lackland AFB&#44 TX.  Lights racing across the sky &amp; making 90 degree turns on a dime." "Green/Orange circular disc over Chester&#44 England" "My older brother and twin sister were leaving the only Edna theater at about 9 PM&#44...we had our bikes and I "| __truncated__ ...
$ dateandtime         : chr  "4/27/2004" "12/16/2005" "1/21/2008" "1/17/2004" ...
$ value1              : num  -97.94 -98.58 -2.92 -96.65 -157.8 ...
$ value2              : chr  "29.8830556" "29.38421" "53.2" "28.9783333" ...
$ X                   : logi  NA NA NA NA NA NA ...
$ X.1                 : int  NA NA NA NA NA NA NA NA NA NA ...
> head(Retest_data, n = 15)
ID country state                 city    shape
1   1      us    tx           san marcos cylinder
2   2            tx         lackland afb    light
3   3      gb       chester (uk/england)   circle
4   4      us    tx                 edna   circle
5   5      us    hi              kaneohe    light
6   6      us    tn              bristol   sphere
7   7      gb         penarth (uk/wales)   circle
8   8      us    ct              norwalk     disk
9   9      us    al            pell city     disk
10 10      us    fl             live oak     disk
11 11      us    ca            hawthorne   circle
12 12      us    nc              brevard fireball
13 13      us    ny             bellmore     disk
14 14      us    ky           manchester  unknown
15 15      us    nc            lexington     oval
duration..seconds. duration..hours.min.
1                2700           45 minutes
2                7200              1-2 hrs
3                  20           20 seconds
4                  20             1/2 hour
5                 900           15 minutes
6                 300            5 minutes
7                 180         about 3 mins
8                1200           20 minutes
9                 180           3  minutes
10                120      several minutes
11                300               5 min.
12                180            3 minutes
13               1800              30 min.
14                180            3 minutes
15                 30           30 seconds
comments
1                     This event took place in early fall around 1949-50. It occurred after a Boy Scout meeting in the Baptist Church. The Baptist Church sit
2                                                             1949 Lackland AFB&#44 TX.  Lights racing across the sky &amp; making 90 degree turns on a dime.
  3                                                                                                         Green/Orange circular disc over Chester&#44 England
  4                  My older brother and twin sister were leaving the only Edna theater at about 9 PM&#44...we had our bikes and I took a different route home
  5  AS a Marine 1st Lt. flying an FJ4B fighter/attack aircraft on a solo night exercise&#44 I was at 50&#44000&#39 in a &quot;clean&quot; aircraft (no ordinan
  6                  My father is now 89 my brother 52 the girl with us now 51 myself 49 and the other fellow which worked with my father if he&#39s still livi
  7                          penarth uk  circle  3mins  stayed 30ft above me for 3 mins slowly moved of and then with the blink of the eye the speed was unreal
8                                           A bright orange color changing to reddish color disk/saucer was observed hovering above power transmission lines.
9                                     Strobe Lighted disk shape object observed close&#44 at low speeds&#44 and low altitude in Oct 1966 in Pell City Alabama
  10                                                           Saucer zaps energy from powerline as my pregnant mother receives mental signals not to pass info
11                                                            ROUND &#44 ORANGE &#44 WITH WHAT I WOULD SAY WAS POLISHED METAL OF SOME KIND AROUND THE EDGES .
  12                                                              silent red /orange mass of energy floated by three of us in western North Carolina in the 60s
13                                                                                                                   silver disc seen by family and neighbors
14                                                                               Slow moving&#44 silent craft accelerated at an unbelievable angle and speed.
  15                                                                                         green oval shaped light over my local church&#44power lines down..
  dateandtime      value1     value2  X X.1
1    4/27/2004  -97.941111 29.8830556 NA  NA
2   12/16/2005  -98.581082   29.38421 NA  NA
3    1/21/2008   -2.916667       53.2 NA  NA
4    1/17/2004  -96.645833 28.9783333 NA  NA
5    1/22/2004 -157.803611 21.4180556 NA  NA
6    4/27/2007  -82.188889     36.595 NA  NA
7    2/14/2006   -3.180000  51.434722 NA  NA
8   10/02/1999  -73.408333    41.1175 NA  NA
9    3/19/2009  -86.286111 33.5861111 NA  NA
10  05/11/2005  -82.984167 30.2947222 NA  NA
11  10/31/2003 -118.351667 33.9163889 NA  NA
12  06/12/2008  -82.734444 35.2333333 NA  NA
13  05/11/2000  -73.527500 40.6686111 NA  NA
14   2/14/2008  -83.761944 37.1536111 NA  NA
15   2/14/2010  -80.253611 35.8238889 NA  NA
> num_rows <- nrow(Retest_data)
> print(num_rows)
[1] 88875
> Retest_data$dateandtime <- as.Date(Retest_data$dateandtime, format="%m/%d/%Y")
> str(Retest_data)
'data.frame':	88875 obs. of  13 variables:
  $ ID                  : int  1 2 3 4 5 6 7 8 9 10 ...
$ country             : chr  "us" "" "gb" "us" ...
$ state               : chr  "tx" "tx" "" "tx" ...
$ city                : chr  "san marcos" "lackland afb" "chester (uk/england)" "edna" ...
$ shape               : chr  "cylinder" "light" "circle" "circle" ...
$ duration..seconds.  : chr  "2700" "7200" "20" "20" ...
$ duration..hours.min.: chr  "45 minutes" "1-2 hrs" "20 seconds" "1/2 hour" ...
$ comments            : chr  "This event took place in early fall around 1949-50. It occurred after a Boy Scout meeting in the Baptist Church"| __truncated__ "1949 Lackland AFB&#44 TX.  Lights racing across the sky &amp; making 90 degree turns on a dime." "Green/Orange circular disc over Chester&#44 England" "My older brother and twin sister were leaving the only Edna theater at about 9 PM&#44...we had our bikes and I "| __truncated__ ...
$ dateandtime         : Date, format:  ...
$ value1              : num  -97.94 -98.58 -2.92 -96.65 -157.8 ...
$ value2              : chr  "29.8830556" "29.38421" "53.2" "28.9783333" ...
$ X                   : logi  NA NA NA NA NA NA ...
$ X.1                 : int  NA NA NA NA NA NA NA NA NA NA ...
> # Display current variable names
  > names(Retest_data)
[1] "ID"                   "country"
[3] "state"                "city"
[5] "shape"                "duration..seconds."
[7] "duration..hours.min." "comments"
[9] "dateandtime"          "value1"
[11] "value2"               "X"
[13] "X.1"
>
  > # Modify variable names
  > names(Retest_data)[names(Retest_data) == "dateandtime"] <- "DateTime"
> names(Retest_data)[names(Retest_data) == "duration (hours/min)"] <- "TotalDuration"
> names(Retest_data)[names(Retest_data) == "duration (seconds)"] <- "DurationSeconds"
> names(Retest_data)[names(Retest_data) == "value1"] <- "MeanValue_1"
> names(Retest_data)[names(Retest_data) == "Value2"] <- "MeanValue_2"
>
  > # Display updated variable names
  > names(Retest_data)
[1] "ID"                   "country"
[3] "state"                "city"
[5] "shape"                "duration..seconds."
[7] "duration..hours.min." "comments"
[9] "DateTime"             "MeanValue_1"
[11] "value2"               "X"
[13] "X.1"
>
  > # Display current variable names
  > names(Retest_data)
[1] "ID"                   "country"
[3] "state"                "city"
[5] "shape"                "duration..seconds."
[7] "duration..hours.min." "comments"
[9] "DateTime"             "MeanValue_1"
[11] "value2"               "X"
[13] "X.1"
>
  > # Modify variable names
  > names(Retest_data)[names(Retest_data) == "dateandtime"] <- "DateTime"
> names(Retest_data)[names(Retest_data) == "duration (hours/min)"] <- "TotalDuration"
> names(Retest_data)[names(Retest_data) == "duration (seconds)"] <- "DurationSeconds"
> names(Retest_data)[names(Retest_data) == "value1"] <- "MeanValue_1"
> names(Retest_data)[names(Retest_data) == "Value2"] <- "MeanValue_2"
>
  > # Display updated variable names
  > names(Retest_data)
[1] "ID"                   "country"
[3] "state"                "city"
[5] "shape"                "duration..seconds."
[7] "duration..hours.min." "comments"
[9] "DateTime"             "MeanValue_1"
[11] "value2"               "X"
[13] "X.1"
>
  > # Check for missing values in the entire dataset
  > any_missing <- any(is.na(Retest_data))
>
  > # Count missing values in each variable
  > missing_per_variable <- colSums(is.na(Retest_data))
>
  > # Remove rows with missing values
  > Retest_data_clean <- na.omit(Retest_data)
>
  > # Count the number of rows deleted
  > rows_deleted <- nrow(Retest_data) - nrow(Retest_data_clean)
>
  > rows_deleted
[1] 88875
> # Sort the Retest data frame firstly by shape and then by city
  > sorted_Retest_data <- Retest_data[order(Retest_data$shape, Retest_data$city), ]
>
  > # Extract only the columns DateTime, city, country, and shape
  > sorted_Retest_data <- sorted_Retest_data[, c("DateTime", "city", "country", "shape")]
>
  > # Display the first 15 rows of data in the new data frame
  > head(sorted_Retest_data, 15)
DateTime city country shape
877      <NA>
  1712     <NA>
  1814     <NA>
  2857     <NA>
  3733     <NA>
  4755     <NA>
  5388     <NA>
  5422     <NA>
  5613     <NA>
  5848     <NA>
  6092     <NA>
  7515     <NA>
  7625     <NA>
  8892     <NA>
  9014     <NA>
  >
  > # Show the new data frame structure
  > str(sorted_Retest_data)
'data.frame':	88875 obs. of  4 variables:
  $ DateTime: Date, format:  ...
$ city    : chr  "" "" "" "" ...
$ country : chr  "" "" "" "" ...
$ shape   : chr  "" "" "" "" ...
>
  > # Using the subset() function to find entries where country equals "gb" and shape equals "disk"
  > Retest_sub <- subset(Retest_data, country == "gb" & shape == "disk")
>
  > # Count the total number of records in Retest_sub data frame
  > num_records <- nrow(Retest_sub)
> num_records
[1] 111
>
  >
