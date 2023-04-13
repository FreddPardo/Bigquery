--How many crimes are per primary_type and description? test1
SELECT 
  primary_type,
  description, 
  count(primary_type) as  prim_count --metrics
FROM `bigquery-public-data.chicago_crime.crime` 
GROUP BY primary_type, description
order by prim_count ASC

--2.- The top 5 years with more homicides
SELECT 
  primary_type,
  year,
  count(primary_type) as  prim_count --metrics
FROM `bigquery-public-data.chicago_crime.crime` 
where primary_type='HOMICIDE'
GROUP BY primary_type, year
order by prim_count DESC
LIMIT 5


--3.- The top 5 years with less
SELECT 
  primary_type,
  year,
  count(primary_type) as  prim_count --metrics
FROM `bigquery-public-data.chicago_crime.crime` 
where primary_type='HOMICIDE'
GROUP BY primary_type, year
order by prim_count ASC
LIMIT 5

--4.- How many arrest are per location
SELECT 
  arrest,
  location,
  count(arrest) as  prim_count --metrics
FROM `bigquery-public-data.chicago_crime.crime` 
where arrest= true 
GROUP BY arrest, location
order by arrest ASC


--5.- How many crimes are per primary_type and description
SELECT 
  primary_type,
  description,
  count(primary_type) as  prim_count --metrics
FROM `bigquery-public-data.chicago_crime.crime` 
GROUP BY primary_type, description
order by prim_count ASC