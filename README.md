# GettinandCleaning
Project

1 we read all the test and train tables given

2 then we name the variables accordingly, "subject", "activity", and the names given in file "features"

3 we colunm bind both test and train data in the following order, subject, activity, X-s.

4 then we combine train and test data with rbind (head would be train and tail would be test)

5 then we factorize the activities and give them the corresponding names ("WALKING", "WALKING_UPSTAIRS", etc.)

6 next we selct the data with only mean and st.dev measurements extracted.

7 now the last step involves selecting mean for each of the variable along with each subject and activity. this step is missing in the code.
