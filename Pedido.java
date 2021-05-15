import java.util.Date;

public class Pedido {
    private String desc;
    private int precoTotal;
    private Date dataAgendamento;
    private String status;
  
    public Pedido(String desc, int precoTotal, Date dataAgendamento, String status){
        this.desc = desc;
        this.precoTotal = precoTotal;
        this.dataAgendamento = dataAgendamento;
        this.status = status;
    }
}