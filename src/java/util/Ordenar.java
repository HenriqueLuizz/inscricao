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
public class Ordenar {
        public static ArrayList<Candidato> ordenaPorNome(ArrayList<Candidato> lista) {
        Collections.sort(lista, new Comparator<Candidato>() {
            @Override
            public int compare(Candidato can1, Candidato can2) {
                return (can1.getNome()).compareTo(can2.getNome());
            }
     });
    return lista;
    }
        public static ArrayList<Candidato> porClassificacao(ArrayList<Candidato> lista) {
        Collections.sort(lista, new Comparator<Candidato>() {
            @Override
            public int compare(Candidato can1, Candidato can2) {
                return (Integer.toString(can1.getClassificacao())).compareTo(Integer.toString(can2.getClassificacao()));
            }
     });
    return lista;
    }
}
