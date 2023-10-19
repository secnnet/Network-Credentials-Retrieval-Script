# Network Credentials Retrieval Script

**Retrieve network credentials without prompts.**

### Prerequisites:
- Windows OS
- PowerShell

### Usage:
1. Open PowerShell.
2. Navigate to script directory.
3. Run `.\\NetworkCredentialsRetrievalScript.ps1`.

### Script Steps:
- Retrieves user's network credentials.
- Displays username and password.

### Notes:
- Uses `Get-Credential` with `-Credential $null`.
- Outputs as "domain\\username".
- Password in plaintext; handle securely.

### Errors:
Basic error handling included. Customize as needed.

### Disclaimer:
Use responsibly. Ensure permissions before use.

### License:
MIT
