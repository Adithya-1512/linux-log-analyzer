#!/bin/bash

echo "===== Linux Log Analyzer ====="

LOGFILE="/var/log/syslog"

echo ""
echo "Total Error Messages:"
grep -i "error" $LOGFILE | wc -l

echo ""
echo "Total Warning Messages:"
grep -i "warning" $LOGFILE | wc -l

echo ""
echo "Top 10 Error Messages:"
grep -i "error" $LOGFILE | sort | uniq -c | sort -nr | head -10
