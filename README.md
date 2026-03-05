# Automation Shell Scripts for Daily Use

A collection of practical automation scripts written in **Bash** to simplify common tasks in Linux environments.

The goal of this repository is to practice **shell scripting, system automation, and DevOps fundamentals** by building small but useful utilities that help manage and monitor Linux systems.

These scripts are designed primarily for **Debian-based systems** such as Ubuntu.

---

## 📌 Project Purpose

Automation is one of the core principles of DevOps and system administration. Instead of manually repeating commands, these scripts automate routine tasks such as:

* Checking installed packages
* Installing missing packages
* Monitoring system health
* Checking service status
* Monitoring disk usage

This repository will grow over time as new automation ideas are implemented and existing scripts are improved.

---

## 🛠 Technologies Used

* **Bash / Shell Scripting**
* **Linux (Debian-based distributions)**
* **APT Package Manager**
* **DPKG Package System**
* **System utilities (df, ps, uptime, systemctl)**

---

## 📂 Repository Structure

```
automation-shell-scripts/
│
├── scripts/
│   ├── package_helper.sh
│   ├── system_health.sh
│   ├── service_checker.sh
│   └── disk_monitor.sh
│
└── README.md
```

Each script focuses on automating a specific system task.

---

## ⚙️ Available Scripts

### 📦 Package Helper

`package_helper.sh`

Features:

* List installed packages using **dpkg**
* List packages installed via **apt**
* List installed **snap** packages
* Check if a package is already installed
* Install packages only if they are missing
* Interactive command-line menu

---

### 🖥 System Health Monitor

`system_health.sh`

Displays basic system health information including:

* Hostname
* System uptime
* CPU load average
* Memory usage
* Disk usage
* Top memory-consuming processes
* Logged-in users

---

### 🔧 Service Status Checker

`service_checker.sh`

Allows you to check the status of multiple services at once using **systemctl**.

Example:

```
Enter service names: nginx docker ssh
```

Output shows whether each service is **running or not running**.

---

### 💾 Disk Usage Monitor

`disk_monitor.sh`

Monitors disk usage across mounted partitions and displays warnings when disk usage exceeds a predefined threshold.

Example output:

```
WARNING: /dev/sda1 mounted on / is 85% full
```

---

## ▶️ How to Use

### 1. Clone the repository

```
git clone https://github.com/your-username/automation-shell-scripts.git
```

### 2. Move into the project directory

```
cd automation-shell-scripts
```

### 3. Give execution permission to scripts

```
chmod +x scripts/*.sh
```

### 4. Run a script

Example:

```
./scripts/package_helper.sh
```

or

```
./scripts/system_health.sh
```

---

## ⚠️ Requirements

* Linux system (Debian / Ubuntu recommended)
* `sudo` privileges for installing packages
* `systemctl` for service checks

---

## 🚀 Future Improvements

Planned improvements include:

* Logging script outputs
* Automatic alerts for high system load
* Support for multiple Linux distributions
* Log monitoring and analysis scripts
* Network and port monitoring utilities

---

## 🤝 Contributing

Suggestions and improvements are welcome. Feel free to open an issue or submit a pull request.

---

## 📜 License

This project is open source and available under the **MIT License**.
