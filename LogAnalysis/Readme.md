# Log Analysis using Spark

Using DataBricks examples.

See: https://www.gitbook.com/book/databricks/databricks-spark-reference-applications/details

See: https://github.com/databricks/reference-apps

See: https://databricks.gitbooks.io/databricks-spark-reference-applications/content/logs_analyzer/index.html

Install java 8, scala and then spark and make sure to update your PATH variable. (follow these steps: https://www.tutorialspoint.com/apache_spark/apache_spark_installation.htm)
I have these in my ~/.bashrc:
export PATH=$PATH:/usr/local/scala-2.11.8/bin:/usr/local/spark-2.2.0-bin-hadoop2.7/bin

## Here is a script to launch your log analyzer (run.sh)
``` bash
#!/bin/sh
#--master spark://master:7077 target/uber-log-analyzer-2.0.jar
#spark-submit --class "com.herakles.loganalysis.LogAnalyzerAppMain" --master spark://127.0.0.1:7077 target/LogAnalyzer-LogAnalysis-0.0.1-SNAPSHOT.jar --logs-directory /tmp/logs --output-html-file /tmp/log_stats.html --window-length 30 --slide-interval 5 --checkpoint-directory /tmp/log-analyzer-streaming
spark-submit --class "com.herakles.loganalysis.LogAnalyzerAppMain" target/LogAnalyzer-LogAnalysis-0.0.1-SNAPSHOT.jar --logs-directory /tmp/logs --output-html-file /tmp/log_stats.html --window-length 30 --slide-interval 5 --checkpoint-directory /tmp/log-analyzer-streaming
```
You can then go to https://localhost:4040 to see the results.