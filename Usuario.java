public class Usuario {
    private String nome;
    private String telefone;
    private String ra;
    private Boolean tipo;
    private String email;
    private String senha;

    public Usuario(String nome, String telefone, String ra, Boolean tipo, String email, String senha){
      this.nome = nome;
      this.telefone = telefone;
      this.ra = ra;
      this.tipo = tipo;
      this.email = email;
      this.senha = senha;
    }
}
