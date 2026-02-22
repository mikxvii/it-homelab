# IT Home Lab
## Overview
In the creation of this home lab, I was able to familizarize myself with IT infrastructure concerning a Windows Server, Active Directory and cloud administration on Azure
## Project 1: Windows Server & Active Directory

### Environment
- Platform: Microsoft Azure
- OS: Windows Server 2025 Datacenter
- Domain: mike.local

### What I Configured
- Promoted server to Domain Controller
- Created Organizational Units: Engineering, HR, Finance
- Created user accounts across each department
- Configured Group Policy Object (Security Policy) enforcing:
  - Minimum password length: 10 characters
  - Password complexity: Enabled
  - Maximum password age: 90 days
  - Screen lock after 600 seconds (10 minutes)
- Set up shared folder (Engineering-Share) with permission-based access
- Created security group (Engineering-Team) and managed membership

### IT Tasks Simulated
- Disabled and re-enabled user accounts (employee termination/reinstatement)
- Reset user passwords with forced change at next logon
- Managed security group membership
- Configured shared folder access control by department

## Network Diagram
For now just note that you'll add a diagram here — we'll create one using draw.io after.
