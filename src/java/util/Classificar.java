/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import modelo.Candidato;

/**
 *
 * @author usuario
 */
public class Classificar {
    // Para ordenar por numeros
    public static ArrayList<Candidato> porPontuacao(ArrayList<Candidato> lista)
    {
        ArrayList<Candidato> resposta = new ArrayList<Candidato>();
        
        try
        {
            /*
                posição do candidato na classificação
            */
            int i = 1;

            for(Candidato can : lista)
            {
                can.setClassificacao(i);
                i++;

                resposta.add(can);
            }
            
        }
        catch (Exception e)
        {
            System.out.print("Algo errado: " + e.getMessage());
        }
        
        
        
        return resposta;
    }
}