archive-logs.sh is a simple Bash script designed to archive and compress .log files from a specified log directory. It allows you to automate the process of storing logs in a compressed format, helping you save disk space and maintain organized logs. The script accepts the log directory as an argument, creates a backup directory for archived logs, and compresses the logs with a timestamped filename.

Features
✅ Accepts a log directory as an argument.

✅ Compresses .log files from the provided directory into a .tar.gz archive.

✅ Archives logs into a new directory archived_logs inside the provided directory.

✅ Creates a timestamped archive for easy identification.

✅ Can be scheduled to run automatically at regular intervals using cron.

**Installation & Usage**
1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/archive-logs.git
   cd archive-logs
2. **Make the script executable**
   ```bash
   chmod +x archive-logs.sh
   
3. **Run the script**
   ```bash
   ./archive-logs.sh /path/to/log/directory
   
Replace /path/to/log/directory with the directory containing the .log files you want to compress. For example:
   ```bash
   ./archive-logs.sh /var/log
   # This will create an archive in the archived_logs/ folder inside /var/log.
