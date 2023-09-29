# Configura los detalles del correo electrónico
$SmtpServer = "smtp.gmail.com"
$SmtpPort = 587
$SmtpUser = "usachris.10@gmail.com"
$SmtpPassword = "plemquezbhekrxjy"
$Recipient = "usachris.10@gmail.com"
$Subject = "Nuevo trabajo"
$Body = "El flujo de trabajo se ejecutó correctamente en GitHub Actions."

# Crear credenciales
$SecurePassword = ConvertTo-SecureString $SmtpPassword -AsPlainText -Force
$Credentials = New-Object System.Management.Automation.PSCredential ($SmtpUser, $SecurePassword)

# Envía el correo electrónico
Send-MailMessage -SmtpServer $SmtpServer -Port $SmtpPort -UseSsl -Credential $Credentials -From $SmtpUser -To $Recipient -Subject $Subject -Body $Body