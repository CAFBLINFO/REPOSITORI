<!--#include file="scripts/dataaccess.asp"-->
<%

	txt_Usuari = request.form("usuari")
	txt_Password = request.form("password")
	txt_KeyEncripted = request.form("KeyEncripted")

	if txt_Usuari<>"" and txt_Password<>"" and txt_KeyEncripted="#@!--_?*^^{**/+User&%Logged" then

			' Anem a trobar el usuari que es connecta
			str_select = " select * from [CD_Users_Mails] where [User]='"&txt_Usuari&"' and [Password]='"&txt_Password&"'"
			set validacio = GetRecordset(str_select)
			if not validacio.eof and not validacio.bof then

				session("UserID")     = "" & validacio("User")	
				session("UserName")   = "" & validacio("Nom") & " " & validacio("Cognoms")
				session("UserPhoto")  = "" & validacio("Foto")
				session("idsecurity") ="837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7"
				session("HGFY-7876")  ="#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^"
				response.redirect "menu.asp"

			end if
			validacio.close
			set validacio=Nothing

			response.Redirect("index.asp?MSG=666")		

	end if

%>