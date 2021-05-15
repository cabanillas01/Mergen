public class FormaPagamento {
  private String nomeTitular;
  private String numeros;
  private int codigoSeguranca;
  private String dataValid;

  public FormaPagamento(String nomeTitular, String numeros, int codigoSeguranca, String dataValid){
    this.nomeTitular = nomeTitular;
    this.numeros = numeros;
    this.codigoSeguranca = codigoSeguranca;
    this.dataValid = dataValid;
  }
}
