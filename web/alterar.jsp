<%-- 
    Document   : alterar
    Created on : 15/06/2016, 19:10:20
    Author     : Usuario
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Candidato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

            <%
            //recuperar a lista
            ArrayList<Candidato> listaCandidato = (ArrayList<Candidato>) request.getAttribute("liscaCandidato");
            %>
            
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    </head>
    <body>
        <h1>Atualizar Dados Cadastrais</h1>
        <table>
            <thead>
                <tr>
                    <th></th><th>Classificação</th><th>Inscrição</th><th>Nome</th><th>RG</th>
                    <th>Nota Port.</th><th>Nota Mat.</th><th>Freq.</th><th>Pontuação</th>
                    <th>Questionario</th><th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(Candidato c: listaCandidato){
                %>
                <tr id="<%= c.getId() %>">
                    <td><a href="CandidatoCRT?btn=Buscar&id=<%= c.getId() %>"><img src="imagens/file_edit.png" width="15px" height="15px"/></a></td>
                    <td><%= c.getClassificacao() %></td>
                    <td><%= c.getNuminscricao() %></td>
                    <td><%= c.getNome() %></td>
                    <td><%= c.getRg() %></td>
                    <td><%= c.getNotaport() %></td>
                    <td><%= c.getNotamat() %></td>
                    <td><%= c.getFreq() %></td>
                    <td><%= c.getPontuacao() %></td>
                    <td><%= c.getQuestionario() %></td>
                    <% String status;
                        if (c.getStatus()){
                            status = "Ativo";
                        }else{
                            status = "Desativado";
                        }
                    %>
                    <td><%= status %></td>
                    
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

    </body>
</html>
