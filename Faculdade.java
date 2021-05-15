import java.sql.Time;

public class Faculdade {
    private String nome;
    private String endereco;
    private String campus;
    private Time horarioFunc;
    private String telefone;
  
    public Faculdade(String nome, String endereco, String campus, Time horarioFunc, String telefone){
        this.nome = nome;
        this.endereco = endereco;
        this.campus = campus;
        this.horarioFunc = horarioFunc;
        this.telefone = telefone;
    }
}