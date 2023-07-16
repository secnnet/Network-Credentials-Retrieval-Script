<#
This script retrieves the network credentials of the current user without prompting for credentials.
It then formats and displays the username and password.
#>

try {
    # Get the network credentials of the current user
    $credentials = (Get-Credential -Credential $null).GetNetworkCredential()

    # Format and display the username
    $username = $credentials.UserName
    if ($credentials.Domain -ne [string]::Empty) {
        # If the domain is not empty, format the domain and username as "domain\username"
        $username = "{0}\{1}" -f $credentials.Domain, $username
    }

    # Display the formatted username and password
    $result = @{
        User = $username
        Password = $credentials.Password
    }

    # Output the result in list format
    $result | Format-List
}
catch {
    # Error occurred, handle the exception (if needed)
    # In this case, we are simply catching and ignoring any errors
}
