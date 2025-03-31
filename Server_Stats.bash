cpu_usage() {
    top -bn1 | grep "%Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%\n"}'
}
memory_usage() {
    free -m | awk 'NR==2{printf "Memory Usage: Used: %dMB / Total: %dMB (%.2f%% used)\n\n", $3, $2, $3/$2*100}'
}
disk_usage() {
    df -h / | awk 'NR==2{printf "Disk Usage: Used: %s / Total: %s (%s used)\n\n", $3, $2, $5}'
}
top5_cpu() {
    echo "Top 5 Processes by CPU Usage:-"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 #I used ps istead of top because of clean formatting and more script freindly.
    echo -e "\n"
}
top5_mem() {
    echo "Top 5 Processes by Memory Usage:-"
    ps -eo pid,comm,%mem --sort=%mem |head -n 6
    echo -e "\n"
}
os_version() {
    echo -e "OS Version: $(lsb_release -d | cut -f2) \n"
}
uptime() {
    echo -e "Uptime: $(uptime -p) \n"
}
load_average() {
    echo -e "Load Average: $(uptime | awk -F 'load average:' '{print $2}' | xargs) \n"
}
users_logged_in() {
    echo -e "Logged in Users: $(who | wc -l) \n"
}
failed_login() {
    grep "Failed password" /var/log/auth.log | awk '{print $(NF-5)}' | sort | uniq -c | sort -nr
}
echo "==================================================="
echo "             Live Server Stats Report              "
echo "==================================================="
echo "Generated on: $(date)"
echo -e "---------------------------------------------------\n"
cpu_usage
memory_usage
disk_usage
top5_cpu
top5_mem
os_version
uptime
load_average
users_logged_in
failed_login
echo "==================================================="