package model;

public class Usuario {
        private int id;
        private String nome;
        private String data;
        private String cpf;
        private String telefone;
        private String cep;
        //numero da casa
        private int nc;
        private String cidade;
        private String estado;
        private String bairro;
        private String rua;
        private String complemento;
        
        public Usuario(String nome, String data, String cpf, String telefone, String cep, int nc, String cidade, String estado, String bairro, String rua, String complemento){
            this.nome = nome;
            this.data = data;
            this.cpf = cpf;
            this.telefone= telefone;
            this.cep = cep;
            this.nc = nc;
            this.cidade = cidade;
            this.estado = estado;
            this.bairro = bairro;
            this.rua = rua;
            this.complemento = complemento;
        }
                
        public Usuario(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public int getNc() {
        return nc;
    }

    public void setNc(int nc) {
        this.nc = nc;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

        
}   
