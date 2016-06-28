$(document).ready(function()
{
    $("#bt_busca").click(function()
    {
        $.ajax
        ({
            url: '/inscricao/CandidatoCRT',
            type: 'POST',
            data:
            {
                busca: $("#cmp_busca").val(),
                btn: "BuscarRegistro"
            },
            complete: function(e, xhr, result)
            {
                if (e.readyState == 4 && e.status == 200)
                {
                    try
                    {
                        $("#lista_cabecalho").html("");
                        $("#lista_corpo").html("");
                        $("#msg").html("");
                            
                        var obj = eval("(" + e.responseText + ")");
                        
                        if (obj != null)
                        {
                            $("#lista_cabecalho").html("<th>Inscrição</th><th>Nome</th>");
                            
                            
                            var i = 0 ;
                            
                            while (obj.length)
                            {
                                var linha = "<tr> <td> <a  class=\"esq\" href=\"CandidatoCRT?btn=Buscar&id=" + obj[0][i].id + "\"> "+ obj[0][i].numinscricao +" </a> </td>";
                                linha += "<td> <a href=\"CandidatoCRT?btn=Buscar&id=" + obj[0][i].id + "\"> "+ obj[0][i].nome +" </a> </td> </tr>";
                                
                                $("#lista_corpo").append(linha);
                                i++;
                            }
                            
                            $("#msg").html("Encontrado(s) "+i+" registro(s)");
                            $("#msg").css("color", "black");
                        }
                        else
                        {
                            $("#msg").html("Digite o nome ou o nº de incrição!");
                            $("#msg").css("color", "red");
                        }
                    }
                    catch (err)
                    {
                        
                    }
                }
            }
        });
    });
});