<%-- 
    Document   : listar
    Created on : 09/06/2016, 11:11:57
    Author     : usuario
--%>

<%@page import="modelo.Candidato"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Candidatos</title>
    </head>
    <body>
        <h1>Lista de Candidatos</h1>
        
        <%//recuperar a lista
            ArrayList<Candidato> listaCandidato = (ArrayList<Candidato>) request.getAttribute("CandidatoCRT");
        %>
        <table>
            <thead>
                <tr>
                    <th>numinscricao</th>
                    <th>nome</th>
                    <th>endereco</th>
                    <th>num</th>
                    <th>bairro</th>
                    <th>cep</th>
                    <th>rg</th>
                    <th>referencia</th>
                    <th>telfixo</th>
                    <th>telcel</th>
                    <th>telrecado</th>
                    <th>datanasc</th>
                    <th>sexo</th>
                    <th>naturalidade</th>
                    <th>nomemae</th>
                    <th>nomepai</th>
                    <th>renda</th>
                    <th>feedback</th>
                    <th>notaport</th>
                    <th>notamat</th>
                    <th>freq</th>
                </tr>
            </thead>
            <tbody>
                <%
                for(Candidato c: listaCandidato){
                %>
                <tr>
                    <td><%= c.getNuminscricao() %></td>
                    <td><%= c.getNome() %></td>
                    <td><%= c.getEndereco() %></td>
                    <td><%= c.getNum() %></td>
                    <td><%= c.getBairro() %></td>
                    <td><%= c.getCep() %></td>
                    <td><%= c.getRg() %></td>
                    <td><%= c.getReferencia() %></td>
                    <td><%= c.getTelfixo() %></td>
                    <td><%= c.getTelcel() %></td>
                    <td><%= c.getTelrecado() %></td>
                    <td><%= c.getDatanasc() %></td>
                    <td><%= c.getSexo() %></td>
                    <td><%= c.getNaturalidade() %></td>
                    <td><%= c.getNomemae() %></td>
                    <td><%= c.getNomepai() %></td>
                    <td><%= c.getRenda() %></td>
                    <td><%= c.getFeedback() %></td>
                    <td><%= c.getNotaport() %></td>
                    <td><%= c.getNotamat() %></td>
                    <td><%= c.getFreq() %></td>
                </tr>
                <%
                }
                %>
            </tbody>
            
        </table>
    </body>
</html>
