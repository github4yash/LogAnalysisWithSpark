#!/bin/sh
 #--master spark://master:7077 target/uber-log-analyzer-2.0.jar
#spark-submit --class "com.herakles.loganalysis.LogAnalyzerAppMain" --master spark://127.0.0.1:7077 target/LogAnalysis-0.0.1-SNAPSHOT.jar --logs-directory /tmp/logs --output-html-file /tmp/log_stats.html --window-length 30 --slide-interval 5 --checkpoint-directory /tmp/log-analyzer-streaming
spark-submit --class "com.herakles.loganalysis.LogAnalyzerAppMain" target/LogAnalyzer-LogAnalysis-0.0.1-SNAPSHOT.jar --logs-directory /tmp/logs --output-html-file /tmp/log_stats.html --window-length 30 --slide-interval 5 --checkpoint-directory /tmp/log-analyzer-streaming
