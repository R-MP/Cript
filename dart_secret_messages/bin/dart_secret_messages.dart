import 'dart:io';

void main() {
  // ignore: omit_local_variable_types
  String mes =
      'JUFMTMQMN PMFMSQKYN CGY SKQVQFHQP RQN WQOYFQN EU KMU EY LQRYMKU YNSQU GSMFMDQREU TQKKYBQEUKYN EY WGDMF EQ PQKMRHQ. U UVLYSMOU Y QBMFMDQK Q KYTQKBQ EQ QKPQ EGKQRSY TURWKURSUN TUP SKQWMTQRSYN YP UJYKQTUYN TUPU Q CGY OYP NYREU KYQFMDQEQ RQN WQOYFQN EU NGVGKVMU TQKMUTQ. TUP PQMN QJQKYFHUN, UN JUFMTMQMN RQU JYKEYP SYPJU TUFUTQREU VQFQN RUN TQKKYBQEUKYN CGY WMTQP OQDMUN EYJUMN EUN EMNJQKUN'; //Texto

  // ignore: omit_local_variable_types
  String met = 'Frq';
/* Comandos de Met--------------------------------------------------------------
   RevAts = Reverte Atbash   Ats = Traduz Atbash    Frq = Analise de Frequqencia
   RevAlb = Reverte Albam    Alb = Traduz Albam
   RevAtb = Reverte Atbah    Atb = Traduz Atbah
*/
  // ignore: omit_local_variable_types
  String def =
      'Aa,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm,Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz';

  // ignore: omit_local_variable_types
  String Atbash =
      'Zz,Yy,Xx,Ww,Vv,Uu,Tt,Ss,Rr,Qq,Pp,Oo,Nn,Mm,Ll,Kk,Jj,Ii,Hh,Gg,Ff,Ee,Dd,Cc,Bb,Aa';

  // ignore: omit_local_variable_types
  String Albam =
      'Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz,Aa,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm';

  // ignore: omit_local_variable_types
  String Atbah =
      'Ii,Hh,Gg,Ff,Nn,Dd,Cc,Bb,Aa,Rr,Qq,Pp,Oo,Ee,Mm,Ll,Kk,Jj,Zz,Yy,Xx,Ww,Vv,Uu,Tt,Ss';

  // ignore: omit_local_variable_types
  String Freq =
      //'Aa,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm,Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz'
      'Qq,Bb,Ss,Tt,Uu,Hh,Vv,Oo,Kk,Ll,Xx,Jj,Rr,Ee,Yy,Gg,Dd,Nn,Mm,Ff,Pp,Ww,Aa,Zz,Ii,Cc';

  var rev = met;
  var choice = met;
  switch (met) {
    case 'Ats':
      {
        choice = Atbash;
      }
      break;
    case 'Alb':
      {
        choice = Albam;
      }
      break;
    case 'Atb':
      {
        choice = Atbah;
      }
      break;
    case 'RevAts':
      {
        rev = Atbash;
      }
      break;
    case 'RevAlb':
      {
        rev = Albam;
      }
      break;
    case 'RevAtb':
      {
        rev = Atbah;
      }
      break;
    case 'Frq':
      {
        rev = Freq;
      }
      break;
    default:
      {
        // ignore: prefer_single_quotes
        print("Erro ao ler o método de criptografia");
      }
      exit(2);
  }

  final coded = [];

  if (rev == met) {
    // ignore: omit_local_variable_types
    for (int i = 0; i < mes.length; i++) {
      if (mes[i] == ' ') {
        coded.add('');
      } else {
        coded.add(choice[def.indexOf(mes[i])]);
      }
    }
  } else {
    // ignore: omit_local_variable_types
    for (int i = 0; i < mes.length; i++) {
      if (mes[i] == ' ') {
        coded.add(' ');
      } else {
        coded.add(def[rev.indexOf(mes[i])]);
      }
    }
  }
  print(coded.join());
}
