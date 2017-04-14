**Human Activity Recognition Using Smartphones Dataset Version 1.0**  
````r
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
````

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

**For each record it is provided:**
````r
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
````

**The dataset includes the following files:**
````r
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
````

_The following files are available for the train and test data. Their descriptions are equivalent._
````r
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range  
  is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in  
  standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the  
  'total_acc_x_train.txt' and   'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity  
  from the total   acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each
  window sample. The units are radians/second.  
````

**Notes:**   
```r
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
```
For more information about this dataset contact: activityrecognition@smartlab.ws

**License:**    
```
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
```

**Features**  
Feauture Info:  

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
````r
- tBodyAcc-XYZ  
- tGravityAcc-XYZ  
- tBodyAccJerk-XYZ  
- tBodyGyro-XYZ  
- tBodyGyroJerk-XYZ  
- tBodyAccMag  
- tGravityAccMag  
- tBodyAccJerkMag  
- tBodyGyroMag  
- tBodyGyroJerkMag  
- fBodyAcc-XYZ  
- fBodyAccJerk-XYZ  
- fBodyGyro-XYZ  
- fBodyAccMag  
- fBodyAccJerkMag  
- fBodyGyroMag  
- fBodyGyroJerkMag  
````

The set of variables that were estimated from these signals are: 
````r
- mean(): Mean value  
- std(): Standard deviation  
- mad(): Median absolute deviation   
- max(): Largest value in array  
- min(): Smallest value in array  
- sma(): Signal magnitude area  
- energy(): Energy measure. Sum of the squares divided by the number of values.  
- iqr(): Interquartile range   
- entropy(): Signal entropy  
- arCoeff(): Autorregresion coefficients with Burg order equal to 4  
- correlation(): correlation coefficient between two signals  
- maxInds(): index of the frequency component with largest magnitude  
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
- skewness(): skewness of the frequency domain signal   
- kurtosis(): kurtosis of the frequency domain signal   
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
- angle(): Angle between to vectors.  
````

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
````r
- gravityMean  
- tBodyAccMean  
- tBodyAccJerkMean  
- tBodyGyroMean  
- tBodyGyroJerkMean  
````
#### **Features Data Table**  
The features table list the 561 feature vector with time & frequency domain variables.  The original text  
file included only the 'indx' and 'feature' columns.  The additional column 'clearname' leverages character  
strings within feature column, using grepl() function, to assign names / codes to the different strings.  The  
'clearname' represents a concatentation of 'domain', 'category', '_', 'stat', 'axial' columns.  
- stat --> leverages string 'mean() or std(); default = 'other'  
- axial --> although generally at end of name, it was necessary to look for X within name; default = 'U'  
- domain --> based on letter 't' or 'f' at the beginning of name [pattern = "^t" or "^f"]; default = 'U'  
- category --> assigned based on the signal measure, including those derived by Fast Fourier Transform (FFT)   

````r
indx      	feature                         stat        axial  domain	category          clearname                     
1  	tBodyAcc-mean()-X                   	mean      	X    	t     	bodyacc        	tbodyacc_meanX                
2  	tBodyAcc-mean()-Y                   	mean      	Y    	t     	bodyacc        	tbodyacc_meanY                
3  	tBodyAcc-mean()-Z                   	mean      	Z    	t     	bodyacc        	tbodyacc_meanZ                
4  	tBodyAcc-std()-X                    	std       	X    	t     	bodyacc        	tbodyacc_stdX                 
5  	tBodyAcc-std()-Y                    	std       	Y    	t     	bodyacc        	tbodyacc_stdY                 
6  	tBodyAcc-std()-Z                    	std       	Z    	t     	bodyacc        	tbodyacc_stdZ                 
7  	tBodyAcc-mad()-X                    	other     	X    	t     	bodyacc        	tbodyacc_otherX               
8  	tBodyAcc-mad()-Y                    	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
9  	tBodyAcc-mad()-Z                    	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
10 	tBodyAcc-max()-X                    	other     	X    	t     	bodyacc        	tbodyacc_otherX               
11 	tBodyAcc-max()-Y                    	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
12 	tBodyAcc-max()-Z                    	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
13 	tBodyAcc-min()-X                    	other     	X    	t     	bodyacc        	tbodyacc_otherX               
14 	tBodyAcc-min()-Y                    	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
15 	tBodyAcc-min()-Z                    	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
16 	tBodyAcc-sma()                      	other     	U    	t     	bodyacc        	tbodyacc_otherU               
17 	tBodyAcc-energy()-X                 	other     	X    	t     	bodyacc        	tbodyacc_otherX               
18 	tBodyAcc-energy()-Y                 	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
19 	tBodyAcc-energy()-Z                 	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
20 	tBodyAcc-iqr()-X                    	other     	X    	t     	bodyacc        	tbodyacc_otherX               
21 	tBodyAcc-iqr()-Y                    	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
22 	tBodyAcc-iqr()-Z                    	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
23 	tBodyAcc-entropy()-X                	other     	X    	t     	bodyacc        	tbodyacc_otherX               
24 	tBodyAcc-entropy()-Y                	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
25 	tBodyAcc-entropy()-Z                	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
26 	tBodyAcc-arCoeff()-X,1              	other     	X    	t     	bodyacc        	tbodyacc_otherX               
27 	tBodyAcc-arCoeff()-X,2              	other     	X    	t     	bodyacc        	tbodyacc_otherX               
28 	tBodyAcc-arCoeff()-X,3              	other     	X    	t     	bodyacc        	tbodyacc_otherX               
29 	tBodyAcc-arCoeff()-X,4              	other     	X    	t     	bodyacc        	tbodyacc_otherX               
30 	tBodyAcc-arCoeff()-Y,1              	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
31 	tBodyAcc-arCoeff()-Y,2              	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
32 	tBodyAcc-arCoeff()-Y,3              	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
33 	tBodyAcc-arCoeff()-Y,4              	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
34 	tBodyAcc-arCoeff()-Z,1              	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
35 	tBodyAcc-arCoeff()-Z,2              	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
36 	tBodyAcc-arCoeff()-Z,3              	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
37 	tBodyAcc-arCoeff()-Z,4              	other     	Z    	t     	bodyacc        	tbodyacc_otherZ               
38 	tBodyAcc-correlation()-X,Y          	other     	X    	t     	bodyacc        	tbodyacc_otherX               
39 	tBodyAcc-correlation()-X,Z          	other     	X    	t     	bodyacc        	tbodyacc_otherX               
40 	tBodyAcc-correlation()-Y,Z          	other     	Y    	t     	bodyacc        	tbodyacc_otherY               
41 	tGravityAcc-mean()-X                	mean      	X    	t     	gravityacc     	tgravityacc_meanX             
42 	tGravityAcc-mean()-Y                	mean      	Y    	t     	gravityacc     	tgravityacc_meanY             
43 	tGravityAcc-mean()-Z                	mean      	Z    	t     	gravityacc     	tgravityacc_meanZ             
44 	tGravityAcc-std()-X                 	std       	X    	t     	gravityacc     	tgravityacc_stdX              
45 	tGravityAcc-std()-Y                 	std       	Y    	t     	gravityacc     	tgravityacc_stdY              
46 	tGravityAcc-std()-Z                 	std       	Z    	t     	gravityacc     	tgravityacc_stdZ              
47 	tGravityAcc-mad()-X                 	other     	X    	t     	gravityacc     	tgravityacc_otherX            
48 	tGravityAcc-mad()-Y                 	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
49 	tGravityAcc-mad()-Z                 	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
50 	tGravityAcc-max()-X                 	other     	X    	t     	gravityacc     	tgravityacc_otherX            
51 	tGravityAcc-max()-Y                 	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
52 	tGravityAcc-max()-Z                 	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
53 	tGravityAcc-min()-X                 	other     	X    	t     	gravityacc     	tgravityacc_otherX            
54 	tGravityAcc-min()-Y                 	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
55 	tGravityAcc-min()-Z                 	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
56 	tGravityAcc-sma()                   	other     	U    	t     	gravityacc     	tgravityacc_otherU            
57 	tGravityAcc-energy()-X              	other     	X    	t     	gravityacc     	tgravityacc_otherX            
58 	tGravityAcc-energy()-Y              	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
59 	tGravityAcc-energy()-Z              	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
60 	tGravityAcc-iqr()-X                 	other     	X    	t     	gravityacc     	tgravityacc_otherX            
61 	tGravityAcc-iqr()-Y                 	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
62 	tGravityAcc-iqr()-Z                 	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
63 	tGravityAcc-entropy()-X             	other     	X    	t     	gravityacc     	tgravityacc_otherX            
64 	tGravityAcc-entropy()-Y             	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
65 	tGravityAcc-entropy()-Z             	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
66 	tGravityAcc-arCoeff()-X,1           	other     	X    	t     	gravityacc     	tgravityacc_otherX            
67 	tGravityAcc-arCoeff()-X,2           	other     	X    	t     	gravityacc     	tgravityacc_otherX            
68 	tGravityAcc-arCoeff()-X,3           	other     	X    	t     	gravityacc     	tgravityacc_otherX            
69 	tGravityAcc-arCoeff()-X,4           	other     	X    	t     	gravityacc     	tgravityacc_otherX            
70 	tGravityAcc-arCoeff()-Y,1           	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
71 	tGravityAcc-arCoeff()-Y,2           	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
72 	tGravityAcc-arCoeff()-Y,3           	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
73 	tGravityAcc-arCoeff()-Y,4           	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
74 	tGravityAcc-arCoeff()-Z,1           	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
75 	tGravityAcc-arCoeff()-Z,2           	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
76 	tGravityAcc-arCoeff()-Z,3           	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
77 	tGravityAcc-arCoeff()-Z,4           	other     	Z    	t     	gravityacc     	tgravityacc_otherZ            
78 	tGravityAcc-correlation()-X,Y       	other     	X    	t     	gravityacc     	tgravityacc_otherX            
79 	tGravityAcc-correlation()-X,Z       	other     	X    	t     	gravityacc     	tgravityacc_otherX            
80 	tGravityAcc-correlation()-Y,Z       	other     	Y    	t     	gravityacc     	tgravityacc_otherY            
81 	tBodyAccJerk-mean()-X               	mean      	X    	t     	bodyaccjerk    	tbodyaccjerk_meanX            
82 	tBodyAccJerk-mean()-Y               	mean      	Y    	t     	bodyaccjerk    	tbodyaccjerk_meanY            
83 	tBodyAccJerk-mean()-Z               	mean      	Z    	t     	bodyaccjerk    	tbodyaccjerk_meanZ            
84 	tBodyAccJerk-std()-X                	std       	X    	t     	bodyaccjerk    	tbodyaccjerk_stdX             
85 	tBodyAccJerk-std()-Y                	std       	Y    	t     	bodyaccjerk    	tbodyaccjerk_stdY             
86 	tBodyAccJerk-std()-Z                	std       	Z    	t     	bodyaccjerk    	tbodyaccjerk_stdZ             
87 	tBodyAccJerk-mad()-X                	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
88 	tBodyAccJerk-mad()-Y                	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
89 	tBodyAccJerk-mad()-Z                	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
90 	tBodyAccJerk-max()-X                	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
91 	tBodyAccJerk-max()-Y                	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
92 	tBodyAccJerk-max()-Z                	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
93 	tBodyAccJerk-min()-X                	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
94 	tBodyAccJerk-min()-Y                	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
95 	tBodyAccJerk-min()-Z                	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
96 	tBodyAccJerk-sma()                  	other     	U    	t     	bodyaccjerk    	tbodyaccjerk_otherU           
97 	tBodyAccJerk-energy()-X             	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
98 	tBodyAccJerk-energy()-Y             	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
99 	tBodyAccJerk-energy()-Z             	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
100	tBodyAccJerk-iqr()-X                	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
101	tBodyAccJerk-iqr()-Y                	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
102	tBodyAccJerk-iqr()-Z                	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
103	tBodyAccJerk-entropy()-X            	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
104	tBodyAccJerk-entropy()-Y            	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
105	tBodyAccJerk-entropy()-Z            	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
106	tBodyAccJerk-arCoeff()-X,1          	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
107	tBodyAccJerk-arCoeff()-X,2          	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
108	tBodyAccJerk-arCoeff()-X,3          	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
109	tBodyAccJerk-arCoeff()-X,4          	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
110	tBodyAccJerk-arCoeff()-Y,1          	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
111	tBodyAccJerk-arCoeff()-Y,2          	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
112	tBodyAccJerk-arCoeff()-Y,3          	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
113	tBodyAccJerk-arCoeff()-Y,4          	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
114	tBodyAccJerk-arCoeff()-Z,1          	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
115	tBodyAccJerk-arCoeff()-Z,2          	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
116	tBodyAccJerk-arCoeff()-Z,3          	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
117	tBodyAccJerk-arCoeff()-Z,4          	other     	Z    	t     	bodyaccjerk    	tbodyaccjerk_otherZ           
118	tBodyAccJerk-correlation()-X,Y      	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
119	tBodyAccJerk-correlation()-X,Z      	other     	X    	t     	bodyaccjerk    	tbodyaccjerk_otherX           
120	tBodyAccJerk-correlation()-Y,Z      	other     	Y    	t     	bodyaccjerk    	tbodyaccjerk_otherY           
121	tBodyGyro-mean()-X                  	mean      	X    	t     	bodygyro       	tbodygyro_meanX               
122	tBodyGyro-mean()-Y                  	mean      	Y    	t     	bodygyro       	tbodygyro_meanY               
123	tBodyGyro-mean()-Z                  	mean      	Z    	t     	bodygyro       	tbodygyro_meanZ               
124	tBodyGyro-std()-X                   	std       	X    	t     	bodygyro       	tbodygyro_stdX                
125	tBodyGyro-std()-Y                   	std       	Y    	t     	bodygyro       	tbodygyro_stdY                
126	tBodyGyro-std()-Z                   	std       	Z    	t     	bodygyro       	tbodygyro_stdZ                
127	tBodyGyro-mad()-X                   	other     	X    	t     	bodygyro       	tbodygyro_otherX              
128	tBodyGyro-mad()-Y                   	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
129	tBodyGyro-mad()-Z                   	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
130	tBodyGyro-max()-X                   	other     	X    	t     	bodygyro       	tbodygyro_otherX              
131	tBodyGyro-max()-Y                   	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
132	tBodyGyro-max()-Z                   	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
133	tBodyGyro-min()-X                   	other     	X    	t     	bodygyro       	tbodygyro_otherX              
134	tBodyGyro-min()-Y                   	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
135	tBodyGyro-min()-Z                   	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
136	tBodyGyro-sma()                     	other     	U    	t     	bodygyro       	tbodygyro_otherU              
137	tBodyGyro-energy()-X                	other     	X    	t     	bodygyro       	tbodygyro_otherX              
138	tBodyGyro-energy()-Y                	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
139	tBodyGyro-energy()-Z                	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
140	tBodyGyro-iqr()-X                   	other     	X    	t     	bodygyro       	tbodygyro_otherX              
141	tBodyGyro-iqr()-Y                   	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
142	tBodyGyro-iqr()-Z                   	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
143	tBodyGyro-entropy()-X               	other     	X    	t     	bodygyro       	tbodygyro_otherX              
144	tBodyGyro-entropy()-Y               	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
145	tBodyGyro-entropy()-Z               	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
146	tBodyGyro-arCoeff()-X,1             	other     	X    	t     	bodygyro       	tbodygyro_otherX              
147	tBodyGyro-arCoeff()-X,2             	other     	X    	t     	bodygyro       	tbodygyro_otherX              
148	tBodyGyro-arCoeff()-X,3             	other     	X    	t     	bodygyro       	tbodygyro_otherX              
149	tBodyGyro-arCoeff()-X,4             	other     	X    	t     	bodygyro       	tbodygyro_otherX              
150	tBodyGyro-arCoeff()-Y,1             	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
151	tBodyGyro-arCoeff()-Y,2             	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
152	tBodyGyro-arCoeff()-Y,3             	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
153	tBodyGyro-arCoeff()-Y,4             	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
154	tBodyGyro-arCoeff()-Z,1             	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
155	tBodyGyro-arCoeff()-Z,2             	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
156	tBodyGyro-arCoeff()-Z,3             	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
157	tBodyGyro-arCoeff()-Z,4             	other     	Z    	t     	bodygyro       	tbodygyro_otherZ              
158	tBodyGyro-correlation()-X,Y         	other     	X    	t     	bodygyro       	tbodygyro_otherX              
159	tBodyGyro-correlation()-X,Z         	other     	X    	t     	bodygyro       	tbodygyro_otherX              
160	tBodyGyro-correlation()-Y,Z         	other     	Y    	t     	bodygyro       	tbodygyro_otherY              
161	tBodyGyroJerk-mean()-X              	mean      	X    	t     	bodygyrojerk   	tbodygyrojerk_meanX           
162	tBodyGyroJerk-mean()-Y              	mean      	Y    	t     	bodygyrojerk   	tbodygyrojerk_meanY           
163	tBodyGyroJerk-mean()-Z              	mean      	Z    	t     	bodygyrojerk   	tbodygyrojerk_meanZ           
164	tBodyGyroJerk-std()-X               	std       	X    	t     	bodygyrojerk   	tbodygyrojerk_stdX            
165	tBodyGyroJerk-std()-Y               	std       	Y    	t     	bodygyrojerk   	tbodygyrojerk_stdY            
166	tBodyGyroJerk-std()-Z               	std       	Z    	t     	bodygyrojerk   	tbodygyrojerk_stdZ            
167	tBodyGyroJerk-mad()-X               	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
168	tBodyGyroJerk-mad()-Y               	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
169	tBodyGyroJerk-mad()-Z               	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
170	tBodyGyroJerk-max()-X               	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
171	tBodyGyroJerk-max()-Y               	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
172	tBodyGyroJerk-max()-Z               	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
173	tBodyGyroJerk-min()-X               	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
174	tBodyGyroJerk-min()-Y               	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
175	tBodyGyroJerk-min()-Z               	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
176	tBodyGyroJerk-sma()                 	other     	U    	t     	bodygyrojerk   	tbodygyrojerk_otherU          
177	tBodyGyroJerk-energy()-X            	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
178	tBodyGyroJerk-energy()-Y            	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
179	tBodyGyroJerk-energy()-Z            	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
180	tBodyGyroJerk-iqr()-X               	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
181	tBodyGyroJerk-iqr()-Y               	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
182	tBodyGyroJerk-iqr()-Z               	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
183	tBodyGyroJerk-entropy()-X           	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
184	tBodyGyroJerk-entropy()-Y           	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
185	tBodyGyroJerk-entropy()-Z           	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
186	tBodyGyroJerk-arCoeff()-X,1         	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
187	tBodyGyroJerk-arCoeff()-X,2         	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
188	tBodyGyroJerk-arCoeff()-X,3         	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
189	tBodyGyroJerk-arCoeff()-X,4         	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
190	tBodyGyroJerk-arCoeff()-Y,1         	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
191	tBodyGyroJerk-arCoeff()-Y,2         	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
192	tBodyGyroJerk-arCoeff()-Y,3         	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
193	tBodyGyroJerk-arCoeff()-Y,4         	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
194	tBodyGyroJerk-arCoeff()-Z,1         	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
195	tBodyGyroJerk-arCoeff()-Z,2         	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
196	tBodyGyroJerk-arCoeff()-Z,3         	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
197	tBodyGyroJerk-arCoeff()-Z,4         	other     	Z    	t     	bodygyrojerk   	tbodygyrojerk_otherZ          
198	tBodyGyroJerk-correlation()-X,Y     	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
199	tBodyGyroJerk-correlation()-X,Z     	other     	X    	t     	bodygyrojerk   	tbodygyrojerk_otherX          
200	tBodyGyroJerk-correlation()-Y,Z     	other     	Y    	t     	bodygyrojerk   	tbodygyrojerk_otherY          
201	tBodyAccMag-mean()                  	mean      	U    	t     	bodyaccmag     	tbodyaccmag_meanU             
202	tBodyAccMag-std()                   	std       	U    	t     	bodyaccmag     	tbodyaccmag_stdU              
203	tBodyAccMag-mad()                   	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
204	tBodyAccMag-max()                   	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
205	tBodyAccMag-min()                   	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
206	tBodyAccMag-sma()                   	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
207	tBodyAccMag-energy()                	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
208	tBodyAccMag-iqr()                   	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
209	tBodyAccMag-entropy()               	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
210	tBodyAccMag-arCoeff()1              	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
211	tBodyAccMag-arCoeff()2              	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
212	tBodyAccMag-arCoeff()3              	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
213	tBodyAccMag-arCoeff()4              	other     	U    	t     	bodyaccmag     	tbodyaccmag_otherU            
214	tGravityAccMag-mean()               	mean      	U    	t     	gravityaccmag  	tgravityaccmag_meanU          
215	tGravityAccMag-std()                	std       	U    	t     	gravityaccmag  	tgravityaccmag_stdU           
216	tGravityAccMag-mad()                	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
217	tGravityAccMag-max()                	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
218	tGravityAccMag-min()                	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
219	tGravityAccMag-sma()                	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
220	tGravityAccMag-energy()             	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
221	tGravityAccMag-iqr()                	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
222	tGravityAccMag-entropy()            	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
223	tGravityAccMag-arCoeff()1           	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
224	tGravityAccMag-arCoeff()2           	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
225	tGravityAccMag-arCoeff()3           	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
226	tGravityAccMag-arCoeff()4           	other     	U    	t     	gravityaccmag  	tgravityaccmag_otherU         
227	tBodyAccJerkMag-mean()              	mean      	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_meanU         
228	tBodyAccJerkMag-std()               	std       	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_stdU          
229	tBodyAccJerkMag-mad()               	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
230	tBodyAccJerkMag-max()               	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
231	tBodyAccJerkMag-min()               	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
232	tBodyAccJerkMag-sma()               	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
233	tBodyAccJerkMag-energy()            	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
234	tBodyAccJerkMag-iqr()               	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
235	tBodyAccJerkMag-entropy()           	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
236	tBodyAccJerkMag-arCoeff()1          	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
237	tBodyAccJerkMag-arCoeff()2          	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
238	tBodyAccJerkMag-arCoeff()3          	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
239	tBodyAccJerkMag-arCoeff()4          	other     	U    	t     	bodyaccjerkmag 	tbodyaccjerkmag_otherU        
240	tBodyGyroMag-mean()                 	mean      	U    	t     	bodygyromag    	tbodygyromag_meanU            
241	tBodyGyroMag-std()                  	std       	U    	t     	bodygyromag    	tbodygyromag_stdU             
242	tBodyGyroMag-mad()                  	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
243	tBodyGyroMag-max()                  	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
244	tBodyGyroMag-min()                  	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
245	tBodyGyroMag-sma()                  	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
246	tBodyGyroMag-energy()               	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
247	tBodyGyroMag-iqr()                  	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
248	tBodyGyroMag-entropy()              	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
249	tBodyGyroMag-arCoeff()1             	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
250	tBodyGyroMag-arCoeff()2             	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
251	tBodyGyroMag-arCoeff()3             	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
252	tBodyGyroMag-arCoeff()4             	other     	U    	t     	bodygyromag    	tbodygyromag_otherU           
253	tBodyGyroJerkMag-mean()             	mean      	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_meanU        
254	tBodyGyroJerkMag-std()              	std       	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_stdU         
255	tBodyGyroJerkMag-mad()              	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
256	tBodyGyroJerkMag-max()              	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
257	tBodyGyroJerkMag-min()              	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
258	tBodyGyroJerkMag-sma()              	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
259	tBodyGyroJerkMag-energy()           	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
260	tBodyGyroJerkMag-iqr()              	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
261	tBodyGyroJerkMag-entropy()          	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
262	tBodyGyroJerkMag-arCoeff()1         	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
263	tBodyGyroJerkMag-arCoeff()2         	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
264	tBodyGyroJerkMag-arCoeff()3         	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
265	tBodyGyroJerkMag-arCoeff()4         	other     	U    	t     	bodygyrojerkmag	tbodygyrojerkmag_otherU       
266	fBodyAcc-mean()-X                   	mean      	X    	f     	bodyacc        	fbodyacc_meanX                
267	fBodyAcc-mean()-Y                   	mean      	Y    	f     	bodyacc        	fbodyacc_meanY                
268	fBodyAcc-mean()-Z                   	mean      	Z    	f     	bodyacc        	fbodyacc_meanZ                
269	fBodyAcc-std()-X                    	std       	X    	f     	bodyacc        	fbodyacc_stdX                 
270	fBodyAcc-std()-Y                    	std       	Y    	f     	bodyacc        	fbodyacc_stdY                 
271	fBodyAcc-std()-Z                    	std       	Z    	f     	bodyacc        	fbodyacc_stdZ                 
272	fBodyAcc-mad()-X                    	other     	X    	f     	bodyacc        	fbodyacc_otherX               
273	fBodyAcc-mad()-Y                    	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
274	fBodyAcc-mad()-Z                    	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
275	fBodyAcc-max()-X                    	other     	X    	f     	bodyacc        	fbodyacc_otherX               
276	fBodyAcc-max()-Y                    	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
277	fBodyAcc-max()-Z                    	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
278	fBodyAcc-min()-X                    	other     	X    	f     	bodyacc        	fbodyacc_otherX               
279	fBodyAcc-min()-Y                    	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
280	fBodyAcc-min()-Z                    	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
281	fBodyAcc-sma()                      	other     	U    	f     	bodyacc        	fbodyacc_otherU               
282	fBodyAcc-energy()-X                 	other     	X    	f     	bodyacc        	fbodyacc_otherX               
283	fBodyAcc-energy()-Y                 	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
284	fBodyAcc-energy()-Z                 	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
285	fBodyAcc-iqr()-X                    	other     	X    	f     	bodyacc        	fbodyacc_otherX               
286	fBodyAcc-iqr()-Y                    	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
287	fBodyAcc-iqr()-Z                    	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
288	fBodyAcc-entropy()-X                	other     	X    	f     	bodyacc        	fbodyacc_otherX               
289	fBodyAcc-entropy()-Y                	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
290	fBodyAcc-entropy()-Z                	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
291	fBodyAcc-maxInds-X                  	other     	X    	f     	bodyacc        	fbodyacc_otherX               
292	fBodyAcc-maxInds-Y                  	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
293	fBodyAcc-maxInds-Z                  	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
294	fBodyAcc-meanFreq()-X               	other     	X    	f     	bodyacc        	fbodyacc_otherX               
295	fBodyAcc-meanFreq()-Y               	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
296	fBodyAcc-meanFreq()-Z               	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
297	fBodyAcc-skewness()-X               	other     	X    	f     	bodyacc        	fbodyacc_otherX               
298	fBodyAcc-kurtosis()-X               	other     	X    	f     	bodyacc        	fbodyacc_otherX               
299	fBodyAcc-skewness()-Y               	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
300	fBodyAcc-kurtosis()-Y               	other     	Y    	f     	bodyacc        	fbodyacc_otherY               
301	fBodyAcc-skewness()-Z               	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
302	fBodyAcc-kurtosis()-Z               	other     	Z    	f     	bodyacc        	fbodyacc_otherZ               
303	fBodyAcc-bandsEnergy()-1,8          	other     	U    	f     	bodyacc        	fbodyacc_otherU               
304	fBodyAcc-bandsEnergy()-9,16         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
305	fBodyAcc-bandsEnergy()-17,24        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
306	fBodyAcc-bandsEnergy()-25,32        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
307	fBodyAcc-bandsEnergy()-33,40        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
308	fBodyAcc-bandsEnergy()-41,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
309	fBodyAcc-bandsEnergy()-49,56        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
310	fBodyAcc-bandsEnergy()-57,64        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
311	fBodyAcc-bandsEnergy()-1,16         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
312	fBodyAcc-bandsEnergy()-17,32        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
313	fBodyAcc-bandsEnergy()-33,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
314	fBodyAcc-bandsEnergy()-49,64        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
315	fBodyAcc-bandsEnergy()-1,24         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
316	fBodyAcc-bandsEnergy()-25,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
317	fBodyAcc-bandsEnergy()-1,8          	other     	U    	f     	bodyacc        	fbodyacc_otherU               
318	fBodyAcc-bandsEnergy()-9,16         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
319	fBodyAcc-bandsEnergy()-17,24        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
320	fBodyAcc-bandsEnergy()-25,32        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
321	fBodyAcc-bandsEnergy()-33,40        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
322	fBodyAcc-bandsEnergy()-41,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
323	fBodyAcc-bandsEnergy()-49,56        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
324	fBodyAcc-bandsEnergy()-57,64        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
325	fBodyAcc-bandsEnergy()-1,16         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
326	fBodyAcc-bandsEnergy()-17,32        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
327	fBodyAcc-bandsEnergy()-33,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
328	fBodyAcc-bandsEnergy()-49,64        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
329	fBodyAcc-bandsEnergy()-1,24         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
330	fBodyAcc-bandsEnergy()-25,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
331	fBodyAcc-bandsEnergy()-1,8          	other     	U    	f     	bodyacc        	fbodyacc_otherU               
332	fBodyAcc-bandsEnergy()-9,16         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
333	fBodyAcc-bandsEnergy()-17,24        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
334	fBodyAcc-bandsEnergy()-25,32        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
335	fBodyAcc-bandsEnergy()-33,40        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
336	fBodyAcc-bandsEnergy()-41,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
337	fBodyAcc-bandsEnergy()-49,56        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
338	fBodyAcc-bandsEnergy()-57,64        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
339	fBodyAcc-bandsEnergy()-1,16         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
340	fBodyAcc-bandsEnergy()-17,32        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
341	fBodyAcc-bandsEnergy()-33,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
342	fBodyAcc-bandsEnergy()-49,64        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
343	fBodyAcc-bandsEnergy()-1,24         	other     	U    	f     	bodyacc        	fbodyacc_otherU               
344	fBodyAcc-bandsEnergy()-25,48        	other     	U    	f     	bodyacc        	fbodyacc_otherU               
345	fBodyAccJerk-mean()-X               	mean      	X    	f     	bodyaccjerk    	fbodyaccjerk_meanX            
346	fBodyAccJerk-mean()-Y               	mean      	Y    	f     	bodyaccjerk    	fbodyaccjerk_meanY            
347	fBodyAccJerk-mean()-Z               	mean      	Z    	f     	bodyaccjerk    	fbodyaccjerk_meanZ            
348	fBodyAccJerk-std()-X                	std       	X    	f     	bodyaccjerk    	fbodyaccjerk_stdX             
349	fBodyAccJerk-std()-Y                	std       	Y    	f     	bodyaccjerk    	fbodyaccjerk_stdY             
350	fBodyAccJerk-std()-Z                	std       	Z    	f     	bodyaccjerk    	fbodyaccjerk_stdZ             
351	fBodyAccJerk-mad()-X                	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
352	fBodyAccJerk-mad()-Y                	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
353	fBodyAccJerk-mad()-Z                	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
354	fBodyAccJerk-max()-X                	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
355	fBodyAccJerk-max()-Y                	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
356	fBodyAccJerk-max()-Z                	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
357	fBodyAccJerk-min()-X                	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
358	fBodyAccJerk-min()-Y                	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
359	fBodyAccJerk-min()-Z                	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
360	fBodyAccJerk-sma()                  	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
361	fBodyAccJerk-energy()-X             	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
362	fBodyAccJerk-energy()-Y             	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
363	fBodyAccJerk-energy()-Z             	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
364	fBodyAccJerk-iqr()-X                	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
365	fBodyAccJerk-iqr()-Y                	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
366	fBodyAccJerk-iqr()-Z                	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
367	fBodyAccJerk-entropy()-X            	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
368	fBodyAccJerk-entropy()-Y            	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
369	fBodyAccJerk-entropy()-Z            	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
370	fBodyAccJerk-maxInds-X              	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
371	fBodyAccJerk-maxInds-Y              	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
372	fBodyAccJerk-maxInds-Z              	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
373	fBodyAccJerk-meanFreq()-X           	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
374	fBodyAccJerk-meanFreq()-Y           	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
375	fBodyAccJerk-meanFreq()-Z           	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
376	fBodyAccJerk-skewness()-X           	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
377	fBodyAccJerk-kurtosis()-X           	other     	X    	f     	bodyaccjerk    	fbodyaccjerk_otherX           
378	fBodyAccJerk-skewness()-Y           	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
379	fBodyAccJerk-kurtosis()-Y           	other     	Y    	f     	bodyaccjerk    	fbodyaccjerk_otherY           
380	fBodyAccJerk-skewness()-Z           	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
381	fBodyAccJerk-kurtosis()-Z           	other     	Z    	f     	bodyaccjerk    	fbodyaccjerk_otherZ           
382	fBodyAccJerk-bandsEnergy()-1,8      	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
383	fBodyAccJerk-bandsEnergy()-9,16     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
384	fBodyAccJerk-bandsEnergy()-17,24    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
385	fBodyAccJerk-bandsEnergy()-25,32    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
386	fBodyAccJerk-bandsEnergy()-33,40    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
387	fBodyAccJerk-bandsEnergy()-41,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
388	fBodyAccJerk-bandsEnergy()-49,56    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
389	fBodyAccJerk-bandsEnergy()-57,64    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
390	fBodyAccJerk-bandsEnergy()-1,16     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
391	fBodyAccJerk-bandsEnergy()-17,32    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
392	fBodyAccJerk-bandsEnergy()-33,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
393	fBodyAccJerk-bandsEnergy()-49,64    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
394	fBodyAccJerk-bandsEnergy()-1,24     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
395	fBodyAccJerk-bandsEnergy()-25,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
396	fBodyAccJerk-bandsEnergy()-1,8      	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
397	fBodyAccJerk-bandsEnergy()-9,16     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
398	fBodyAccJerk-bandsEnergy()-17,24    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
399	fBodyAccJerk-bandsEnergy()-25,32    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
400	fBodyAccJerk-bandsEnergy()-33,40    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
401	fBodyAccJerk-bandsEnergy()-41,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
402	fBodyAccJerk-bandsEnergy()-49,56    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
403	fBodyAccJerk-bandsEnergy()-57,64    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
404	fBodyAccJerk-bandsEnergy()-1,16     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
405	fBodyAccJerk-bandsEnergy()-17,32    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
406	fBodyAccJerk-bandsEnergy()-33,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
407	fBodyAccJerk-bandsEnergy()-49,64    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
408	fBodyAccJerk-bandsEnergy()-1,24     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
409	fBodyAccJerk-bandsEnergy()-25,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
410	fBodyAccJerk-bandsEnergy()-1,8      	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
411	fBodyAccJerk-bandsEnergy()-9,16     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
412	fBodyAccJerk-bandsEnergy()-17,24    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
413	fBodyAccJerk-bandsEnergy()-25,32    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
414	fBodyAccJerk-bandsEnergy()-33,40    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
415	fBodyAccJerk-bandsEnergy()-41,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
416	fBodyAccJerk-bandsEnergy()-49,56    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
417	fBodyAccJerk-bandsEnergy()-57,64    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
418	fBodyAccJerk-bandsEnergy()-1,16     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
419	fBodyAccJerk-bandsEnergy()-17,32    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
420	fBodyAccJerk-bandsEnergy()-33,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
421	fBodyAccJerk-bandsEnergy()-49,64    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
422	fBodyAccJerk-bandsEnergy()-1,24     	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
423	fBodyAccJerk-bandsEnergy()-25,48    	other     	U    	f     	bodyaccjerk    	fbodyaccjerk_otherU           
424	fBodyGyro-mean()-X                  	mean      	X    	f     	bodygyro       	fbodygyro_meanX               
425	fBodyGyro-mean()-Y                  	mean      	Y    	f     	bodygyro       	fbodygyro_meanY               
426	fBodyGyro-mean()-Z                  	mean      	Z    	f     	bodygyro       	fbodygyro_meanZ               
427	fBodyGyro-std()-X                   	std       	X    	f     	bodygyro       	fbodygyro_stdX                
428	fBodyGyro-std()-Y                   	std       	Y    	f     	bodygyro       	fbodygyro_stdY                
429	fBodyGyro-std()-Z                   	std       	Z    	f     	bodygyro       	fbodygyro_stdZ                
430	fBodyGyro-mad()-X                   	other     	X    	f     	bodygyro       	fbodygyro_otherX              
431	fBodyGyro-mad()-Y                   	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
432	fBodyGyro-mad()-Z                   	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
433	fBodyGyro-max()-X                   	other     	X    	f     	bodygyro       	fbodygyro_otherX              
434	fBodyGyro-max()-Y                   	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
435	fBodyGyro-max()-Z                   	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
436	fBodyGyro-min()-X                   	other     	X    	f     	bodygyro       	fbodygyro_otherX              
437	fBodyGyro-min()-Y                   	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
438	fBodyGyro-min()-Z                   	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
439	fBodyGyro-sma()                     	other     	U    	f     	bodygyro       	fbodygyro_otherU              
440	fBodyGyro-energy()-X                	other     	X    	f     	bodygyro       	fbodygyro_otherX              
441	fBodyGyro-energy()-Y                	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
442	fBodyGyro-energy()-Z                	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
443	fBodyGyro-iqr()-X                   	other     	X    	f     	bodygyro       	fbodygyro_otherX              
444	fBodyGyro-iqr()-Y                   	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
445	fBodyGyro-iqr()-Z                   	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
446	fBodyGyro-entropy()-X               	other     	X    	f     	bodygyro       	fbodygyro_otherX              
447	fBodyGyro-entropy()-Y               	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
448	fBodyGyro-entropy()-Z               	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
449	fBodyGyro-maxInds-X                 	other     	X    	f     	bodygyro       	fbodygyro_otherX              
450	fBodyGyro-maxInds-Y                 	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
451	fBodyGyro-maxInds-Z                 	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
452	fBodyGyro-meanFreq()-X              	other     	X    	f     	bodygyro       	fbodygyro_otherX              
453	fBodyGyro-meanFreq()-Y              	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
454	fBodyGyro-meanFreq()-Z              	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
455	fBodyGyro-skewness()-X              	other     	X    	f     	bodygyro       	fbodygyro_otherX              
456	fBodyGyro-kurtosis()-X              	other     	X    	f     	bodygyro       	fbodygyro_otherX              
457	fBodyGyro-skewness()-Y              	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
458	fBodyGyro-kurtosis()-Y              	other     	Y    	f     	bodygyro       	fbodygyro_otherY              
459	fBodyGyro-skewness()-Z              	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
460	fBodyGyro-kurtosis()-Z              	other     	Z    	f     	bodygyro       	fbodygyro_otherZ              
461	fBodyGyro-bandsEnergy()-1,8         	other     	U    	f     	bodygyro       	fbodygyro_otherU              
462	fBodyGyro-bandsEnergy()-9,16        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
463	fBodyGyro-bandsEnergy()-17,24       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
464	fBodyGyro-bandsEnergy()-25,32       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
465	fBodyGyro-bandsEnergy()-33,40       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
466	fBodyGyro-bandsEnergy()-41,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
467	fBodyGyro-bandsEnergy()-49,56       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
468	fBodyGyro-bandsEnergy()-57,64       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
469	fBodyGyro-bandsEnergy()-1,16        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
470	fBodyGyro-bandsEnergy()-17,32       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
471	fBodyGyro-bandsEnergy()-33,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
472	fBodyGyro-bandsEnergy()-49,64       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
473	fBodyGyro-bandsEnergy()-1,24        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
474	fBodyGyro-bandsEnergy()-25,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
475	fBodyGyro-bandsEnergy()-1,8         	other     	U    	f     	bodygyro       	fbodygyro_otherU              
476	fBodyGyro-bandsEnergy()-9,16        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
477	fBodyGyro-bandsEnergy()-17,24       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
478	fBodyGyro-bandsEnergy()-25,32       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
479	fBodyGyro-bandsEnergy()-33,40       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
480	fBodyGyro-bandsEnergy()-41,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
481	fBodyGyro-bandsEnergy()-49,56       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
482	fBodyGyro-bandsEnergy()-57,64       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
483	fBodyGyro-bandsEnergy()-1,16        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
484	fBodyGyro-bandsEnergy()-17,32       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
485	fBodyGyro-bandsEnergy()-33,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
486	fBodyGyro-bandsEnergy()-49,64       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
487	fBodyGyro-bandsEnergy()-1,24        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
488	fBodyGyro-bandsEnergy()-25,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
489	fBodyGyro-bandsEnergy()-1,8         	other     	U    	f     	bodygyro       	fbodygyro_otherU              
490	fBodyGyro-bandsEnergy()-9,16        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
491	fBodyGyro-bandsEnergy()-17,24       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
492	fBodyGyro-bandsEnergy()-25,32       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
493	fBodyGyro-bandsEnergy()-33,40       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
494	fBodyGyro-bandsEnergy()-41,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
495	fBodyGyro-bandsEnergy()-49,56       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
496	fBodyGyro-bandsEnergy()-57,64       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
497	fBodyGyro-bandsEnergy()-1,16        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
498	fBodyGyro-bandsEnergy()-17,32       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
499	fBodyGyro-bandsEnergy()-33,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
500	fBodyGyro-bandsEnergy()-49,64       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
501	fBodyGyro-bandsEnergy()-1,24        	other     	U    	f     	bodygyro       	fbodygyro_otherU              
502	fBodyGyro-bandsEnergy()-25,48       	other     	U    	f     	bodygyro       	fbodygyro_otherU              
503	fBodyAccMag-mean()                  	mean      	U    	f     	bodyaccmag     	fbodyaccmag_meanU             
504	fBodyAccMag-std()                   	std       	U    	f     	bodyaccmag     	fbodyaccmag_stdU              
505	fBodyAccMag-mad()                   	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
506	fBodyAccMag-max()                   	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
507	fBodyAccMag-min()                   	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
508	fBodyAccMag-sma()                   	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
509	fBodyAccMag-energy()                	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
510	fBodyAccMag-iqr()                   	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
511	fBodyAccMag-entropy()               	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
512	fBodyAccMag-maxInds                 	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
513	fBodyAccMag-meanFreq()              	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
514	fBodyAccMag-skewness()              	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
515	fBodyAccMag-kurtosis()              	other     	U    	f     	bodyaccmag     	fbodyaccmag_otherU            
516	fBodyBodyAccJerkMag-mean()          	mean      	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_meanU         
517	fBodyBodyAccJerkMag-std()           	std       	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_stdU          
518	fBodyBodyAccJerkMag-mad()           	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
519	fBodyBodyAccJerkMag-max()           	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
520	fBodyBodyAccJerkMag-min()           	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
521	fBodyBodyAccJerkMag-sma()           	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
522	fBodyBodyAccJerkMag-energy()        	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
523	fBodyBodyAccJerkMag-iqr()           	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
524	fBodyBodyAccJerkMag-entropy()       	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
525	fBodyBodyAccJerkMag-maxInds         	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
526	fBodyBodyAccJerkMag-meanFreq()      	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
527	fBodyBodyAccJerkMag-skewness()      	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
528	fBodyBodyAccJerkMag-kurtosis()      	other     	U    	f     	bodyaccjerkmag 	fbodyaccjerkmag_otherU        
529	fBodyBodyGyroMag-mean()             	mean      	U    	f     	bodygyromag    	fbodygyromag_meanU            
530	fBodyBodyGyroMag-std()              	std       	U    	f     	bodygyromag    	fbodygyromag_stdU             
531	fBodyBodyGyroMag-mad()              	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
532	fBodyBodyGyroMag-max()              	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
533	fBodyBodyGyroMag-min()              	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
534	fBodyBodyGyroMag-sma()              	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
535	fBodyBodyGyroMag-energy()           	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
536	fBodyBodyGyroMag-iqr()              	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
537	fBodyBodyGyroMag-entropy()          	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
538	fBodyBodyGyroMag-maxInds            	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
539	fBodyBodyGyroMag-meanFreq()         	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
540	fBodyBodyGyroMag-skewness()         	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
541	fBodyBodyGyroMag-kurtosis()         	other     	U    	f     	bodygyromag    	fbodygyromag_otherU           
542	fBodyBodyGyroJerkMag-mean()         	mean      	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_meanU        
543	fBodyBodyGyroJerkMag-std()          	std       	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_stdU         
544	fBodyBodyGyroJerkMag-mad()          	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
545	fBodyBodyGyroJerkMag-max()          	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
546	fBodyBodyGyroJerkMag-min()          	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
547	fBodyBodyGyroJerkMag-sma()          	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
548	fBodyBodyGyroJerkMag-energy()       	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
549	fBodyBodyGyroJerkMag-iqr()          	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
550	fBodyBodyGyroJerkMag-entropy()      	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
551	fBodyBodyGyroJerkMag-maxInds        	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
552	fBodyBodyGyroJerkMag-meanFreq()     	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
553	fBodyBodyGyroJerkMag-skewness()     	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
554	fBodyBodyGyroJerkMag-kurtosis()     	other     	U    	f     	bodygyrojerkmag	fbodygyrojerkmag_otherU       
555	angle(tBodyAccMean,gravity)         	other     	U    	t     	bodyacc        	tbodyacc_otherU               
556	angle(tBodyAccJerkMean),gravityMean)	other     	U    	t     	bodyaccjerk    	tbodyaccjerk_otherU           
557	angle(tBodyGyroMean,gravityMean)    	other     	U    	t     	bodygyro       	tbodygyro_otherU              
558	angle(tBodyGyroJerkMean,gravityMean)	other     	U    	t     	bodygyrojerk   	tbodygyrojerk_otherU          
559	angle(X,gravityMean)                	other     	X    	u     	unknown        	uunknown_otherX               
560	angle(Y,gravityMean)                	other     	Y    	u     	unknown        	uunknown_otherY               
561	angle(Z,gravityMean)                	other     	Z    	u     	unknown        	uunknown_otherZ            

The final data table, 'X_tidy_data' includes only those variables with 'mean' or 'std' in stat column --> filter()  

````

#### **activity_labels.txt**  
These labels are 'merged' to 'y_test' and 'y_train' by activity index (1, 2, 3, 4, 5, 6).  This permits use  
of a more meaningful name to be used to identify the activity of an observation.  This table was not amended or  
otherwise used in creating tidy data set 'X_tidy_data'

````r
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
````

#### **Activity by observation**  
Tables 'y_test' and 'y_train' included only the activity id or index for each of the observations.  To facilitate  
the accurate use of this data, a 'rowindx' column is added to assign the activitiy to a specific observation or row.  
This ensures that observation / row 1 has the same activity id/index associated with it.  The 'rowindx' is created  
by using seq() function:  seq(along = y_test$activityid) and seq(along = y_train$activitiyid)  

Below represents only the first 60 rows of data for each table.  There are 7,352 rows for 'y_train' and 2,947 rows  
for 'y_test'.  As illustrated in table subset below, the 'rowindx' prevents re-ordering of data which could occur  
if only 'activityid' was included.  

````r
Table: 'y_train'			  Table: 'y_test'	
activityid	rowindx		  activityid	rowindx
     5      	  1     		     5      	  1     
     5      	  2     		     5      	  2     
     5      	  3     		     5      	  3     
     5      	  4     		     5      	  4     
     5      	  5     		     5      	  5     
     5      	  6     		     5      	  6     
     5      	  7     		     5      	  7     
     5      	  8     		     5      	  8     
     5      	  9     		     5      	  9     
     5      	  10    		     5      	  10    
     5      	  11    		     5      	  11    
     5      	  12    		     5      	  12    
     5      	  13    		     5      	  13    
     5      	  14    		     5      	  14    
     5      	  15    		     5      	  15    
     5      	  16    		     5      	  16    
     5      	  17    		     5      	  17    
     5      	  18    		     5      	  18    
     5      	  19    		     5      	  19    
     5      	  20    		     5      	  20    
     5      	  21    		     5      	  21    
     5      	  22    		     5      	  22    
     5      	  23    		     5      	  23    
     5      	  24    		     5      	  24    
     5      	  25    		     5      	  25    
     5      	  26    		     5      	  26    
     5      	  27    		     5      	  27    
     4      	  28    		     5      	  28    
     4      	  29    		     5      	  29    
     4      	  30    		     5      	  30    
     4      	  31    		     5      	  31    
     4      	  32    		     4      	  32    
     4      	  33    		     4      	  33    
     4      	  34    		     4      	  34    
     4      	  35    		     4      	  35    
     4      	  36    		     4      	  36    
     4      	  37    		     4      	  37    
     4      	  38    		     4      	  38    
     4      	  39    		     4      	  39    
     4      	  40    		     4      	  40    
     4      	  41    		     4      	  41    
     4      	  42    		     4      	  42    
     4      	  43    		     4      	  43    
     4      	  44    		     4      	  44    
     4      	  45    		     4      	  45    
     4      	  46    		     4      	  46    
     4      	  47    		     4      	  47    
     4      	  48    		     4      	  48    
     4      	  49    		     4      	  49    
     4      	  50    		     4      	  50    
     4      	  51    		     4      	  51    
     6      	  52    		     4      	  52    
     6      	  53    		     4      	  53    
     6      	  54    		     4      	  54    
     6      	  55    		     4      	  55    
     6      	  56    		     6      	  56    
     6      	  57    		     6      	  57    
     6      	  58    		     6      	  58    
     6      	  59    		     6      	  59    
     6      	  60    		     6      	  60    






