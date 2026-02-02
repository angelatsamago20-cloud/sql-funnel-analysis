# Funnel Analysis Project
SQL-based analysis tracking user conversions through a job application funnel.

I created a simple funnel analysis to track how users move through a job application process. The goal was to see where people drop off and suggest ways to improve the overall conversion. I used Excel to generate sample user event data and loaded it into SQL Server for analysis.

# Funnel Steps

-Users visit the website

-Users sign up

-Users complete their profile

-Users submit a job application

# What I found based on the data
-From visits to signups, 75% of users signed up, and most visitors registered successfully.

-From the Signup to profile completion, only 33% completed their profile. This shows the biggest drop-off.

-From Profile completed to application submitted, 100% of users submitted the application, and many of the users who reached this stage finished it.

This data shows that the profile completion step is the mainhurdle in the funnel.

# My Insight

The biggest drop-off happens at the profile completion stage, which might be due to:

-A form that's too long or unclear

-Users are unsure what information is required

# Some ways to improve the funnel could be:
-Simplifying the profile completions form

-Adding a progress indicator to show how close users are to finishing

-Providing tips or guidance to make profile completion easier


# FUNNEL VISUALISATION
This chart shows the number of users at each step of the funnel, visually highlighting the major drop-off at profile completion.
FUNNEL CHART.png
https://github.com/angelatsamago20-cloud/sql-funnel-analysis/blob/main/FUNNEL%20CHART%20.png  

All analysis was done in SQL Server using a table of user events.
The Full query I used is saved in [Funnel_anlysis.sql](https://github.com/angelatsamago20-cloud/sql-funnel-analysis/blob/main/Funnel_anlysis.sql) and calculates both total users at each step and conversion percentage.

