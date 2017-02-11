function consultacep(cep){
    
    cep = cep.replace(/\D/g,"")
    
    url="http://cep.correiocontrol.com.br/"+cep+".js"
    
    s=document.createElement('script')
    
    s.setAttribute('charset','utf-8')
    
    s.src=url
    
    document.querySelector('head').appendChild(s)
    
}

 

function correiocontrolcep(valor){
    
    if (valor.erro) {
    
      alert('Cep não encontrado');       
    
       return;
    
    };
    
    document.getElementById('tbEndereco').value=valor.logradouro
    
    document.getElementById('tbMunicipio').value=valor.bairro
    
    document.getElementById('tbCidade').value=valor.localidade
    
    document.getElementById('tbUF').value=valor.uf
    
}
