📄 README – VLC Vulnerability Remediation (CVE-2024-46461)

## Overview
This project addresses a real-world software vulnerability identified using **Nessus**. Specifically, it remediates a high-severity **Denial of Service (DoS) vulnerability** in **VLC Media Player < 3.0.21** — identified by **CVE-2024-46461**.

Using a custom PowerShell script, we automate the detection of outdated VLC installations and silently install the secure version (3.0.21) across affected systems.

---

##  What’s Included

- `VLC_PATCH.ps1`: PowerShell script that checks VLC version and installs the secure version if needed.
- `VLC_VULN_NESSUS.png`: Screenshot from Nessus showing the vulnerable VLC finding.

---

## Vulnerability Details
- **CVE ID**: [CVE-2024-46461](https://www.cve.org/CVERecord?id=CVE-2024-46461)
- **Plugin ID**: 208025
- **Severity**: High
- **Description**: A DoS vulnerability caused by integer overflow triggered by a malicious stream.
- **Fix**: Upgrade VLC to 3.0.21 or later.

---

##  Script Behavior
The PowerShell script does the following:
1. Checks if VLC is installed.
2. Verifies the current VLC version.
3. If VLC is missing or outdated, installs version 3.0.21 silently from a shared location.

```powershell
if (-not $InstalledVersion -or [version]$InstalledVersion -lt [version]"3.0.21") {
    Start-Process -FilePath $InstallerPath -ArgumentList "/S" -Wait
}
```

---

## 🧩 Use Cases
- SOC analysts running remediation from Nessus findings
- IT or sysadmins managing software updates via GPO or Intune
- Automation engineers integrating this into SOAR playbooks or patch pipelines

---

## 📈 Value to Employers
This shows practical skills in:
- Vulnerability Management
- PowerShell scripting for automation
- Interpreting CVEs and remediating threats
- Working with Nessus and patch deployment in enterprise environments

---

## ✅ Next Steps / Suggestions
If you're also building a security GitHub portfolio:
- Add 10 SPL detection engineering & threat hunting queries ✅
- Include SOAR automation playbooks ✅
- Keep doing remediation examples like this one (maybe one Windows-based, one cloud-based?) ✅
- Optionally show ticketing automation (ServiceNow, Jira, etc.) or dashboards for risk tracking

---

## 👋 Author
Created by Jack Scott – SOC Analyst | Detection Engineer | Threat Hunter

Connect with me on LinkedIn or GitHub to collaborate on more security automation projects!
