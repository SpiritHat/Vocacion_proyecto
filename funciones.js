const preguntas = new Array(100);

function agregar_respuesta(r) {
    preguntas[r]=1;
}

function reiniciarpregunta() {
    for (var i = 0; i < 100; i++) {
            preguntas[1]=0; 
    }
}

function cambiarotro(elemento) {
    var valor=elemento.value;
    if (valor=="Otra") {
        document.getElementById("otro").disabled = false;
        document.getElementById("otro").style.display = "block";
        document.getElementById("otro").focus();
    }else{
        document.getElementById("otro").disabled = true;
        document.getElementById("otro").style.display = "none";
        document.getElementById("otro").value="";
    }
}

function validarformulario() {
    if (document.getElementById("nombre").value=="") {
        alert("Por favor, Ingrese su nombre completo");
        document.getElementById("nombre").focus();
        return false;
    }
    if (document.getElementById("correo").value=="") {
        alert("Por favor, Ingrese su correo");
        document.getElementById("correo").focus();
        return false;
    }
    if (document.getElementById("telefono").value=="") {
        alert("Por favor, Ingrese su telefono");
        document.getElementById("telefono").focus();
        return false;
    }
    if (document.getElementById("colegio").value=="") {
        alert("Por favor, Ingrese su colegio");
        document.getElementById("colegio").focus();
        return false;
    }
    if (document.getElementById("carrera").value=="") {
        alert("Por favor, seleccione su carrera preferida");
        document.getElementById("carrera").focus();
        return false;
    }
    if (document.getElementById("carrera").value=="Otra") {
        if (document.getElementById("Otra").value=="") {
            alert("Por favor, Ingrese su carrera preferida");
            document.getElementById("Otra").focus();
            return false;
        }
    }

    const CI=[98,12,64,53,85,1,78,20,71,91];
    const HI=[9,34,80,25,95,67,41,74,56,89];
    const AI=[21,45,96,57,28,11,50,3,81,36];
    const SI=[33,92,70,8,87,62,23,44,16,52];
    const II=[75,6,19,38,60,27,83,54,47,97];
    const DI=[84,31,48,73,5,65,14,37,58,24];
    const EI=[77,42,88,17,93,32,68,49,35,61];
    
    const CA=[15,51,2,46];
    const HA=[63,30,72,86];
    const AA=[22,39,76,82];
    const SA=[69,40,29,4];
    const IA=[26,59,90,10];
    const DA=[13,66,18,43];
    const EA=[94,7,79,55];

    var CIT=sumar_resultado(CI);
    var HIT=sumar_resultado(HI);
    var AIT=sumar_resultado(AI);
    var SIT=sumar_resultado(SI);
    var IIT=sumar_resultado(II);
    var DIT=sumar_resultado(DI);
    var EIT=sumar_resultado(EI);

    var CAT=sumar_resultado(CA);
    var HAT=sumar_resultado(HA);
    var AAT=sumar_resultado(AA);
    var SAT=sumar_resultado(SA);
    var IAT=sumar_resultado(IA);
    var DAT=sumar_resultado(DA);
    var EAT=sumar_resultado(EA);

    var intereses=Math.max(CIT,HIT,AIT,SIT,IIT,DIT,EIT);
    var aptitudes=Math.max(CAT,HAT,AAT,SAT,IAT,DAT,EAT);

    var Rinte='';

    if(intereses==CIT){Rinte='C'}
    if(intereses==HIT){if(Rinte!=''){Rinte+=',H';}else{Rinte='H';}}
    if(intereses==AIT){if(Rinte!=''){Rinte+=',A';}else{Rinte='A';}}
    if(intereses==SIT){if(Rinte!=''){Rinte+=',S';}else{Rinte='S';}}
    if(intereses==IIT){if(Rinte!=''){Rinte+=',I';}else{Rinte='I';}}
    if(intereses==DIT){if(Rinte!=''){Rinte+=',D';}else{Rinte='D';}}
    if(intereses==EIT){if(Rinte!=''){Rinte+=',E';}else{Rinte='E';}}

    var Rapti='';

    if(aptitudes==CAT){Rapti='C';}
    if(aptitudes==HAT){if(Rapti!=''){Rapti+=',H';}else{Rapti='H';}}
    if(aptitudes==AAT){if(Rapti!=''){Rapti+=',A';}else{Rapti='A';}}
    if(aptitudes==SAT){if(Rapti!=''){Rapti+=',S';}else{Rapti='S';}}
    if(aptitudes==IAT){if(Rapti!=''){Rapti+=',I';}else{Rapti='I';}}
    if(aptitudes==DAT){if(Rapti!=''){Rapti+=',D';}else{Rapti='D';}}
    if(aptitudes==EAT){if(Rapti!=''){Rapti+=',E';}else{Rapti='E';}}

    document.getElementById('aptitudes').value = Rapti;
    document.getElementById('intereses').value = Rinte;
}

function sumar_resultado(vector) {
    var resultado=0;
    var ancho=vector.length;
    for (var i = 0; i < ancho; i++) {
        resultado=resultado+preguntas[vector[i]]        
    }
    return resultado;
}