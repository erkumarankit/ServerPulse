# 🚀 ServerPulse

> Monitor server health in seconds.

A lightweight Bash script that analyzes basic server performance statistics on any Linux server. ServerPulse provides a quick overview of system health, helping developers, system administrators, and DevOps engineers monitor resource usage from the terminal.

![Linux](https://img.shields.io/badge/Linux-Compatible-green)
![Bash](https://img.shields.io/badge/Bash-Script-blue)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

## ✨ Features

* 📊 Total CPU Usage
* 🧠 Total Memory Usage (Used vs Free + Percentage)
* 💾 Total Disk Usage (Used vs Free + Percentage)
* 🔥 Top 5 Processes by CPU Usage
* 🚀 Top 5 Processes by Memory Usage

### Bonus Statistics

* 🐧 OS Version
* ⏱️ System Uptime
* 📈 Load Average
* 👥 Logged-in Users
* 🔐 Failed Login Attempts

---

## 📂 Project Structure

```text
ServerPulse/
├── server-stats.sh
└── README.md
```

---

## 🛠️ Prerequisites

* Linux Operating System
* Bash Shell
* Standard Linux utilities:

  * top
  * free
  * df
  * ps
  * uptime
  * who

---

## ⚡ Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/ServerPulse.git
cd ServerPulse
```

Make the script executable:

```bash
chmod +x server-stats.sh
```

---

## ▶️ Usage

Run the script:

```bash
./server-stats.sh
```

or

```bash
bash server-stats.sh
```

---

## 📊 Example Output

```text
======================================
      SERVER PERFORMANCE STATS
======================================

CPU Usage:
Used: 18.5%

Memory Usage:
Used: 4256 MB
Free: 3870 MB
Usage: 52.38%

Disk Usage:
Used: 45G
Free: 55G
Usage: 45%

Top 5 Processes by CPU Usage:
PID   COMMAND      %CPU
1245  java         32.4
5678  chrome       21.8

Top 5 Processes by Memory Usage:
PID   COMMAND      %MEM
1245  java         15.4
5678  chrome       10.8
```

---

## 🎯 Learning Objectives

This project helps you learn:

* Linux System Administration
* Bash Scripting
* Process Monitoring
* Resource Utilization Analysis
* DevOps Fundamentals

---

## 🔗 Project Reference

Built as part of the Roadmap.sh Server Stats Project:

https://roadmap.sh/projects/server-stats

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push your branch
5. Open a Pull Request

---

## ⭐ Show Your Support

If you found this project useful, please consider giving it a star ⭐.

---

## 📜 License

This project is licensed under the MIT License.
