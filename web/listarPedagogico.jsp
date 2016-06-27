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
        <%//recuperar a lista
            ArrayList<Candidato> listaCandidato = (ArrayList<Candidato>) request.getAttribute("liscaCandidato");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script src="scripts/js/editablegrid.js"></script>
	<script src="scripts/js/editablegrid_renderers.js" ></script>
	<script src="scripts/js/editablegrid_editors.js" ></script>
        <script src="scripts/js/editablegrid_validators.js" ></script>
	<script src="scripts/js/editablegrid_utils.js" ></script>
	<script src="scripts/js/editablegrid_charts.js" ></script>
        <link rel="stylesheet" href="scripts/css/editablegrid.css" type="text/css" media="screen">
	
        <style>
            body { font-family:'lucida grande', tahoma, verdana, arial, sans-serif; font-size:11px; }
            h1 { font-size: 15px; }
            a { color: #548dc4; text-decoration: none; }
            a:hover { text-decoration: underline; }
            table.testgrid { border-collapse: collapse; border: 1px solid #CCB; width: 800px; }
            table.testgrid td, table.testgrid th { padding: 5px; border: 1px solid #E0E0E0; }
            table.testgrid th { background: #E5E5E5; text-align: left; }
            input.invalid { background: red; color: #FDFDFD; }
            .cabecalho{background-color: #E5E5E5; color: #548dc4; padding : 10px 5px 10px 5px}
        </style>
        <script>
            window.onload = function() {
                // this approach is interesting if you need to dynamically create data in Javascript
                var metadata = [];
                metadata.push({ name: "editar", label: "Editar", datatype: "string", editable: false});
                metadata.push({ name: "classificacao", label: "Classificação", datatype: "integer", editable: false});
                metadata.push({ name: "inscricao", label: "Inscrição", datatype: "integer", editable: false});
                metadata.push({ name: "nome", label: "Nome", datatype: "string", editable: false});
                metadata.push({ name: "rg", label: "RG", datatype: "string", editable: false});
                metadata.push({ name: "telfixo", label: "Tel. Fixo", datatype: "string", editable: false});
                metadata.push({ name: "telcel", label: "Tel. Cel", datatype: "string", editable: false});
                metadata.push({ name: "telrec", label: "Tel. Recado", datatype: "string", editable: false});
                metadata.push({ name: "mae", label: "Mãe", datatype: "string", editable: false});
                metadata.push({ name: "pai", label: "Pai", datatype: "string", editable: false});
                metadata.push({ name: "notaport", label: "Nota Port.", datatype: "double(,2)", editable: false});
                metadata.push({ name: "notamat", label: "Nota Mat.", datatype: "double(,2)", editable: false});
                metadata.push({ name: "freq", label: "Freq.", datatype: "integer", editable: false});
                metadata.push({ name: "pont", label: "Pontuação", datatype: "integer", editable: false});
                
                var data = [];
                <%
                    for(Candidato c: listaCandidato){
                %>
                data.push({id: 1, values:
                {
                        "editar":"<a href=\"CandidatoCRT?btn=Buscar&id=<%= c.getId() %>\"><img src=\"imagens/file_edit.png\" width=\"15px\" height=\"15px\"/></a>",
                    
                        "classificacao":"<%= c.getClassificacao() %>",
                        "inscricao":"<%= c.getNuminscricao() %>",
                        "nome":"<%= c.getNome() %>",
                        "rg":"<%= c.getRg() %>",
                        "telfixo":"<%= c.getTelfixo() %>",
                        "telcel":"<%= c.getTelcel() %>",
                        "telrec":"<%= c.getTelrecado() %>",
                        "mae":"<%= c.getNomemae() %>",
                        "pai":"<%= c.getNomepai() %>",
                        "notaport":<%= c.getNotaport() %>,
                        "notamat":<%= c.getNotamat() %>,
                        "freq":<%= c.getFreq() %>,
                        "pont":<%= c.getPontuacao() %>}});
                <%
                    }
                %>
                
        editableGrid = new EditableGrid("DemoGridJsData");
        editableGrid.load({"metadata": metadata, "data": data});
        editableGrid.renderGrid("tablecontent", "testgrid");
    }
        </script>
		
      
        
        
        <title>Lista Candidatos</title>
    </head>
    <body>
        <a href="index.html">Voltar</a>
        <h1>Lista de Candidatos</h1> 
		<!--<div id="tablecontent"></div>-->
    
        <table>
            <thead>
                <tr>
                    <th class="cabecalho">Editar</th>
                    <th class="cabecalho">Classificação</th>
                    <th class="cabecalho">Inscrição</th>
                    <th class="cabecalho">Nome</th>
                    <th class="cabecalho">RG</th>
                    <th class="cabecalho">Nota Port.</th>
                    <th class="cabecalho">Nota Mat.</th>
                    <th class="cabecalho">Freq.</th>
                    <th class="cabecalho">Pontuação</th>
                    <th class="cabecalho">Questionario</th>
                    <th class="cabecalho">Status</th>
                </tr>
            </thead>
            <tbody>
            <%
                for (Candidato c : listaCandidato)
                {
            %>
                    <tr id="<%= c.getId()%>">
                        
                        <td>
                            <a href="CandidatoCRT?btn=Buscar&id=<%= c.getId()%>">
                                <img src="imagens/file_edit.png" width="15px" height="15px"/>
                            </a>
                        </td>
                        
                        <td><%= c.getClassificacao()%></td>
                        <td><%= c.getNuminscricao()%></td>
                        <td><%= c.getNome()%></td>
                        <td><%= c.getRg()%></td>
                        <td><%= c.getNotaport()%></td>
                        <td><%= c.getNotamat()%></td>
                        <td><%= c.getFreq()%></td>
                        <td><%= c.getPontuacao()%></td>
                        <td><%= c.getQuestionario()%></td>

                        <%
                            String status;
                            if (c.getStatus())
                            {
                                status = "Ativo";
                            }
                            else
                            {
                                status = "Desativado";
                            }
                        %>

                        <td><%= status%></td>

                    </tr>
            <%
                }
            %>
                    </tbody>
                </table>
    
    </body>
</html>
