/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Cadastrar;
import util.conexao;

/**
 *
 * @author HenriqueLuiz
 */
public class CadastrarDAO extends conexao{
    
    /* private static final String INSERT_CANDIDATO = "INSERT INTO public.tbcandidato(can_inscricao, can_nome, can_endereco, can_numero, can_bairro, \n" +
"            can_cep, can_rg, can_pontoref, can_telefone1, can_telefone2, \n" +
"            can_telefone3, can_datanasc, can_sexo, can_naturalidade, can_escola, \n" +
"            can_nomepai, can_nomemae, can_renda, can_notaport, can_notamat, \n" +
"            can_freq, can_pontuacao)\n" +
"    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
*/    
    public boolean cadastrar(Cadastrar cad) throws SQLException{
        //conectar ao banco
    Connection con = null;
    con = conexao.getConexao();
        try
        {
            con.setAutoCommit(false);
            String INSERT_CANDIDATO = "INSERT INTO public.tbcandidato(can_inscricao, can_nome, can_endereco, can_numero, can_bairro, can_cep, can_rg, can_pontoref, can_telefone1, can_telefone2, can_telefone3, can_datanasc, can_sexo, can_naturalidade, can_nomepai, can_nomemae, can_renda, can_notaport, can_notamat, can_freq) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?); ";
            PreparedStatement stCandidato = con.prepareStatement(INSERT_CANDIDATO);
            
            stCandidato.setString(1, cad.getNuminscricao());
            stCandidato.setString(2, cad.getNome());
            stCandidato.setString(3, cad.getEndereco());
            stCandidato.setString(4, cad.getNum());
            stCandidato.setString(5, cad.getBairro());
            stCandidato.setString(6, cad.getCep());
            stCandidato.setString(7, cad.getRg());
            stCandidato.setString(8, cad.getReferencia());
            stCandidato.setString(9, cad.getTelfixo());
            stCandidato.setString(10, cad.getTelcel());
            stCandidato.setString(11, cad.getTelrecado());
            stCandidato.setString(12, cad.getDatanasc());
            stCandidato.setString(13, cad.getSexo());
            stCandidato.setString(14, cad.getNaturalidade());
            stCandidato.setString(15, cad.getNomepai());
            stCandidato.setString(16, cad.getNomemae());            
            stCandidato.setDouble(17, cad.getRenda());
            stCandidato.setDouble(18, cad.getNotaport());
            stCandidato.setDouble(19, cad.getNotamat());
            stCandidato.setInt(20, cad.getFreq());
            
            stCandidato.execute();
            
          // stCandidato.executeUpdate();
            con.commit();

//            stCandidato.close();
//            con.close();

            //retornando o sucesso
            return true;
        }
        catch (Exception e)
        {
         //   con.rollback();
//            e.printStackTrace();
            e.getMessage();
            return false;
        }
    }
}