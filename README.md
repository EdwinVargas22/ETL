# Life Expectancy vs GDP

![world bank](https://user-images.githubusercontent.com/60836219/101261987-f9257f80-36ef-11eb-88b4-666df8d51498.png)

## Problem Statement - Use Case
We are looking to see if there is a correlation between GDP and life expectancy. Current assumptions that the higher the GDP, the longer the life expectancy. 

## Extract
Our original data sources are placed in the Resources folder. However, links are below:
* https://www.kaggle.com/greeshmagirish/worldbank-data-on-gdp-population-and-military?select=API_NY.GDP.MKTP.CD_DS2_en_csv_v2_559588.csv
* https://data.worldbank.org/indicator/SP.DYN.LE00.IN?end=2018&start=1960&view=chart 

## Transform
For our use case, we chose to go with a comparison from the recession year of 2008 and 3 years after to see if there was a change in life expectancy after 2008. 
A few transformations and cleanup required: 
* Ensuring that each dataset aligned with formatting across the board. 
* Pulling out data for the years of 2008, 2009, 2010, 2011. 
* Renaming the columns after merging the datasets. 
* Dropping useless data, including those with NaN values. 
* Ensuring that our 2008-2011 values for GDP and Life Expectancy were Float values and not object.

## Load
We chose to have 3 different tables set up in the schema. 1 strictly for GDP, 1 strictly for Life Expectancy, and the last for GDP and Life Expectancy combined. 

This would offer the ability to strictly view each dataset (GDP and Life Expectancy) within its own queries and allow for the user to create join statements based on use case/need at any given moment.

We also created the merged dataset as a table so that again, the user can dive into a pre-created table to pull queries a little quicker. 

Our dataset was relational as there were commonalities within the metadata. We were able to link country and country code across multiple datasets.

kaggle.com
WorldBank Data on GDP, Population and Military
GDP, Population, Land and Military Expenses of the Countries of the World

data.worldbank.orgdata.worldbank.org
Life expectancy at birth, total (years) | Data
Life expectancy at birth, total (years) from The World Bank: Data
