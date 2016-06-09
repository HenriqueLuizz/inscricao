/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.CadastrarDAO;
import dao.CandidatoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cadastrar;
import modelo.Candidato;

/**
 *
 * @author HenriqueLuiz
 */
public class CadastrarCRT extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            /* TODO output your page here. You may use following sample code. */
            
            //int op = Integer.parseInt(request.getParameter("btn"));
            
            switch(request.getParameter("btn")){
                //Cadastrar Novo candidato                
                case "Cadastrar":
                    try{
                        String status = null;
                        Cadastrar cad = new Cadastrar();
                        cad.setNuminscricao(request.getParameter("txtnuminscricao"));
                        cad.setNome(request.getParameter("txtnome"));
                        cad.setEndereco(request.getParameter("txtendereco"));
                        cad.setNum(request.getParameter("txtnum"));
                        cad.setBairro(request.getParameter("txtbairro"));
                        cad.setCep(request.getParameter("txtcep"));
                        cad.setRg(request.getParameter("txtrg"));
                        cad.setReferencia(request.getParameter("txtreferencia"));
                        cad.setTelfixo(request.getParameter("txttelfixo"));
                        cad.setTelcel(request.getParameter("txttelcel"));
                        cad.setTelrecado(request.getParameter("txttelrecado"));
                        cad.setDatanasc(request.getParameter("txtdatanasc"));
                        cad.setSexo(request.getParameter("txtsexo"));
                        cad.setNaturalidade(request.getParameter("txtnaturalidade"));
                        cad.setNomemae(request.getParameter("txtnomemae"));
                        cad.setNomepai(request.getParameter("txtnomepai"));
                        cad.setRenda(Double.parseDouble(request.getParameter("txtrenda")));
                        cad.setFeedback(request.getParameter("txtfeedback"));
                        cad.setNotaport(Double.parseDouble(request.getParameter("txtnotaport")));
                        cad.setNotamat(Double.parseDouble(request.getParameter("txtnotamat")));
                        cad.setFreq(Integer.parseInt(request.getParameter("txtfreq")));   
                        //efetuar a gravação
                        CadastrarDAO obj = new CadastrarDAO();
                        if (obj.cadastrar(cad)){
                            status = "Sucesso";
                        }else{
                            status = "Falha";
                    }
                    request.setAttribute("status",status);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/cadastro.jsp");
                    dispatcher.forward(request, response);
                    }
                    catch(Exception e){
                        request.setAttribute("erro",e);
                        RequestDispatcher rd = request.getRequestDispatcher("erro.jsp");
                        rd.forward(request, response);
                    }
                    break;
                //Listar Todos os Candidatos    
                case "Listar" :
                    try{
                    //Criar objero CandidatoDAO
                    CandidatoDAO objDAO = new CandidatoDAO();
                    //Executar o método listar
                    ArrayList<Candidato> candidato = objDAO.listar();
                    //Add a lista no objeto para o jsp
                    request.setAttribute("listaCliente",candidato);
                    //Encaminhar o request para o jsp
                    RequestDispatcher rd = request.getRequestDispatcher("listar.jsp");
                    rd.forward(request, response);
                    }
                    catch(Exception e){
                        request.setAttribute("erro",e);
                        RequestDispatcher rd = request.getRequestDispatcher("erro.jsp");
                        rd.forward(request, response);
                    }
                    break;
            }
        
        }
        catch(Exception e){
            //
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CadastrarCRT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CadastrarCRT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
