/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Usuario
 */
public class conexao {

    //não precisa instanciar o objeto
    public static Connection getConexao()
    {
        Connection conexao = null;
        String usuario = "postgres";
        String senha = "gmsuzano";
        String banco = "inscricoes";
        
        try
         {
            Class.forName("org.postgresql.Driver");
            conexao = DriverManager.getConnection("jdbc:postgresql://192.168.0.3:5432/"+ banco, usuario, senha);
            
            return(conexao);
         }
         catch (Exception e)
         {
             e.printStackTrace();
             return null;
         }
    }

    public static PreparedStatement prepareStatement(String SELECT_ALL) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
