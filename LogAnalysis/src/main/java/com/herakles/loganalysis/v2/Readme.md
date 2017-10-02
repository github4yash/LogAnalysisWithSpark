To run the streaming examples, you will tail a log file into netcat to send to Spark. This is not the ideal way to get data into Spark in a production system, but is an easy workaround for a first Spark Streaming example. We will cover best practices for how to import data for Spark Streaming in Chapter 2.

In a terminal window, just run this command on a logfile which you will append to:

% tail -f [[YOUR_LOG_FILE]] | nc -lk 9999
If you don't have a live log file that is being updated on the fly, you can add lines manually with the included data file or another your own log file:

% cat ../../data/apache.accesslog >> [[YOUR_LOG_FILE]]
When data is streamed into Spark, there are two common use cases covered: