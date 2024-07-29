<!--#include file="scripts/dataaccess.asp"-->
<%
	session("UserName") = ""
	session("UserPhoto") = ""
	session("idsecurity")=""
	session("HGFY-7876")=""
	Session.Contents.RemoveAll()
	Session.Abandon()
	response.redirect "index.asp"
%>