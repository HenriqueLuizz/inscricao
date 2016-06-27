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
    public static ArrayList<Candidato> porPontuacao(ArrayList<Candidato> lista) {
        Collections.sort(lista, new Comparator<Candidato>() {
            @Override
            public int compare(Candidato can1, Candidato can2) {
                return Integer.toString((can1.getPontuacao())).compareTo(Integer.toString(can2.getPontuacao()));
            }
     });
        int i = 1;
        for(Candidato can : lista){
            can.setClassificacao(i);
            i = i+1;
        }
    return lista;
    }
}