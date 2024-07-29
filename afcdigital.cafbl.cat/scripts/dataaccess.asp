<% 
'******************************************************************
'[NO TOCAR]
Public Const CONST_CONN = "PROVIDER=SQLOLEDB;DATA SOURCE=192.168.1.14;UID=qdb450;PWD=PswSQLcaf01;DATABASE=qdb450"
'[NO TOCAR]
'******************************************************************
Set conexion_session = AbreConexion

function AbreConexion

	dim conn	'objeto conexion
	'abrimos la conexión
    Set conn = Server.CreateObject("ADODB.Connection")
    conn.open CONST_CONN
	Set AbreConexion = conn
	
	dim rs_Language
	Set rs_Language = Server.CreateObject("ADODB.Recordset") 
	rs_Language.ActiveConnection =conn 
	rs_Language.Open "set language english"
	set rs_Language = nothing

	Set conn = Nothing

End function

function GetRecordset (sql)

	dim comm	'objeto command
	dim conn	'objeto conexion
	dim rs		'objeto rs
	
	'abrimos la conexión
    Set conn = conexion_session

    'abrimos el command y el recordset
    Set comm = Server.CreateObject("ADODB.Command")
    Set rs = Server.CreateObject("ADODB.Recordset")

	rs.CursorType = 3
	rs.LockType = 3

	'inicializamos el command
    comm.CommandText = sql
    set comm.ActiveConnection = conn

    'abrimos el recordset
    rs.CursorLocation = 3
    rs.Open comm
    If not(rs.bof and rs.eof) Then
		'si hay algo, devolvemos el array de filas
		rs.MoveFirst
    end if
    set GetRecordset = rs
    set rs=nothing
    set conn=nothing
    set comm=nothing
    
end function

function UpdateRecordset (sql)

	dim comm	'objeto command
	
    'abrimos el command y el recordset
    Set comm = Server.CreateObject("ADODB.Command")

	'inicializamos el command
    comm.CommandText = sql
    set comm.ActiveConnection = conexion_session
    comm.Execute
    
	Set rs = conexion_session.Execute ("Select @@Identity as ID")
	UpdateRecordset = rs(0).value
    
    set comm=nothing
        
end function

function MakeCombo (rs,name,size,selected,actionOnChange,bFirstValue,idFirstValue,descFirstValue,bReadOnly,nombreAccion)

	dim valor_seleccionado
	dim elementos
	dim strCabecera
	dim strTemp
	const strPIE= "</select></span>"
	const PROTECCION_COMBO = "onChange='this.selectedIndex = @VALOR_INDICE@'"

	strCabecera = "<span class='valores'>"
	strCabecera = strCabecera + "<select class='select2' data-allow-clear='true' name='" & name  & "'"

	strCabecera=strCabecera + " onclick='javascript:event.cancelBubble=true'"

	if size>0 then
		strCabecera=strCabecera + " size=" & cstr(size)
	end if

	If bReadOnly Then
		strCabecera=strCabecera + " PROTECCION_COMBO"
	end if
	
	if actionOnChange <> "" and not bReadOnly then
		strCabecera=strCabecera + " onChange='" & nombreAccion & "(""" & actionOnChange & """)'"
	end if
	strCabecera=strCabecera + ">"

	elementos=-1
	valor_seleccionado=0
	if bFirstValue then
		strTemp="<OPTION VALUE=" & idFirstValue & " SELECTED>" & descFirstValue
		MakeCombo=idFirstValue
		elementos=0
		valor_seleccionado=elementos
	end if

	if rs.EOF and rs.BOF then
		strCabecera=replace(strCabecera,"PROTECCION_COMBO","")
		Response.Write(strCabecera & strTemp & strPIE)
		exit function
	end if

	strCabecera=replace(strCabecera,"PROTECCION_COMBO",PROTECCION_COMBO)

	rs.movefirst
	elementos=elementos+1
	if bFirstValue then
		if cstr("" & rs(0).value)=cstr(selected) then
			strtemp=replace(strTemp,"SELECTED","")
			strTemp=strTemp & "<OPTION VALUE=" & cstr("" & rs(0)) & " SELECTED>" & cstr("" & rs(1))
			MakeCombo=cstr("" & rs(0))
			valor_seleccionado=elementos
		else
			strTemp=strTemp & "<OPTION VALUE=" & cstr("" & rs(0)) & ">" & cstr("" & rs(1))
		end if
	else
		strTemp=strTemp & "<OPTION VALUE=" & cstr("" & rs(0)) & " SELECTED>" & cstr("" & rs(1))
		MakeCombo=cstr("" & rs(0))
		valor_seleccionado=elementos
	end if
	rs.MoveNext 
	elementos=elementos+1	
	while not rs.eof
		if cstr("" & rs(0).value)=cstr(selected) then
			strtemp=replace(strTemp,"SELECTED","")
			strTemp=strTemp & "<OPTION VALUE=" & cstr("" & rs(0)) & " SELECTED>" & cstr("" & rs(1))
			MakeCombo=cstr("" & rs(0))
			valor_seleccionado=elementos
		else
			strTemp=strTemp & "<OPTION VALUE=" & cstr("" & rs(0)) & ">" & cstr("" & rs(1))
		end if
		rs.movenext
		elementos=elementos+1
	wend
	rs.MoveFirst 
	strCabecera=replace(strCabecera,"@VALOR_INDICE@",valor_seleccionado)
	Response.Write(strCabecera & strtemp & strPIE)
end function

Function getformato(strT)

Set fso = Server.CreateObject("Scripting.FileSystemObject")
getformato = "." & fso.GetExtensionName(strT)
Set fso = Nothing

End Function

Function getStock()
set rs = GetRecordset("select top 1 * from [mov_stock_certificats] order by id_num DESC")
if not rs.eof and not rs.bof then
  While not rs.eof
	   getStock=rs("saldo")
	   rs.movenext
	Wend
  end if     
rs.close
set rs = Nothing                
End Function


Function getAccesItem(iAarea, iItem, iSituacion)

	txt_estado="false"
	sql_recerca_acces=""
	
	if session("TipoUsuario")="Empleat" then
		sql_recerca_acces="select * from [Security_Employee_Item] where [IdEmployee]='"&session("IdUsuario")&"'" & _
		" and [IdArea]='"&iAarea&"' and [IdItem]='"&iItem&"' and [IdState]=" & iSituacion
	else
		sql_recerca_acces="select * from [Security_Item_State] where [IdArea]='"&iAarea&"' and [IdItem]='"&iItem&"' and [IdState]=" & iSituacion
	end if
	
	set rs_get_item = GetRecordset(sql_recerca_acces)
	if not rs_get_item.eof and not rs_get_item.bof then
	  While not rs_get_item.eof
	  	   txt_estado="true"
		   rs_get_item.movenext
		Wend
	  end if     
	rs_get_item.close
	set rs_get_item = Nothing 
	getAccesItem=txt_estado
	               
End Function



Function EnviaMail(strFrom, strFromName, strSubject, strMissatge, strAddAdress, strAddCc)

    Set objMail = Server.CreateObject("Persits.MailSender")
    with objMail
    .Host = "smtp.cafbl.cat" 
    .Username = "cafbl@cafbl.cat" 
    .Password = "Gxsw00!8" 
    .From = strFrom
    .FromName = strFromName
    .Subject = strSubject
    .Body = "<font face='Verdana, Arial, Helvetica, sans-serif' size='2' color='#000000'>" & strMissatge & "</font>"
    .ContentTransferEncoding = "Quoted-Printable"
    .AddAddress strAddAdress
    .AddCc strAddCc
    .isHtml = true
    .Send			
    end with
    set objMail= nothing
	
End Function


Function getFormatDate(Fecha)
	'Pasamos una fecha y la mostramos como AAAA/MM/DD
	'OJO! ha de venir de un DATETIME!
	strAno = Year(Fecha)
	strMes = Month(Fecha)
	if len(strMes)=1 then
		strMes = "0" & strMes
	end if
	strDia = Day(Fecha)
	if len(strDia)=1 then
		strDia = "0" & strDia
	end if
	strHora = Hour(Fecha)
	if len(strHora)=1 then
		strHora = "0" & strHora
	end if	
	strMinuts = Minute(Fecha)
	if len(strMinuts)=1 then
		strMinuts = "0" & strMinuts
	end if		
	strSegons = Second(Fecha)
	if len(strSegons)=1 then
		strSegons = "0" & strSegons
	end if		

	if isDate(Fecha) then
		getFormatDate = strAno &"/"& strMes &"/"& strDia
	 else
		getFormatDate = ""
	end if

End Function

Function FormatDate(Fecha)

	strAno = mid(Fecha, 7, 4)
  strmes = mid(Fecha, 4, 2)
	strDia = mid(Fecha, 1, 2)

	if isDate(Fecha) then
		FormatDate = strAno &"/"& strMes &"/"& strDia
	 else
		FormatDate = ""
	end if
	
End Function

Function GetNumCert()

	sql_num="select count(*) as NUMERO from [CD_documentacio]"
	GetNumCert=0
	set rs_num_cert = GetRecordset(sql_num)
	if not rs_num_cert.eof and not rs_num_cert.bof then
	  While not rs_num_cert.eof
	  	   GetNumCert=rs_num_cert("NUMERO")
		     rs_num_cert.movenext
		Wend
	end if     
	rs_num_cert.close
	set rs_num_cert = Nothing 
	               
End Function

Function GetCustomers()

	sql_num="select count(DISTINCT CodCli) as CLIENTES from [cafbl].[dbo].[comandes]"
	GetCustomers=0
	set rs_num = GetRecordset(sql_num)
	if not rs_num.eof and not rs_num.bof then
	  While not rs_num.eof
	  	   GetCustomers=rs_num("CLIENTES")
		     rs_num.movenext
		Wend
	end if     
	rs_num.close
	set rs_num = Nothing 
	               
End Function

Function GetNumDocs()

	sql_num="select count(*) as NUMERO from [CD_documentacio_iterator]"
	GetNumDocs=0
	set rs_num_docs = GetRecordset(sql_num)
	if not rs_num_docs.eof and not rs_num_docs.bof then
	  While not rs_num_docs.eof
	  	   GetNumDocs=rs_num_docs("NUMERO")
		     rs_num_docs.movenext
		Wend
	end if     
	rs_num_docs.close
	set rs_num_docs = Nothing 
	               
End Function




%>