<!--#INCLUDE FILE="scripts/dataaccess.asp"-->
<!--#include file="scripts/aspJSON1.17.asp" -->

<%
Dim http: Set http = Server.CreateObject("WinHttp.WinHttpRequest.5.1")
Dim url, data
Dim PublicKey

url = "https://pedidos.cafirma.com/admin/web/index.php/RestApi/Status/Auth"

' Recuperamos la clave publica del certificado de ejemplo
	sql = "SELECT * from [CD_Users_Mails] where [User]='EBOSCH'"
	set rs = GetRecordset(sql)
	if not rs.eof and not rs.bof then
		do while not rs.EOF
				txt_public_key = rs("PublicKey")
        IntegratorKey=rs("IntegratorKey")
        Userid=rs("UserId")
        User_Status=rs("UserStatus")
        Pass_Status=rs("PassStatus")
        User_Pass_Encoded=rs("UserPassEncoded")
        txt_certpin=rs("CertPin")
        txt_certuser=rs("CertUser")
			  rs.MoveNext   
		loop
	end if
	rs.close
	set rs=Nothing

PublicKey = "{'publicKey': '" & txt_public_key & "'," & "'certpin': '" & txt_certpin & "'," & "'certuser': '" & txt_certuser & "'" & "}"
PublicKey = replace(PublicKey, "'", """")

Response.Write "PublicKey: " & PublicKey & "<br><br><br>"

on error resume next

With http
  Call .Open("GET", url, False)
  Call .SetRequestHeader("Content-Type", "application/json")
  Call .SetRequestHeader("Accept", "application/json")
  Call .SetRequestHeader("userid", Userid)
  Call .SetRequestHeader("IntegratorKey", IntegratorKey)
  Call .SetRequestHeader("Authorization", "Basic " & "Y2FmYmxzdGF0dXM6WXpSbVlteHpkRFIwZFhNPQ==")
  Call .Send(PublicKey)
End With

Response.Write "http.ResponseText: " & http.ResponseText & "<br><br>"

txt_TOKENSTRING=" ------- VACIO ------- "

if mid(http.ResponseText,1,28)="{""result"":{""result"":""Error""," then
else

  Set oJSON = New aspJSON
  oJSON.loadJSON(http.ResponseText)
  set variables = oJSON.data("data")
  for each itm in variables
      if Not IsObject(variables.item(itm)) then
        if itm="token" then
          txt_TOKENSTRING = variables.item(itm)
        end if
      end if
  next

end if

Response.Write "txt_TOKENSTRING: " & txt_TOKENSTRING & "<br><br>"

If Err.Number <> 0 Then
	Response.write(Err.Number)
	response.write("<br>")
	response.write(Err.description)
	response.write("<br>")
	Response.Flush
end if         

on error goto 0   

%>
