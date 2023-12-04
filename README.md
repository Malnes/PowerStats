# Power Platform Report

This PowerShell script is designed to assist IT administrators in understanding current level of adoption of the Power Platform within their organization. It provides a high-level overview, showing the number of active resources within each category, such as Power Apps and Power Automate flows. The script's primary purpose is to quantify these resources in a straightforward manner, enabling IT teams to gauge the overall usage and adoption of the Power Platform in their organization. This aggregated data is crucial for understanding whether the current scale of Power Platform activity warrants the establishment of a more structured governance framework, like a Center of Excellence.

## Prerequisites

- PowerShell 7.* or higher
- User access to Microsoft PowerApps and Power Automate with administrative privileges
  
## Usage

To use the script, simply download the **PowerStats.ps1** file to your local machine. Once downloaded, run the script in a PowerShell terminal. The script will automatically handle the installation of the required "Microsoft.PowerApps.Administration.PowerShell" module (if not already installed) and perform user authentication against the Power Platform. Ensure that you have the necessary administrative privileges on the Power Platform for the script to execute properly.

> [!NOTE]
>
> - When running the script, be aware that the authentication popup might sometimes be obscured behind other windows. Ensure to look for and complete any authentication processes.
> - Also, you may be required to authenticate multiple times depending on your system's security settings and network policies. Respond to all authentication prompts for the script to function correctly.

## Output
The script outputs counts of resources like environments, flows, PowerApps, virtual agents, and custom connectors. It also reports on the number of unique active users for flows and PowerApps. Additional details about Power Platform tenant settings are displayed, including environment creation restrictions, capacity allocation rules, and more.
