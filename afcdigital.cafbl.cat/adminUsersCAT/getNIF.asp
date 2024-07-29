<%
Server.ScriptTimeout = 30000
Response.Buffer = True
Const adTypeBinary = 1
strFilePath = "F:\vhosts\cafbl.cat\gestor.documental.cd\" & Request("fitxer")

Response.Clear
Response.Expires = 0
Response.ContentType = "Download-File"
Response.AddHeader "Content-Disposition","attachment; filename=" & Request("fitxer")

Set oStream = Server.CreateObject("ADODB.Stream")
oStream.Type = adTypeBinary
oStream.Open
oStream.LoadFromFile(strFilePath)
Response.AddHeader "Content-Length", oStream.Size
Response.CharSet = "UTF-8"

For i = 0 To oStream.Size
	i = i + 128000
	Response.BinaryWrite(oStream.Read(128000))
	Response.Flush
Next

oStream.Close
Set oStream = Nothing
Response.Flush
Response.End
%>
