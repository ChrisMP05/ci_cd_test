# Configura los detalles del correo electrónico
$SmtpServer = "smtp.example.com"
$SmtpPort = 587
$SmtpUser = "usachris.10@email.com"
$SmtpPassword = "plemquezbhekrxjy"
$Recipient = "usachris@email.com"
$Subject = "Notificación de éxito del flujo de trabajo de GitHub Actions"
$Body = "El flujo de trabajo se ejecutó correctamente en GitHub Actions."

# Envía el correo electrónico
Send-MailMessage -SmtpServer $SmtpServer -Port $SmtpPort -UseSsl -Credential (Get-Credential -UserName $SmtpUser -Password $SmtpPassword) -From $SmtpUser -To $Recipient -Subject $Subject -Body $Body
