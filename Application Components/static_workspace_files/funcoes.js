/*$(document).ready(function(){
	$("input.data").mask("99/99/9999");
        $("input.cpf").mask("999.999.999-99");
        $("input.cep").mask("99.999-999");
});*/

function abrePopUp(url)
{   
	window.open(url, 'page', 'toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=650,height=350,left=0,top=0');
}

function abrePopUpMax(url)
{   
	largura = screen.width - 10;
	altura = screen.height - 220;
	window.open(url,'page','width='+largura+',height='+altura+',top=0,left=0,screenX=0,screenY=0,status=yes,scrollbars=yes,toolbar=yes,resizable=yes,maximized=yes,menubar=yes,location=yes');
}

function abreNovaGuia(url)
{   
	window.open(url,'_blank');
}

function HabilitaCampo(item)
{
	item.readOnly = false;
}


function DesabilitaCampo(item)
{
	item.readOnly = true;
}


function FormataFone(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,15);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 3)
			campo.value = '(' + vr + ') ';
		
		if (tam == 10)
			campo.value = vr + '-';
	}
}


function FormataCep(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,10);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 3)
			campo.value = vr.substr(0, 2) + '.';
		
		if (tam == 6)
			campo.value = vr.substr(0, 2) + '.' + vr.substr(2, 5) + '-';
	}
}


function FormataCpf(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,14);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 4)
			campo.value = vr.substr(0, 3) + '.';
		
		if (tam == 7)
			campo.value = vr.substr(0, 3) + '.' + vr.substr(3, 6) + '.';
		
		if (tam == 11)
			campo.value = vr.substr(0, 3) + '.' + vr.substr(3, 3) + '.' + vr.substr(7, 3) + '-' + vr.substr(11, 2);
	}
}


function ValidarCPF(campo)
{
	/*onblur*/
	if (!campo)
		campo = this;
	
	if (typeof(campo.id) == "undefined")
		campo = this;
	
	v_ini_val = campo.value;
	inv = 0;
	
	if (campo.value != '') {
		var cpf = campo.value;
		exp = /\.|\-/g
		cpf = cpf.toString().replace(exp, "");
		var digitoDigitado = eval(cpf.charAt(9) + cpf.charAt(10));
		var soma1 = 0, soma2 = 0;
		var vlr = 11;

		for (i = 0; i < 9; i++)
		{
			soma1 += eval(cpf.charAt(i) * (vlr - 1));
			soma2 += eval(cpf.charAt(i) * vlr);
			vlr--;
		}
		
		soma1 = (((soma1 * 10) % 11) == 10 ? 0 : ((soma1 * 10) % 11));
		soma2 = (((soma2 + (2 * soma1)) * 10) % 11) == 10 ? 0 : (((soma2 + (2 * soma1)) * 10) % 11);

		var digitoGerado = (soma1 * 10) + soma2;
		
		if (digitoGerado != digitoDigitado) {
			//campo.value = '';
			alert('CPF (' + v_ini_val + ') Invalido!');
			invl = 1;
		}
	}

	if (campo.value != '')
		return true;
	else
	{
		if (inv == 1)
			setFocus(campo.id);
		
		return false;
	}
}


function formataCNPJ(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,18);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 3)
			campo.value = vr.substr(0, 2) + '.';
		
		if (tam == 6)
			campo.value = vr.substr(0, 2) + '.' + vr.substr(2, 6) + '.';
		
		if (tam == 10)
			campo.value = vr.substr(0, 2) + '.' + vr.substr(2, 7) + '/';
		
		if (tam == 14)
			campo.value = vr.substr(0, 2) + '.' + vr.substr(2, 7) + '/' + vr.substr(9, 10) + '-';
	}
}


function validarCNPJ(c) 
{
	/*onblur*/
	if (c.value != '')
	{
		var numeros, digitos, soma, i, resultado, pos, tamanho, digitos_iguais, cnpj = c.value.replace(/\D+/g, '');
		digitos_iguais = 1;
		
		if (cnpj.length != 14)
		{
			alert('CNPJ inválido');
			c.value = '';
			c.focus();
			return false;
		}

		for (i = 0; i < cnpj.length - 1; i++)
			if (cnpj.charAt(i) != cnpj.charAt(i + 1))
			{
				digitos_iguais = 0;
				break;
			}
		
		if (!digitos_iguais)
		{
			tamanho = cnpj.length - 2
			numeros = cnpj.substring(0, tamanho);
			digitos = cnpj.substring(tamanho);
			soma = 0;
			pos = tamanho - 7;
			
			for (i = tamanho; i >= 1; i--)
			{
				soma += numeros.charAt(tamanho - i) * pos--;
				
				if (pos < 2)
					pos = 9;
			}
			
			resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
			
			if (resultado != digitos.charAt(0))
			{
				alert('CNPJ inválido');
				c.value = '';
				c.focus();
				return false;
			}

			tamanho = tamanho + 1;
			numeros = cnpj.substring(0, tamanho);
			soma = 0;
			pos = tamanho - 7;
			
			for (i = tamanho; i >= 1; i--)
			{
				soma += numeros.charAt(tamanho - i) * pos--;
				
				if (pos < 2)
					pos = 9;
			}
			
			resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
			
			if (resultado != digitos.charAt(1))
			{
				alert('CNPJ inválido');
				c.value = '';
				c.focus();
				return false;
			}
			else
				return true;
		}
		else
		{
			alert('CNPJ inválido');
			c.value = '';
			c.focus();
			return false;
		}
	} 
}


function formataData(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,10);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 3)
			campo.value = vr.substr(0, 2) + '/';
		
		if (tam == 5)
			campo.value = vr.substr(0, 2) + '/' + vr.substr(2, 4) + '/';
	}
}


function verificarData(campo)
{
	/*onblur*/
	var vDia = campo.value.substr(0,2);
	var vMes = campo.value.substr(3,2);
	var vAno = campo.value.substr(6,5);
	
	var dt = new Date();
	var dia = dt.getDate();
	var mes = dt.getMonth() + 1;
	var ano = dt.getFullYear();
	
	if(dia > 0 && dia < 10)
		dia = "0" + dia;
	
	if(mes > 0 && mes < 10)
		mes = "0" + mes;
	
	if (vAno < ano)
		alert("Data Início do Benefício inferior a data de hoje.");
	else {
		if (vAno == ano) {
			if (vMes < mes)
				alert("Data Início do Benefício inferior a data de hoje.");
			else
				if (vMes == mes)
					if (vDia < dia)
						alert("Data Início do Benefício inferior a data de hoje.");
		}
	}
}


function formataDataHora(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,19);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("_", "");
	vr = vr.replace(":", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 3)
			campo.value = vr.substr(0, 2) + '/';
		
		if (tam == 5)
			campo.value = vr.substr(0, 2) + '/' + vr.substr(2, 4) + '/';
		
		if (tam == 10)
			campo.value = vr.substr(0, 2) + '/' + vr.substr(2, 8) + ' ' ;
		
		if (tam == 13)
			campo.value = vr.substr(0, 2) + '/' + vr.substr(2, 10) + ':' ;
		
		if (tam == 15)
			campo.value = vr.substr(0, 2) + '/' + vr.substr(2, 10) + ':' + vr.substr(12, 2) + ':' ;
	}
}


function formataMesAno(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,7);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
		if (tam == 3)
			campo.value = vr.substr(0, 2) + '/';
}


function formataHoraMinuto(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,5);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	vr = vr.replace(":", "");

	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 3)
			campo.value = vr.substr(0, 2) + ':';
	}
}


function formataValor(campo, tammax)
{
	/*onkeyup*/
	var valorAuxiliar = "";
	digitosValidos = "0123456789";
	jvalor = campo.value;

	for (i = 0; i < jvalor.length; i++)
	{
		if (digitosValidos.indexOf(jvalor.charAt(i)) >= 0)
			valorAuxiliar += jvalor.charAt(i);
	}
	
	if (tammax > 0 && tammax < valorAuxiliar.length)
		valorAuxiliar = valorAuxiliar.substring(0, tammax);

	while (valorAuxiliar.length > 3 && valorAuxiliar.charAt(0) == "0")
		valorAuxiliar = valorAuxiliar.substring(1);

	jvalor = valorAuxiliar;
	digitosNumericos = jvalor.length;

	for (i = 1; i <= (digitosNumericos / 3); i++)
		jvalor = jvalor.substring(0, digitosNumericos + 1 - 3 * i) + (i == 1 ? ',' : '.') + jvalor.substring(digitosNumericos + 1 - 3 * i);
	
	campo.value = jvalor;
}


function formataValorDecimal(campo, tammax, casaDecimal)
{
	/*onkeyup*/
	var valorAuxiliar = "";
	digitosValidos = "0123456789";
	jvalor = campo.value;

	for (i = 0; i < jvalor.length; i++)
	{
		if (digitosValidos.indexOf(jvalor.charAt(i)) >= 0)
			valorAuxiliar += jvalor.charAt(i);
	}
	
	if (tammax > 0 && tammax < valorAuxiliar.length)
		valorAuxiliar = valorAuxiliar.substring(0, tammax);

	while (valorAuxiliar.length > (casaDecimal + 1) && valorAuxiliar.charAt(0) == "0")
		valorAuxiliar = valorAuxiliar.substring(1);

	jvalor = valorAuxiliar;
	digitosNumericos = jvalor.length;

	for (i = 1; i <= (digitosNumericos / (casaDecimal + 1)); i++)
	{
		//jvalor = jvalor.substring(0, digitosNumericos + 1 - (casaDecimal + 1) * i) + (i == 1 ? ',' : '.') + jvalor.substring(digitosNumericos + 1 - (casaDecimal + 1) * i);
		jvalor = jvalor.substring(0, digitosNumericos + 1 - (casaDecimal + 1) * i) + (i == 1 ? ',' : '') + jvalor.substring(digitosNumericos + 1 - (casaDecimal + 1) * i);
	}
	
	campo.value = jvalor;
}


function somenteNumero(e)
{
	/*onkeypress*/
	var tecla = (window.event) ? event.keyCode : e.which;
    var tab = 0;
    
	if (navigator.appName.indexOf('Internet Explorer') > 0)
        tab = 9;
    
	if ((tecla > 47 && tecla < 58) || (tecla == tab)) 
		return true;
    else
    {
		if (tecla != 8) 
			return false;
		else 
			return true;
    }
}


function semNumero(tecla)
{
	/*onkeypress*/
	var i, nCount, sValue, fldLen, mskLen,bolMask, sCod, nTecla;

	if(document.all) // Internet Explorer
		nTecla = tecla.keyCode;
	else if(document.layers) // Nestcape
		nTecla = tecla.which;
	else
	{
		nTecla = tecla.which;
		if (nTecla == 8)
			return true;
	}

	if (nTecla != 8)
		return ((nTecla <= 47) || (nTecla >= 58)); 
	else 
		return true;
}


function somenteTexto(parTecla)
{
	/*onkeypress*/
	var tecla = parTecla.keyCode ? parTecla.keyCode : parTecla.which;
	
	/* Tecla Backspace */
	if (tecla == 8)
		return true;
	
	/* Tecla Space */
	if (tecla == 32)
		return true;
	
	/* Teclas a-z e A-Z */
	if ((tecla > 64 && tecla < 91) || (tecla > 96 && tecla < 123))
		return true;
	
	/* Teclas acentuadas e cidilha */
	if ((tecla > 191 && tecla < 221) || (tecla > 223 && tecla < 253))
		return true;
	
	alert("Este campo permite apenas letras minúscula ou maiúsculas");
	return false;
}


function validacaoEmail(campoEmail)
{
	/*onblur*/
	if (campoEmail.value != '')
	{
		var usuario = campoEmail.value.substring(0, campoEmail.value.indexOf("@"));
		var dominio = campoEmail.value.substring(campoEmail.value.indexOf("@") + 1, campoEmail.value.length);
		
		if (!((usuario.length >= 1) && (dominio.length >= 3) && (usuario.search("@") == -1) && (dominio.search("@") == -1) && (usuario.search(" ") == -1) && (dominio.search(" ") == -1) && (dominio.search(".") != -1) && (dominio.indexOf(".") >= 1) && (dominio.lastIndexOf(".") < dominio.length - 1)))
		{
			alert("E-mail inválido");
		}
	}
}


function validarQtdCaracter(campo,qtdDigito)
{
	/*onblur*/
	if(campo.value != '')
		if(campo.value.length < qtdDigito)
			alert("Está faltando dígitos, o mesmo deve conter " + qtdDigito + " dígitos");
}


function limitarCampo(campo,qtdDigito)
{
	/*onkeyup*/
	campo.value = campo.value.substring(0,qtdDigito);
}


function QuantidadeCaracter(campoValidacao)
{
	/*onblur*/
	if(campoValidacao.value != '')
	{
		if(campoValidacao.value.length < 15)
			alert("CNS: Está faltando números, o mesmo deve conter 15 dígitos");
	}
}


function limitarCNS(campo)
{
	/*onkeyup*/
	campo.value = campo.value.substring(0,15);
}


function setarEmpresa(p_emp,pag)
{
	$s('P'+pag+'_EMPRESA', p_emp);
	$s('P'+pag+'_MATRICULA', '');
	$s('P'+pag+'_PARTICIPANTE', '');
	
	/*var p = 'P';
	$s(p.concat(pag,'_EMPRESA'), p_emp);
	$s(p.concat(pag,'_MATRICULA'), '');
	$s(p.concat(pag,'_PARTICIPANTE'), '');*/
}


function FormataCel(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,15);
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 3)
			campo.value = '(' + vr + ') ';
		
		if (tam == 11)
			campo.value = vr + '-';
	}
}

function FormataFixoCel(campo, teclapres)
{
	/*onkeyup*/
	limitarCampo(campo,15);     
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	
	if (tecla != 8)
	{
		if (tam == 3)
		{
			campo.value = '(' + vr + ') ';
		}
		if (vr.length > 9)
		{
		    if ((vr.length - 9) >= 4)
				{
				campo.value = vr.substr(0, vr.length - 4) + '-' + vr.substr(vr.length - 4, 4);
				}
			else
				{
				campo.value = vr.substr(0, 9) + '-' + vr.substr(vr.length - (vr.length - 9), vr.length - 9);
				}
		}	
	}
}

function verificarAno(campo)
{
	/*onblur*/
	var vAno = campo.value.substr(6,5);
	alert(vAno);
	if (vAno != '') {
		if (vAno < 1900)
			alert("Data inválida");
    }
}
