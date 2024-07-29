<!--#include file="scripts/dataaccess.asp"-->
<%

	txt_Demarcacio = request.form("demarcacio") 
	txt_Usuari = request.form("usuari")
	txt_Password = request.form("contrasenya")
	txt_KeyEncripted = request.form("KeyEncripted")

	Response.Write "txt_Demarcacio: " & txt_Demarcacio & "<br>"
	Response.Write "txt_Usuari: " & txt_Usuari & "<br>"
	Response.Write "txt_Password: " & txt_Password & "<br>"
	Response.Write "txt_KeyEncripted: " & txt_KeyEncripted & "<br>"

	if txt_Usuari<>"" and txt_Password<>"" and txt_Demarcacio<>"SEL" and txt_KeyEncripted="#@!--_?*^^{**/+User&%Logged" then

			if txt_Demarcacio="CAFBL" then
				if len(txt_Usuari)=6 then
					txt_Usuari= "C0" & txt_Usuari
				elseif len(txt_Usuari)=5 then
					txt_Usuari= "C00" & txt_Usuari
				elseif len(txt_Usuari)=4 then
					txt_Usuari= "C000" & txt_Usuari
				elseif len(txt_Usuari)=3 then
					txt_Usuari= "C0000" & txt_Usuari
				elseif len(txt_Usuari)=2 then
					txt_Usuari= "C00000" & txt_Usuari
				elseif len(strNumColegiat)=1 then
					txt_Usuari= "C000000" & txt_Usuari
				End if
			end if

			bEncontrado=0

			Response.Write "entra..." & "<br>"

			' Carreguem per defecte la situació del Col.legiat
			session("Situacion") = 1
			str_getstatus = " select * from [ACCESS_TO_AFCDIGITAL] where USUARIO='"&txt_Usuari&"' and [TIPUS]='COL·LEGIAT' and [DEMARCACION]='"&txt_Demarcacio&"'"
			set rs_getstatus = GetRecordset(str_getstatus)
			if not rs_getstatus.eof and not rs_getstatus.bof then
				session("Situacion") = rs_getstatus("SITUACION")
			end if
			rs_getstatus.close
			set rs_getstatus=Nothing		


			' Anem a trobar el usuari que es connecta
			str_select = " select * from [ACCESS_TO_AFCDIGITAL] where [USUARIO]='"&txt_Usuari&"' and [PASSWORD]='"&txt_Password&"' and [DEMARCACION]='"&txt_Demarcacio&"'"
			set ValidaColegiado = GetRecordset(str_select)
			if not ValidaColegiado.eof and not ValidaColegiado.bof then

				session("CodColegiado") = "" & ValidaColegiado("COD_COLEGIADO")
				session("PswColegiado") = "" & txt_Password
				session("TipoUsuario") = ValidaColegiado("TIPUS")
				session("Demarcacion") = ValidaColegiado("DEMARCACION")
				session("IdUsuario") = "" & ValidaColegiado("USERID")
				session("NombreUsuario") = "" & ValidaColegiado("DENOMINACION")
				session("idsecurity")="837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7"
				session("HGFY-7876")="#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^"

				Response.Write "troba el colegiat: " & session("CodColegiado") & "<br>"

				if session("CodColegiado") = "C0005095" and session("Demarcacion") ="CAFBL" then
					session("Situacion") = 1	
				end if

				response.redirect "adminUsersCAT/index.asp"
				bEncontrado=1
			end if
			ValidaColegiado.close
			set ValidaColegiado=Nothing


			response.Redirect("index.asp?MSG=666")		


	end if

%>