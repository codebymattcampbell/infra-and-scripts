Local Dev Environment Setup (WSL2 + Ubuntu + Docker)

This guide outlines the steps taken to enable virtualization, install Ubuntu with WSL2, and prepare for container and Kubernetes-based development.

✅ BIOS Configuration: Enable Hypervisor

Access BIOS Settings

Restart your PC and enter BIOS (usually Del, F2, or Esc during boot).

Enable Virtualization

Look for a setting called SVM Mode (for AMD) or Intel VT-x (for Intel CPUs).

Set it to Enabled.

Save and Exit BIOS

Reboot your computer.

✅ Install WSL2 and Ubuntu

1. Enable WSL2 & Required Features (PowerShell as Admin):

dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

Then reboot your machine.

2. Install WSL Kernel Update

Download and run from: https://aka.ms/wsl2kernel

Reboot if prompted.

3. Set WSL2 as Default

wsl --set-default-version 2

4. Install Ubuntu (via Command Line or Microsoft Store)

wsl --install -d Ubuntu

Or install from the Microsoft Store by searching for "Ubuntu".

5. Confirm WSL Version

wsl --list --verbose

Expected output:

NAME            STATE    VERSION
* Ubuntu        Running  2

✅ Next Steps (not yet complete)
