SHOW DATABASES;
USE NETFLIX;
#1) Retrieve all stock records:WAQ to select all columns from netflix_stock.
SELECT * FROM netflix_stock;

#2) Get specific columns:Select the "date","open',"close" and "volume" for all stock entries.
SELECT date,open,close,volume from netflix_stock;

#3)Find highest volume day:Retrieve the date with the highest volume.
SELECT date,volume FROM netflix_stock order by volume desc;

#4) Filter by date:Retrieve stock data from January 2020.
#SELECT * FROM netflix_stock WHERE DATE_FORMAT(date'%y-%m') = '2020-01';
SELECT * FROM netflix_stock WHERE date BETWEEN '2020-01-01' AND '2020-01-31';

#5)Find stock close price for a specific date:Retrieve the close price for March 1,2021.
SELECT * FROM netflix_stock WHERE date = '2021-03-01';

#6)Calculate total volume:Find the total number of shares traded.
SELECT SUM(volume) AS Total_Vol FROM netflix_stock;

#7)Average Closing Price:Calculate the average "Close" price over the dataset.
SELECT AVG(close) AS Total_Avg FROM netflix_stock;

#8)Maximum Stock Price:Retrieve the maximum "high" Price of the stock.
SELECT MAX(high) AS Max_Stock_Price FROM netflix_stock;

#9)Count Trading Days:Count the total number of trading days.
SELECT COUNT(date) AS Total_trading_Days FROM netflix_stock;

#10)Average Volume Per Year:Find the average "volume" of shares traded per year.
SELECT year(date) AS Year,avg(volume) AS Avg_Volume FROM netflix_stock GROUP BY year(date);

#11)Gets Stocks with high volume:List all records where "Volume" is greate the 10 million.
SELECT * FROM netflix_stock WHERE volume > 10000000;

#12)Order Stock by Price:Retrieve the top 5 days with the highest "close"price,in descending order.
SELECT date,close FROM netflix_stock ORDER BY close DESC LIMIT 5;

#13)Retrieve all the stock records from the year 2021.
SELECT * FROM netflix_stock WHERE year(date) = '2021';

#14)Get stock data where close price is Between $50 and $100.
SELECT * FROM netflix_stock WHERE close BETWEEN 50 AND 100;

#15)Find day when the close price was lower than open price.
SELECT date,close,open FROM netflix_stock WHERE close<open;
#SELECT DAY(date) DayOf_Month,close,open FROM netflix_stock WHERE close<open;

#16)How many trading days where there in 2022.
SELECT count(*) AS Total_Days FROM netflix_stock WHERE year(date) = 2022;

#17)Retrieve the close price for all trading days before December 31,2020.
SELECT close,date FROM netflix_stock WHERE date < "2020-12-31";

#18)List all stock records where TrueRange is greater than 5.
SELECT * FROM netflix_stock WHERE TrueRange > 5;

#19)Retrieve the top 10 records with the highest macd values.
SELECT * FROM netflix_stock ORDER BY macd DESC LIMIT 10;

#20)WAQ to calculate the difference b/w high & low price for each day.
SELECT date,(high-low) AS Difference FROM netflix_stock;