<%-- 
    Document   : teste
    Created on : 27/06/2016, 13:02:19
    Author     : usuario
--%>

<%@page import="modelo.Candidato"%>
<%@page import="util.Classificar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CandidatoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            CandidatoDAO obj = new CandidatoDAO();
            
            ArrayList<Candidato> list = obj.listar();
            
            list = Classificar.porPontuacao(list);
            
            obj.atualizarClassificacao(list);
        %>
        
        <h1>tabela orgazizada</h1>
        
        <table>
            
            <thead>
                <th>Inscrição</th>
                <th>Nome</th>
                <th>Pontuação</th>
                <th>Classificação</th>
            </thead>
            
            <tbody>
                <%
                    for (Candidato can : list)
                    {
                %>
                <tr>
                        <td><%=can.getNuminscricao()%></td>
                        <td><%=can.getNome()%></td>
                        <td><%=can.getPontuacao()%></td>
                        <td><%=can.getClassificacao()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
            
        </table>
    </body>
</html>
