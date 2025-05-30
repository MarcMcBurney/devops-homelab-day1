# DevOps Homelab – Day 1

Welcome to my DevOps Homelab. This repository tracks my journey of setting up and practicing DevOps tools and principles on a repurposed iMac running Ubuntu Linux.

In Day 1, I focused on the basics: setting up a LAMP stack, automating tasks with Bash scripts, and using cron jobs to monitor system health. Below are the details of the setup and actions I’ve taken.

---

## 🛠️ Setup and Requirements

### Prerequisites:
- **Ubuntu** 22.04 (or any Ubuntu-based system)
- **Git** installed and configured
- **Apache2**, **MySQL**, **PHP** installed (via LAMP stack setup)
- **cron** for scheduling jobs

---

## 📄 Files in This Repo

### 1. `hello.sh`
A simple Bash script that prints a greeting message. It’s a basic exercise to get started with Bash scripting.

### 2. `install_lamp.sh`
A script that automates the installation of the **LAMP stack** (Linux, Apache, MySQL, PHP) on an Ubuntu server. This script updates the system, installs Apache, MySQL, and PHP, and restarts Apache after installation.

### 3. `apache_status_check.sh`
A Bash script that checks if **Apache2** is active and logs the status with a timestamp. The log is stored in the `logs/` folder.

### 4. `logs/`
This folder contains logs generated by the `apache_status_check.sh` script. Each log file is named by the current date and stores the hourly status of Apache.

---

## 🕰️ Automating Apache Status Monitoring with Cron

I set up a cron job to run the `apache_status_check.sh` script every hour. This script checks the status of Apache and appends the result active or to a log file.

### Steps to Set Up Cron:

1. Open the crontab editor:
   ```bash
   crontab -e
   ```

2. Choose the editor you prefer (e.g., `nano`).

3. Add the following line to schedule the script to run every hour:
   ```bash
   0 * * * * /home/YOUR_USERNAME/devops-homelab-day1/apache_status_check.sh
   ```

4. Save and exit. The cron job will now run every hour and check the status of Apache.

---

## 🚀 How to Use

### Clone the Repository:

```bash
git clone https://github.com/MarcMcBurney/devops-homelab-day1.git
cd devops-homelab-day1
```

### 1. **Run `hello.sh`**:

Start by running a basic script that greets you:

```bash
chmod +x hello.sh
./hello.sh
```

### 2. **Install the LAMP Stack with `install_lamp.sh`**:

Next, automate the installation of your LAMP stack with the following script:

```bash
chmod +x install_lamp.sh
./install_lamp.sh
```

This will install Apache, MySQL, and PHP on your system.

### 3. **Run the Apache Status Script Manually**:

To check if Apache is running right away, execute the status check script:

```bash
chmod +x apache_status_check.sh
./apache_status_check.sh
```

You can view the status in the log file:

```bash
cat logs/apache_status_$(date +%Y-%m-%d).log
```

### 4. **Set Up the Cron Job**:

To automate the status check every hour, add the cron job:

```bash
crontab -e
```

Then insert this line to run the script every hour:

```
0 * * * * /home/YOUR_USERNAME/devops-homelab-day1/apache_status_check.sh
```

Save and exit, and the job will run every hour to monitor Apache’s status.

