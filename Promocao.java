public class Promocao {
    private String prod;
    private Date dataInicio;
    private Date dataFim;
    private int preco;

    public Promocao(String prod, Date dataInicio, Date dataFim, int preco){
        this.prod = prod;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.preco = preco;
    }
}