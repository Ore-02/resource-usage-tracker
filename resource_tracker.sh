#! /bin/bash


date "+DATE: %D TIME: %T"

#Total CPU usage
#top -bn1 | grep "%Cpu(s)" | awk '{print 100 - $8"%"}' 

#Combined command 
top -bn1 | grep -E "top -|%Cpu" | awk '
/top -/ {uptime = $5}
/top -/ {load_avg = $10" "$11" "$12}
/%Cpu/ {cpu = 100 - $8}
END {print "CPU Usage: " cpu "%" "\nUptime: " uptime "\nLoad Average: " load_avg }'

#Total memory usage (Free vs Used including percentage)
free -h | grep Mem | awk '
{total_mem = $2}
{used_mem = $3}
{free_mem = $4}
{used_mem_percent = ($3/$2)* 100}
{free_mem_percent = ($4/$2)* 100}
END {print "Total Memory: " total_mem "\nUsed Memory: " used_mem "("used_mem_percent"%"")" "\nFree Memory: " free_mem "("free_mem_percent"%"")"'}

#Total disk usage (Free vs Used including percentage)
df -h | grep "/dev/sda2" | awk '
{total_disk = $2}
{used_disk = $3}
{free_disk = $4}
{used_disk_percent = int(($3/$2)* 100)}
{free_disk_percent = int(($4/$2)* 100)}
END {print "Total Disk Space: " total_disk "\nUsed Disk Space: " used_disk "("used_disk_percent"%"")" "\nFree Disk Space: " free_disk "("free_disk_percent"%"")"'}

#Top 5 processes by CPU usage
echo "*****Top 5 processes by CPU usage*****"
top -bn1 | awk 'NR>=8 {print $0}' | sort -nr -k9 | head -5

#Top 5 processes by memory usage
echo "*****Top 5 processes by Memory usage*****"
top -bn1 | awk 'NR>=8 {print $0}' | sort -nr -k10 | head -5
