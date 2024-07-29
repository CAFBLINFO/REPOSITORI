<%
on error resume next

response.write "Hola<br>"

Set FTP = Server.CreateObject("csFTPQuick.FTP")
Set FTPCommands = Server.CreateObject("csFTPQuick.FTPCommands")	
Response.Write FTP.Version & "<br><br>"

response.end

%>
