# Live Server Stats Script

A **lightweight yet powerful** Bash script to monitor **CPU, Memory, Disk, Load Average, Uptime, Active Users, and Failed Logins** in real-time. This script works on **any Linux distribution**, including **Debian-based (Ubuntu, Kali, etc.)** and **RHEL-based (CentOS, Fedora, Rocky Linux, etc.)**.

## 📌 Features
- ✅ **Real-time CPU & Memory Usage**
- ✅ **Disk Space Overview**
- ✅ **Top 5 CPU & Memory consuming processes**
- ✅ **OS Version Detection** (Supports both RHEL & Debian-based systems)
- ✅ **System Uptime & Load Average**
- ✅ **Number of Logged-in Users**
- ✅ **Failed Login Attempts** for Security Monitoring
- ✅ **No Extra Dependencies** – Uses built-in Linux commands

## 🚀 Installation
Clone the repository or download the script:
```sh
git clone https://github.com/Sachin-960/Server-Stats
chmod +x server_stats.sh
```

## 📌 Usage
Run the script using:
```sh
./server_stats.sh
```
Or if needed, execute with sudo for failed login attempts:
```sh
sudo ./server_stats.sh
```

## 🛠️ Compatibility
This script is tested on:
- **Ubuntu, Debian, Kali Linux** ✅
- **CentOS, RHEL, Fedora, Rocky Linux** ✅

## 🔹 Example Output
```
===================================================
             Live Server Stats Report              
===================================================
Generated on: Mon Mar 31 10:00:00 UTC 2025
---------------------------------------------------
CPU Usage: 23.5%
Memory Usage: Used: 2048MB / Total: 8192MB (25.00% used)
Disk Usage: Used: 50G / Total: 100G (50% used)
Top 5 Processes by CPU Usage:
PID    COMMAND    %CPU
1234   apache2    10.5
5678   mysql      8.2
...
OS Version: Ubuntu 22.04 LTS
Uptime: 2 days, 4 hours, 30 minutes
Load Average: 0.75, 1.20, 0.90
Logged in Users: 3
Failed Login Attempts:
5 192.168.1.100
3 203.0.113.50
===================================================
```
This is a part of **[roadmap.sh](https://roadmap.sh/projects/server-stats)** Devops Project.
