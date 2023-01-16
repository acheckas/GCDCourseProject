# Overview

The basis for this data set comes from:
>Human Activity Recognition Using Smartphones Dataset - Version 1.0
>
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
> 
> activityrecognition@smartlab.ws
> 
> www.smartlab.ws

## Licence:
Use of this data set requires acknowledgment of the original dataset by referencing the following publication[1]

> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse.
Any commercial use is prohibited.

## Original Study
The summary of the original study is:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each 
person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing 
a smartphone (Samsung Galaxy S II) on the waist. 
> 
> Using its embedded accelerometer and gyroscope, we captured 3-axial 
linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
> 
> The experiments have been video-recorded 
to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the 
volunteers was selected for generating the training data and 30% the test data.

## Modifications in this Data Set
This data set summarizes the original data by providing the mean for each original mean and standard deviation for each
measurement by subject by activity. Means were provided for all fields in the original data that represented themselves
as either means or stddev in order to capture as much of the original dataset as possible and not be overly restricted. 

In addition, this summary combines both the test and training datasets into a simgle, combined summary. 

The data has further been modified to be tidy in that:
* The combined summary table is clearly labeled
* Has one measurement in each column
* as one observation of that set of variables in each row which,in this
case, is a mean for each observation for each activity for each subject
* There is only one table in the resulting summary and thus only one file. 
* The top row of the output file includes all of the variable names for the data set which are as
human read-able as the sensor data allows.

## Dataset Components
- 'Codebook.md'
- 'output/acHARSummary.txt' : Summary data set

---
## Variables

Below is a summary of the variable found in the data set. Where appropriate, this information has been propagated from 
form the original data set. 

### Summary

For each record, it is provided:
- An identifier of the subject who carried out the experiment
- The activity label
- A 178-feature summary of the means of the original means and stddev found in the original 561-feature vector 
of time and frequency domain variables.

Rather than address each variable individually,which would be repetitious as they're often permutations of the different 
sensors in each axis, here is an excerpt from features_info.txt found in the 
[original dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
to explain the detail of the sensor collection:

> Feature Selection
> 
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
> 
> These signals were used to estimate variables of the feature vector for each pattern:
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
> tBodyAcc-XYZ
> tGravityAcc-XYZ
> tGravityAcc-XYZ
> tBodyAccJerk-XYZ
> tBodyGyro-XYZ
> tBodyGyroJerk-XYZ
> tBodyAccMag
> tGravityAccMag
> tBodyAccJerkMag
> tBodyGyroMag
> tBodyGyroJerkMag
> fBodyAcc-XYZ
> fBodyAccJerk-XYZ
> fBodyGyro-XYZ
> fBodyAccMag
> fBodyAccJerkMag
> fBodyGyroMag
> fBodyGyroJerkMag


Beyond that, the distinguishing factor here is that only the measurements which already had been provided as means or 
standard deviations are summarized in the data below. The original labels have been preserved and suffixed with "_mean".

### Units

From the original data, the units for the accelerometer signals are in standard gravity units 'g'. 
The angular velocity vectors measured by the gyroscope are in radians/second.

### Detail


=====================================================================================================

subject - Test subjects numebered 1-30 wihin an age bracked of 19-48yrs of age

-----------------------------------------------------------------------------------------------------

Storage mode: integer

        Min:  1.000000
        Max: 30.000000
       Mean: 15.500000
Std.Dev.:  8.655441
Skewness:  0.000000
Kurtosis: -1.202670

=====================================================================================================

activity - Six different activities that were performed during the test

-----------------------------------------------------------------------------------------------------

Storage mode: character

"WALKING"
"WALKING_UPSTAIRS"
"WALKING_DOWNSTAIRS"
"SITTING"
"STANDING"
"LAYING"

=====================================================================================================

tBodyAcc.mean...X_mean 

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min:  0.22159824
        Max:  0.30146102
       Mean:  0.27430274
Std.Dev.:  0.01213073
Skewness: -1.05472348
Kurtosis:  2.32926035

=====================================================================================================

tBodyAcc.mean...Y_mean 

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.040513953
        Max: -0.001308288
       Mean: -0.017875524
Std.Dev.:  0.005755130
Skewness: -0.536855552
Kurtosis:  1.611776672

=====================================================================================================

tBodyAcc.mean...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.152513900
        Max: -0.075378469
       Mean: -0.109163816
Std.Dev.:  0.009555321
Skewness: -1.115441235
Kurtosis:  4.910169288

=====================================================================================================

tBodyAcc.std...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9960686
        Max:  0.6269171
       Mean: -0.5576901
Std.Dev.:  0.4504346
Skewness:  0.4377826
Kurtosis: -1.2163750

=====================================================================================================

tBodyAcc.std...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9902409
        Max:  0.6169370
       Mean: -0.4604626
Std.Dev.:  0.4951837
Skewness:  0.2348589
Kurtosis: -1.5861472

=====================================================================================================

tBodyAcc.std...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9876587
        Max:  0.6090179
       Mean: -0.5755602
Std.Dev.:  0.3944436
Skewness:  0.4505541
Kurtosis: -1.0258675

=====================================================================================================

tGravityAcc.mean...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.6800432
        Max:  0.9745087
       Mean:  0.6974775
Std.Dev.:  0.4858980
Skewness: -1.8105168
Kurtosis:  1.4521309

=====================================================================================================

tGravityAcc.mean...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.47989484
        Max:  0.95659381
       Mean: -0.01621284
Std.Dev.:  0.34427723
Skewness:  1.42657265
Kurtosis:  1.05141295

=====================================================================================================

tGravityAcc.mean...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.49508872
        Max:  0.95787304
       Mean:  0.07412787
Std.Dev.:  0.28798858
Skewness:  1.14506146
Kurtosis:  1.20750289

=====================================================================================================

tGravityAcc.std...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.99676423
        Max: -0.82955495
       Mean: -0.96375253
Std.Dev.:  0.02496475
Skewness:  1.66910529
Kurtosis:  5.05120042

=====================================================================================================

tGravityAcc.std...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.99424765
        Max: -0.64357836
       Mean: -0.95242956
Std.Dev.:  0.03256484
Skewness:  4.81670258
Kurtosis: 42.50102210

=====================================================================================================

tGravityAcc.std...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.99095725
        Max: -0.61016117
       Mean: -0.93640104
Std.Dev.:  0.04017909
Skewness:  3.24802868
Kurtosis: 22.28844103

=====================================================================================================

tBodyAccJerk.mean...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: 0.04268810
        Max: 0.13019304
       Mean: 0.07947356
Std.Dev.: 0.01255300
Skewness: 0.82133336
Kurtosis: 2.55957901

=====================================================================================================

tBodyAccJerk.mean...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.03868721
        Max:  0.05681859
       Mean:  0.00756521
Std.Dev.:  0.01353868
Skewness: -0.19220707
Kurtosis:  1.60609656

=====================================================================================================

tBodyAccJerk.mean...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.067458392
        Max:  0.038053359
       Mean: -0.004953403
Std.Dev.:  0.013424653
Skewness: -0.834973690
Kurtosis:  3.524583067

=====================================================================================================

tBodyAccJerk.std...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9946045
        Max:  0.5442730
       Mean: -0.5949467
Std.Dev.:  0.4164249
Skewness:  0.4237079
Kurtosis: -1.2733401

=====================================================================================================

tBodyAccJerk.std...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9895136
        Max:  0.3553067
       Mean: -0.5654147
Std.Dev.:  0.4318824
Skewness:  0.3617718
Kurtosis: -1.4498386

=====================================================================================================

tBodyAccJerk.std...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.99328831
        Max:  0.03101571
       Mean: -0.73595769
Std.Dev.:  0.27607784
Skewness:  0.67893643
Kurtosis: -0.68086608

=====================================================================================================

tBodyGyro.mean...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.20577543
        Max:  0.19270448
       Mean: -0.03243716
Std.Dev.:  0.05390144
Skewness:  0.34101885
Kurtosis:  2.39053444

=====================================================================================================

tBodyGyro.mean...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.20420536
        Max:  0.02747076
       Mean: -0.07425957
Std.Dev.:  0.03544263
Skewness: -0.28636355
Kurtosis:  2.06960118

=====================================================================================================

tBodyGyro.mean...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.07245460
        Max:  0.17910206
       Mean:  0.08744465
Std.Dev.:  0.03611176
Skewness: -0.78146899
Kurtosis:  3.22410015

=====================================================================================================

tBodyGyro.std...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9942766
        Max:  0.2676572
       Mean: -0.6916399
Std.Dev.:  0.2902094
Skewness:  0.3908197
Kurtosis: -1.0727035

=====================================================================================================

tBodyGyro.std...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9942105
        Max:  0.4765187
       Mean: -0.6533020
Std.Dev.:  0.3510460
Skewness:  0.7308483
Kurtosis: -0.4575139

=====================================================================================================

tBodyGyro.std...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9855384
        Max:  0.5648758
       Mean: -0.6164353
Std.Dev.:  0.3719887
Skewness:  0.5313233
Kurtosis: -0.7976359

=====================================================================================================

tBodyGyroJerk.mean...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.15721254
        Max: -0.02209163
       Mean: -0.09605680
Std.Dev.:  0.02328090
Skewness:  0.48494117
Kurtosis:  1.82465453

=====================================================================================================

tBodyGyroJerk.mean...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.076808992
        Max: -0.013202277
       Mean: -0.042692782
Std.Dev.:  0.009505501
Skewness: -0.814147925
Kurtosis:  2.785014388

=====================================================================================================

tBodyGyroJerk.mean...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.092499853
        Max: -0.006940664
       Mean: -0.054801883
Std.Dev.:  0.012312625
Skewness:  0.258136588
Kurtosis:  1.866681274

=====================================================================================================

tBodyGyroJerk.std...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9965425
        Max:  0.1791486
       Mean: -0.7036327
Std.Dev.:  0.2999993
Skewness:  0.5544544
Kurtosis: -0.9159362

=====================================================================================================

tBodyGyroJerk.std...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9970816
        Max:  0.2959459
       Mean: -0.7635518
Std.Dev.:  0.2665450
Skewness:  1.1555869
Kurtosis:  1.0639529

=====================================================================================================

tBodyGyroJerk.std...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9953808
        Max:  0.1932065
       Mean: -0.7095592
Std.Dev.:  0.3036923
Skewness:  0.6494746
Kurtosis: -0.6516129

=====================================================================================================

tBodyAccMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9864932
        Max:  0.6446043
       Mean: -0.4972897
Std.Dev.:  0.4715680
Skewness:  0.2307675
Kurtosis: -1.5873357

=====================================================================================================

tBodyAccMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9864645
        Max:  0.4284059
       Mean: -0.5439087
Std.Dev.:  0.4298457
Skewness:  0.4643012
Kurtosis: -1.1939846

=====================================================================================================

tGravityAccMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9864932
        Max:  0.6446043
       Mean: -0.4972897
Std.Dev.:  0.4715680
Skewness:  0.2307675
Kurtosis: -1.5873357

=====================================================================================================

tGravityAccMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9864645
        Max:  0.4284059
       Mean: -0.5439087
Std.Dev.:  0.4298457
Skewness:  0.4643012
Kurtosis: -1.1939846

=====================================================================================================

tBodyAccJerkMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9928147
        Max:  0.4344904
       Mean: -0.6079296
Std.Dev.:  0.3954242
Skewness:  0.3602816
Kurtosis: -1.3882501

=====================================================================================================

tBodyAccJerkMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9946469
        Max:  0.4506121
       Mean: -0.5841756
Std.Dev.:  0.4216192
Skewness:  0.4252288
Kurtosis: -1.3190140

=====================================================================================================

tBodyGyroMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9807408
        Max:  0.4180046
       Mean: -0.5651631
Std.Dev.:  0.3966275
Skewness:  0.3126690
Kurtosis: -1.4221487

=====================================================================================================

tBodyGyroMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9813727
        Max:  0.2999760
       Mean: -0.6303947
Std.Dev.:  0.3359456
Skewness:  0.4819430
Kurtosis: -1.0268379

=====================================================================================================

tBodyGyroJerkMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.99732253
        Max:  0.08758166
       Mean: -0.73636930
Std.Dev.:  0.27598422
Skewness:  0.65992247
Kurtosis: -0.64577036

=====================================================================================================

tBodyGyroJerkMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9976661
        Max:  0.2501732
       Mean: -0.7550152
Std.Dev.:  0.2647672
Skewness:  1.0155812
Kurtosis:  0.5457948

=====================================================================================================

fBodyAcc.mean...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9952499
        Max:  0.5370120
       Mean: -0.5758000
Std.Dev.:  0.4288252
Skewness:  0.3914869
Kurtosis: -1.3284807

=====================================================================================================

fBodyAcc.mean...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9890343
        Max:  0.5241877
       Mean: -0.4887327
Std.Dev.:  0.4793126
Skewness:  0.2591642
Kurtosis: -1.5667176

=====================================================================================================

fBodyAcc.mean...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9894739
        Max:  0.2807360
       Mean: -0.6297388
Std.Dev.:  0.3546576
Skewness:  0.4696163
Kurtosis: -1.0727925

=====================================================================================================

fBodyAcc.std...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9966046
        Max:  0.6585065
       Mean: -0.5522011
Std.Dev.:  0.4587436
Skewness:  0.4693143
Kurtosis: -1.1454918

=====================================================================================================

fBodyAcc.std...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9906804
        Max:  0.5601913
       Mean: -0.4814787
Std.Dev.:  0.4727091
Skewness:  0.2440704
Kurtosis: -1.5664968

=====================================================================================================

fBodyAcc.std...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9872248
        Max:  0.6871242
       Mean: -0.5823614
Std.Dev.:  0.3870106
Skewness:  0.5175933
Kurtosis: -0.8076834

=====================================================================================================

fBodyAcc.meanFreq...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.6359130
        Max:  0.1591236
       Mean: -0.2322661
Std.Dev.:  0.1930300
Skewness:  0.1511044
Kurtosis: -1.0897775

=====================================================================================================

fBodyAcc.meanFreq...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.37951846
        Max:  0.46652823
       Mean:  0.01152888
Std.Dev.:  0.14430256
Skewness:  0.15518796
Kurtosis:  0.33427612

=====================================================================================================

fBodyAcc.meanFreq...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.52011479
        Max:  0.40253255
       Mean:  0.04371743
Std.Dev.:  0.18449663
Skewness: -0.80145403
Kurtosis:  0.70170782

=====================================================================================================

fBodyAccJerk.mean...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9946308
        Max:  0.4743173
       Mean: -0.6139282
Std.Dev.:  0.3971817
Skewness:  0.4444638
Kurtosis: -1.2222149

=====================================================================================================

fBodyAccJerk.mean...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9893988
        Max:  0.2767169
       Mean: -0.5881631
Std.Dev.:  0.4066149
Skewness:  0.3466375
Kurtosis: -1.4784126

=====================================================================================================

fBodyAccJerk.mean...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9920184
        Max:  0.1577757
       Mean: -0.7143585
Std.Dev.:  0.2961963
Skewness:  0.6704276
Kurtosis: -0.6766338

=====================================================================================================

fBodyAccJerk.std...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9950738
        Max:  0.4768039
       Mean: -0.6121033
Std.Dev.:  0.3993367
Skewness:  0.4127270
Kurtosis: -1.3061515

=====================================================================================================

fBodyAccJerk.std...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9904681
        Max:  0.3497713
       Mean: -0.5707310
Std.Dev.:  0.4307857
Skewness:  0.3926419
Kurtosis: -1.3864714

=====================================================================================================

fBodyAccJerk.std...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.993107760
        Max: -0.006236475
       Mean: -0.756489426
Std.Dev.:  0.256342628
Skewness:  0.709054478
Kurtosis: -0.605930731

=====================================================================================================

fBodyAccJerk.meanFreq...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.57604400
        Max:  0.33144928
       Mean: -0.06910179
Std.Dev.:  0.25339535
Skewness: -0.06789055
Kurtosis: -1.50598868

=====================================================================================================

fBodyAccJerk.meanFreq...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.60197142
        Max:  0.19567734
       Mean: -0.22810207
Std.Dev.:  0.19930879
Skewness:  0.04525879
Kurtosis: -1.22191424

=====================================================================================================

fBodyAccJerk.meanFreq...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.6275555
        Max:  0.2301079
       Mean: -0.1376023
Std.Dev.:  0.2072940
Skewness: -0.4675890
Kurtosis: -0.8691600

=====================================================================================================

fBodyGyro.mean...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9931226
        Max:  0.4749624
       Mean: -0.6367396
Std.Dev.:  0.3457982
Skewness:  0.4172749
Kurtosis: -1.0400157

=====================================================================================================

fBodyGyro.mean...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9940255
        Max:  0.3288170
       Mean: -0.6766868
Std.Dev.:  0.3309949
Skewness:  0.7377888
Kurtosis: -0.4711734

=====================================================================================================

fBodyGyro.mean...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9859578
        Max:  0.4924144
       Mean: -0.6043912
Std.Dev.:  0.3831914
Skewness:  0.4446205
Kurtosis: -1.1284163

=====================================================================================================

fBodyGyro.std...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9946522
        Max:  0.1966133
       Mean: -0.7110357
Std.Dev.:  0.2720302
Skewness:  0.4014130
Kurtosis: -1.0517954

=====================================================================================================

fBodyGyro.std...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9943531
        Max:  0.6462336
       Mean: -0.6454334
Std.Dev.:  0.3624336
Skewness:  0.8299924
Kurtosis: -0.0895121

=====================================================================================================

fBodyGyro.std...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9867253
        Max:  0.5224542
       Mean: -0.6577466
Std.Dev.:  0.3352662
Skewness:  0.6310100
Kurtosis: -0.4488254

=====================================================================================================

fBodyGyro.meanFreq...X_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.3957702
        Max:  0.2492094
       Mean: -0.1045510
Std.Dev.:  0.1476856
Skewness:  0.2370506
Kurtosis: -0.6102086

=====================================================================================================

fBodyGyro.meanFreq...Y_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.6668148
        Max:  0.2731413
       Mean: -0.1674075
Std.Dev.:  0.1783038
Skewness: -0.2111703
Kurtosis: -0.1291392

=====================================================================================================

fBodyGyro.meanFreq...Z_mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.50749087
        Max:  0.37707410
       Mean: -0.05718094
Std.Dev.:  0.16477023
Skewness: -0.14440159
Kurtosis:  0.15516140

=====================================================================================================

fBodyAccMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9868006
        Max:  0.5866376
       Mean: -0.5365167
Std.Dev.:  0.4503888
Skewness:  0.4641595
Kurtosis: -1.1969673

=====================================================================================================

fBodyAccMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9876485
        Max:  0.1786846
       Mean: -0.6209633
Std.Dev.:  0.3519331
Skewness:  0.4928612
Kurtosis: -1.1339499

=====================================================================================================

fBodyAccMag.meanFreq.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.31233803
        Max:  0.43584693
       Mean:  0.07612818
Std.Dev.:  0.14005719
Skewness: -0.01640397
Kurtosis: -0.22160656

=====================================================================================================

fBodyBodyAccJerkMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9939983
        Max:  0.5384048
       Mean: -0.5756175
Std.Dev.:  0.4300326
Skewness:  0.4243433
Kurtosis: -1.2925700

=====================================================================================================

fBodyBodyAccJerkMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9943667
        Max:  0.3163464
       Mean: -0.5991609
Std.Dev.:  0.4075300
Skewness:  0.4534157
Kurtosis: -1.3013755

=====================================================================================================

fBodyBodyAccJerkMag.meanFreq.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.125210389
        Max:  0.488088500
       Mean:  0.162545885
Std.Dev.:  0.137446567
Skewness:  0.009982818
Kurtosis: -0.869577633

=====================================================================================================

fBodyBodyGyroMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9865352
        Max:  0.2039798
       Mean: -0.6670991
Std.Dev.:  0.3172334
Skewness:  0.5815305
Kurtosis: -0.7928816

=====================================================================================================

fBodyBodyGyroMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9814688
        Max:  0.2366597
       Mean: -0.6723223
Std.Dev.:  0.2923687
Skewness:  0.4929979
Kurtosis: -0.9551113

=====================================================================================================

fBodyBodyGyroMag.meanFreq.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.45663867
        Max:  0.40952161
       Mean: -0.03603225
Std.Dev.:  0.18023235
Skewness:  0.29239076
Kurtosis: -0.34895692

=====================================================================================================

fBodyBodyGyroJerkMag.mean.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9976174
        Max:  0.1466186
       Mean: -0.7563853
Std.Dev.:  0.2621410
Skewness:  0.9569331
Kurtosis:  0.2758138

=====================================================================================================

fBodyBodyGyroJerkMag.std.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.9975852
        Max:  0.2878346
       Mean: -0.7715171
Std.Dev.:  0.2497282
Skewness:  1.1367861
Kurtosis:  1.1222454

=====================================================================================================

fBodyBodyGyroJerkMag.meanFreq.._mean

-----------------------------------------------------------------------------------------------------

Storage mode: double

        Min: -0.18292360
        Max:  0.42630168
       Mean:  0.12592246
Std.Dev.:  0.10802187
Skewness: -0.01653136
Kurtosis: -0.12249077