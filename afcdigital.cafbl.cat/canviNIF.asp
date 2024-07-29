<!--#INCLUDE FILE="scripts/dataaccess.asp"-->
<%

' Recuperamos la clave publica del certificado de ejemplo
	sql = "SELECT * from [CIF_ERRONIS]"
	set rs = GetRecordset(sql)
	if not rs.eof and not rs.bof then
		do while not rs.EOF

        
       			txt_cif_ok = replace(rs("CIF"), "E-", "H")
        		txt_cif_ok = replace(txt_cif_ok, "E", "H")

        		'Response.Write "CIF Erroni: " & rs("CIF") & "  ---------->   CIF OK: " & txt_cif_ok & "<br>"

        		sql_update_1 = "update [CD_documentacio] set [nif_cli]='"&txt_cif_ok&"' where [nif_cli]='"&rs("CIF")&"'"
        		sql_update_2 = "update [CD_documentacio_iterator] set [nif_cli]='"&txt_cif_ok&"' where [nif_cli]='"&rs("CIF")&"'"
				Response.Write sql_update_1 & "<br>"
				Response.Write sql_update_2 & "<br>"

				'Response.Write "<br><br><br>"
				

			  rs.MoveNext   
		loop
	end if
	rs.close
	set rs=Nothing


%>
