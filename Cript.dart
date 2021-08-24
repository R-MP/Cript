import 'dart:io';
void main(){
String mes = 'Insira seu texto aqui'; //Texto

String met = 'Insira um dos comandos aqui';
/* Comandos de Met--------------------------------------------------------------
   RevAts = Reverte Atbash   Ats = Traduz Atbash
   RevAlb = Reverte Albam    Alb = Traduz Albam
   RevAtb = Reverte Atbah    Atb = Traduz Atbah
*/

String def = 'Aa,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm,Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz';

String Atbash = 'Zz,Yy,Xx,Ww,Vv,Uu,Tt,Ss,Rr,Qq,Pp,Oo,Nn,Mm,Ll,Kk,Jj,Ii,Hh,Gg,Ff,Ee,Dd,Cc,Bb,Aa';

String Albam = 'Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz,Aa,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm';

String Atbah = 'Ii,Hh,Gg,Ff,Nn,Dd,Cc,Bb,Aa,Rr,Qq,Pp,Oo,Ee,Mm,Ll,Kk,Jj,Zz,Yy,Xx,Ww,Vv,Uu,Tt,Ss';

var rev = met;
var choice = met;
  switch(met){
    case "Ats":{choice = Atbash;} break;
    case "Alb": {choice = Albam;} break;
    case "Atb": {choice = Atbah;} break;
    case "RevAts":{rev = Atbash;} break;
    case "RevAlb": {rev = Albam;} break;
    case "RevAtb": {rev = Atbah;} break;
    default:{print("Erro ao ler o método de criptografia");} exit(2);
  }

final coded = [];

if(rev == met){
for(int i=0;i<mes.length;i++) {
    if(mes[i] == ' ')
       coded.add(' ');
    else {
      coded.add(choice[def.indexOf(mes[i])]);
    }
}}else{
  for(int i=0;i<mes.length;i++) {
    if(mes[i] == ' ')
      coded.add(' ');
    else {
      coded.add(def[rev.indexOf(mes[i])]);
    }
}}
print(coded.join());
}


