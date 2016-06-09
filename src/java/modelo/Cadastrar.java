/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Usuario
 */
public class Cadastrar {
    private String numinscricao;
    private String nome;
    private String endereco;
    private String num;
    private String bairro;
    private String cep;
    private String rg;
    private String referencia;
    private String telfixo;
    private String telcel;
    private String telrecado;
    private String datanasc;
    private String sexo;
    private String naturalidade;
    private String nomemae;
    private String nomepai;
    private double renda;
    private String feedback;
    private double notaport;
    private double notamat;
    private int freq;

    public String getNuminscricao() {
        return numinscricao;
    }

    public void setNuminscricao(String numinscricao) {
        this.numinscricao = numinscricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public String getTelfixo() {
        return telfixo;
    }

    public void setTelfixo(String telfixo) {
        this.telfixo = telfixo;
    }

    public String getTelcel() {
        return telcel;
    }

    public void setTelcel(String telcel) {
        this.telcel = telcel;
    }

    public String getTelrecado() {
        return telrecado;
    }

    public void setTelrecado(String telrecado) {
        this.telrecado = telrecado;
    }

    public String getDatanasc() {
        return datanasc;
    }

    public void setDatanasc(String datanasc) {
        this.datanasc = datanasc;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getNaturalidade() {
        return naturalidade;
    }

    public void setNaturalidade(String naturalidade) {
        this.naturalidade = naturalidade;
    }

    public String getNomemae() {
        return nomemae;
    }

    public void setNomemae(String nomemae) {
        this.nomemae = nomemae;
    }

    public String getNomepai() {
        return nomepai;
    }

    public void setNomepai(String nomepai) {
        this.nomepai = nomepai;
    }

    public double getRenda() {
        return renda;
    }

    public void setRenda(double renda) {
        this.renda = renda;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public double getNotaport() {
        return notaport;
    }

    public void setNotaport(double notaport) {
        this.notaport = notaport;
    }

    public double getNotamat() {
        return notamat;
    }

    public void setNotamat(double notamat) {
        this.notamat = notamat;
    }

    public int getFreq() {
        return freq;
    }

    public void setFreq(int freq) {
        this.freq = freq;
    }
    
    public Cadastrar() {
    }

    public Cadastrar(String numinscricao, String nome, String endereco, String num, String bairro, String cep, String rg, String referencia, String telfixo, String telcel, String telrecado, String datanasc, String sexo, String naturalidade, String nomemae, String nomepai, double renda, String feedback, double notaport, double notamat, int freq) {
        this.numinscricao = numinscricao;
        this.nome = nome;
        this.endereco = endereco;
        this.num = num;
        this.bairro = bairro;
        this.cep = cep;
        this.rg = rg;
        this.referencia = referencia;
        this.telfixo = telfixo;
        this.telcel = telcel;
        this.telrecado = telrecado;
        this.datanasc = datanasc;
        this.sexo = sexo;
        this.naturalidade = naturalidade;
        this.nomemae = nomemae;
        this.nomepai = nomepai;
        this.renda = renda;
        this.feedback = feedback;
        this.notaport = notaport;
        this.notamat = notamat;
        this.freq = freq;
    }
    
    
}
