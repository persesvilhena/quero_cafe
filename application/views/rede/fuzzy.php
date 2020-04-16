<form action="" method="post">
Qtde linha: <input name="qtde_linha" type="text">
Qtde coluna: <input name="qtde_coluna" type="text">
<input type="submit" name="matriz" value="Submeter">
</form>

<?php
if($this->input->post('matriz')){
    echo "
    <form action=\"\" method=\"post\">
    <table class=\"table table-responsive\">
    ";
    foreach(range(1, $this->input->post('qtde_linha')) as $n){
        echo "<tr>";
        foreach(range(1, $this->input->post('qtde_coluna')) as $m){
            echo "
            <td><input name=\"ma[x".$n."[y".$m."]]\" type=\"text\"></td>
            ";
        }
        echo "</tr>";
    }
    echo "
    </table><br><br>
    <table class=\"table table-responsive\">
    ";
    foreach(range(1, $this->input->post('qtde_coluna')) as $n){
        echo "<tr>
        ";
        foreach(range(1, $this->input->post('qtde_linha')) as $m){
            echo "<td><input name=\"mb[x".$n."[y".$m."]]\" type=\"text\"></td>
            ";
        }
        echo "</tr>
        ";
    }
    echo "
    </table>
    <input name=\"enviar\" type=\"submit\" value=\"Enviar\">
    </form>";
}
if($this->input->post('enviar')){
    echo "<pre>";
    var_dump($_POST[]);
    echo "</pre>";
}

?>


<table class="table">
  <thead>
    <tr class="table-primary">
      <th scope="col">Testes</th>
      <th scope="col">Desejado</th>
      <th scope="col">Obtido</th>
      <th scope="col">Resultado</th>
    </tr>
  </thead>
  <tbody>
        <tr>
          <th scope="row"></th>

        </tr>
  </tbody>
</table>

