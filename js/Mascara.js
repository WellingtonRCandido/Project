                function formataCEP(e,src,mask) {
                    if(window.event) { _TXT = e.keyCode; } 
                    else if(e.which) { _TXT = e.which; }
                    if(_TXT > 47 && _TXT < 58) { 
                        var i = src.value.length; var saida = mask.substring(0,1); var texto = mask.substring(i)
                        if (texto.substring(0,1) != saida) { src.value += texto.substring(0,1); } 
                        return true; } else { if (_TXT != 8) { return false; } 
                        else { return true; }
                    }
                }

                function formatTel(telefone) {
                    if (telefone.value.length == 1)
                        telefone.value = '(' + telefone.value; //quando começamos a digitar, o script irá inserir um parênteses no começo do campo.
                    if (telefone.value.length == 3)
                        telefone.value = telefone.value + ') '; //quando o campo já tiver 3 caracteres (um parênteses e 2 números) o script irá inserir mais um parênteses, fechando assim o código de área.

                    if (telefone.value.length == 9)
                        telefone.value = telefone.value + '-'; //quando o campo já tiver 8 caracteres, o script irá inserir um tracinho, para melhor visualização do telefone.

                }


           