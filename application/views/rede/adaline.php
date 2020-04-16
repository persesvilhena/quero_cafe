<?php
$dados_treino = $this->rede_model->ver_per_treino();
$dados_teste = $this->rede_model->ver_per_teste();


function funcao($valor){
    if($valor > 0){
        return 1;
    }else{
        return -1;
    }
}

function eqm($dados, $campos, $w){
    $p = count($dados);
    $eqm = 0;
    foreach ($dados as $n) {
        $u = 0;
        foreach ($campos as $indice => $m) {
            if($m == "d"){
                $eqm = $eqm + (($n->d - $u)*($n->d - $u));
            }else{
                $valor = $n->$m * $w[$indice];
                $u = $u + $valor;
            }
        }
    }
    $res = ($eqm / $p);
    return $res;
}
function epoca($dados, $campos, $tx_aprend, $w){
    $erro = 0;
    foreach ($dados as $n) {
        $u = 0;
        foreach ($campos as $indice => $m) {
            if($m == "d"){
                $y = funcao($u);
                if($y != $n->d){
                    $erro++;
                    foreach ($campos as $i => $z) {
                        if($z != "d"){
                            $w[$i] = $w[$i] + ($tx_aprend * ($n->d - $u) * $n->$z);
                        }
                        
                    }
                }
            }else{
                $u = $u + ($n->$m * $w[$indice]);
            }
        }
    }
    $res[0] = $erro;
    $res[1] = $w;
    return $res;
}

function treinar($dados, $w, $campos, $tx_aprend){
    $precisao = 0.000001;
    $dif_eqm = 1;
    $epoca = 0;
    $historico = array();
    while ($dif_eqm > $precisao) {
        if($epoca < 1000){
            $eqm_anterior = eqm($dados, $campos, $w);
            $epoca++;
            $historico[$epoca]['w'] = $w;
            $res_epoca = epoca($dados, $campos, $tx_aprend, $w);
            $w = $res_epoca[1];
            //$erro = $res_epoca[0];
            
            
            $eqm_atual = eqm($dados, $campos, $w);
            $historico[$epoca]['erro'] = $dif_eqm;
            $dif_eqm = abs($eqm_anterior) - abs($eqm_atual);
            
            
            //echo $eqm_atua;
            //echo "<br>------------------------------<br>";
        }else{
            break;
        }
    }
    $obj = new stdClass;
    $obj->historico = $historico;
    $obj->w = $w;
    $obj->epocas = $epoca;
    return $obj;
}

function testar($w, $dados, $campos){
    $erro = 0;
    $acerto = 0;
    $historico = array();
    foreach ($dados as $indice_dados => $n) {
        $u = 0;
        foreach ($campos as $indice => $m) {
            if($m == "d"){
                $y = funcao($u);
                $historico[$indice_dados]['desejado'] = $n->d;
                $historico[$indice_dados]['obtido'] = $y;

                if($y != $n->d){
                    $erro++;
                    $historico[$indice_dados]['resutado'] = 0;
                }else{
                    $acerto++;
                    $historico[$indice_dados]['resutado'] = 1;
                }
            }else{
                $valor = $n->$m * $w[$indice];
                $u = $u + $valor;
            }
        }
    }
    $obj = new stdClass;
    $obj->erro = $erro;
    $obj->acerto = $acerto;
    $obj->historico = $historico;
    return $obj;
}

$w[0] = (rand(1, 100))/1000;
$w[1] = (rand(1, 100))/1000;
$w[2] = (rand(1, 100))/1000;
//$w[0] = 0;
//$w[1] = 0;
//$w[2] = 0;
$campos = array('limiar', 'petal_length', 'petal_width', 'd');
$tx_aprend = 0.01;

$treino = treinar($dados_treino, $w, $campos, $tx_aprend);

$teste = testar($treino->w, $dados_teste, $campos);
?>

<table class="table">
  <thead>
    <tr class="table-primary">
      <th scope="col">#</th>
      <th scope="col">W[0]</th>
      <th scope="col">W[1]</th>
      <th scope="col">W[2]</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Inicial</th>
      <td><?= $w[0]; ?></td>
      <td><?= $w[1]; ?></td>
      <td><?= $w[2]; ?></td>
    </tr>
    <tr>
      <th scope="row">Final</th>
      <td><?= $treino->w[0]; ?></td>
      <td><?= $treino->w[1]; ?></td>
      <td><?= $treino->w[2]; ?></td>
    </tr>
  </tbody>
</table>


<table class="table">
  <thead>
    <tr class="table-primary">
      <th scope="col">Epocas</th>
      <th scope="col">W[0]</th>
      <th scope="col">W[1]</th>
      <th scope="col">W[2]</th>
      <th scope="col">Dif</th>
    </tr>
  </thead>
  <tbody>
    <?php
    foreach ($treino->historico as $indice => $n) { ?>
        <tr>
          <th scope="row"><?= $indice; ?></th>
          <td><?= $n['w'][0]; ?></td>
          <td><?= $n['w'][1]; ?></td>
          <td><?= $n['w'][2]; ?></td>
          <td><?= $n['erro']; ?></td>
        </tr>
    <?php
    }
    ?>
  </tbody>
</table>

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
    <?php
    foreach ($teste->historico as $indice => $n) { ?>
        <tr>
          <th scope="row"><?= $indice; ?></th>
          <td><?= $n['desejado']; ?></td>
          <td><?= $n['obtido']; ?></td>
          <?php if($n['resutado']){ echo "<td class='bg-success'>OK!</td>"; }else{ echo "<td class='bg-danger'>ERRO!</td>"; } ?>
        </tr>
    <?php
    }
    ?>
  </tbody>
</table>

<hr>
<b>Quantidade de epocas: </b><?= $treino->epocas; ?><br>
<b>Quantidade de acertos: </b><?= $teste->acerto; ?><br>
<b>Quantidade de erros: </b><?= $teste->erro; ?>
<hr>
<br>
<br>