# Resource-usage-tracker

A shell script that gathers and displays essential server performance statistics, such as CPU, memory, and disk usage, and lists top resource-intensive processes. It combines Linux commands and utilities to fetch and format real-time data on server status, suitable for Linux servers. Perfect for system monitoring and resource optimization.

## Features

The script provides the following server statistics:
- **Current Time**: Shows the time the script is run.
- **Total CPU Usage**: Displays the total CPU usage as a percentage.
- **Uptime**: Indicates how long the server has been running.
- **Load Average**: Provides the load average over the last 1, 5, and 15 minutes.
- **Memory Usage**: Shows total, used, and free memory, including usage percentages.
- **Disk Usage**: Displays total, used, and free disk space, along with usage percentages.
- **Top Processes by CPU and Memory Usage**: Lists the top 5 processes based on CPU and memory usage.

## Usage

1. Clone this repository.
Clone the repository containing the `cloudUploader` script.
   ```bash
   git clone https://github.com/your-repo/resource-usage-tracker.git
   cd resource-usage-tracker
   ```
2. Ensure the script has execute permissions:
   ```bash
   chmod +x resource-usage-tracker.sh
   ```
3. Run the script:
   ```bash
   ./resource-usage-tracker.sh
   ```
## Output

The script will print a summary of server performance stats to the terminal, formatted as follows:
- **Time**: Displays the current time when the script is executed.
- **CPU Usage**: Shows the total CPU usage percentage, along with uptime and load average.
- **Memory Usage**: Provides details on total, used, and free memory, including usage percentages.
- **Disk Usage**: Displays total, used, and free disk space, with free vs. used percentages.
- **Top Processes**: Lists the top 5 processes by CPU and memory consumption.

## Requirements

- This script is designed to run on any Linux server.
- Requires the following utilities:
  - `top`
  - `free`
  - `df`
