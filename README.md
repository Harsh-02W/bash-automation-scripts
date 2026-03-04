# Automation Shell Scripts for Daily Use

A collection of simple automation scripts written in **Bash** to solve common day-to-day tasks in Linux systems.
The goal of this repository is to practice **shell scripting, system automation, and DevOps fundamentals** by building small useful tools.

These scripts are designed primarily for **Debian-based systems** such as Ubuntu.

---

## 📌 Project Purpose

Automation is one of the core principles of DevOps and system administration.
Instead of repeating the same commands manually, these scripts automate common tasks such as:

* Checking installed packages
* Installing missing packages
* Listing system packages
* Managing system utilities

This repository will grow gradually by adding **new automation scripts regularly** and improving existing ones.

---

## 🛠 Technologies Used

* **Bash / Shell Scripting**
* **Linux (Debian-based distributions)**
* **APT Package Manager**
* **DPKG Package System**

---

## 📂 Repository Structure

```
automation-shell-scripts/
│
├── scripts/
│   └── package_helper.sh
└── README.md
```

More scripts will be added as the project evolves.

---

## ⚙️ Script Features

The current script provides the following functionality:

* List installed packages using **dpkg**
* List packages installed via **apt**
* List installed **snap** packages
* Check if a package is already installed
* Install packages only if they are missing
* Interactive command-line menu

This ensures the script avoids reinstalling packages unnecessarily.

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

### 3. Give execution permission

```
chmod +x package_helper.sh
```

### 4. Run the script

```
./package_helper.sh
```

---

## 📖 Example Usage

The script will show an interactive menu:

```
1) List all installed packages
2) List packages installed via apt
3) List snap packages
4) Install packages
5) Exit
```

Choose the desired option and follow the prompts.

---

## ⚠️ Requirements

* Linux system (Debian / Ubuntu recommended)
* `sudo` privileges for installing packages

---

## 🚀 Future Improvements

Planned improvements include:

* Logging installation results
* Support for multiple Linux distributions
* Automatic dependency checks
* System monitoring scripts
* Log analysis automation

---

## 🤝 Contributing

Suggestions and improvements are always welcome.
Feel free to open an issue or submit a pull request.

---

## 📜 License

This project is open source and available under the **MIT License**.
