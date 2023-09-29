# Configura los detalles del correo electrónico
# $SmtpServer = "smtp.example.com"
# $SmtpPort = 587
# $SmtpUser = "usachris.10@gmail.com"
# $SmtpPassword = "plemquezbhekrxjy"
# $Recipient = "usachris.10@gmail.com"
# $Subject = "Notificación de éxito del flujo de trabajo de GitHub Actions"
# $Body = "El flujo de trabajo se ejecutó correctamente en GitHub Actions."

# # Envía el correo electrónico
# Send-MailMessage -SmtpServer $SmtpServer -Port $SmtpPort -UseSsl -Credential (Get-Credential -UserName $SmtpUser -Password $SmtpPassword) -From $SmtpUser -To $Recipient -Subject $Subject -Body $Body

# Configura los detalles del correo electrónico
$SmtpServer = "smtp.example.com"
$SmtpPort = 587
$SmtpUser = "usachris.10@gmail.com"
$SmtpPassword = "plemquezbhekrxjy"
$Recipient = "usachris.10@gmail.com"
$Subject = "Notificación de éxito del flujo de trabajo de GitHub Actions"
$Body = "El flujo de trabajo se ejecutó correctamente en GitHub Actions."

# Crear credenciales
$SecurePassword = ConvertTo-SecureString $SmtpPassword -AsPlainText -Force
$Credentials = New-Object System.Management.Automation.PSCredential ($SmtpUser, $SecurePassword)

# Envía el correo electrónico
Send-MailMessage -SmtpServer $SmtpServer -Port $SmtpPort -UseSsl -Credential $Credentials -From $SmtpUser -To $Recipient -Subject $Subject -Body $Body


# Configura los detalles del correo electrónico
# $SmtpServer = "smtp.example.com"
# $SmtpPort = 587
# $SmtpUser = "usachris.10@email.com"
# $SmtpPassword = "plemquezbhekrxjy"
# $Recipient = "usachris.10@email.com"
# $Subject = "Notificación de éxito del flujo de trabajo de GitHub Actions"
# $Body = "El flujo de trabajo se ejecutó correctamente en GitHub Actions."

# # Crear credenciales
# $SecurePassword = ConvertTo-SecureString $SmtpPassword -AsPlainText -Force
# $Credentials = New-Object System.Management.Automation.PSCredential ($SmtpUser, $SecurePassword)

# # Envía el correo electrónico
# Send-MailMessage -SmtpServer $SmtpServer -Port $SmtpPort -UseSsl -Credential $Credentials -From $SmtpUser -To $Recipient -Subject $Subject -Body $Body


# Configura los detalles del correo electrónico
# $SmtpServer = "smtp.example.com"
# $SmtpPort = 587
# $SmtpUser = "usachris.10@email.com"

# # Solicita la contraseña de manera interactiva
# $SecurePassword = Read-Host -AsSecureString -Prompt "Ingresa la contraseña para $SmtpUser"

# # Crea las credenciales
# $Credentials = New-Object System.Management.Automation.PSCredential ($SmtpUser, $SecurePassword)

# # Cuerpo del mensaje
# $Body = "El flujo de trabajo se ejecutó correctamente en GitHub Actions."

# # Envía el correo electrónico
# Send-MailMessage -SmtpServer $SmtpServer -Port $SmtpPort -UseSsl -Credential $Credentials -From $SmtpUser -To $Recipient -Subject $Subject -Body $Body
