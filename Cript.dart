import 'dart:io';

void main() {
  String mes =
      "T QZWXT RA CWORZOQOT AI ASCASDOWNO RA QTIUZYOQOT YAI XNRT ORNQNTSORT OX "
      "ZSNJAWXNRORAX RAXRA T NSNQNT RTX OSTX STJASYO OHCZIOX ZSNJAWXNRORAX QTIT "
      "T INY NSXYNYZYT RA YAQSTHTCNO RA IOXXOQDZXXAYYX STX AXYORTX ZSNRTX TUYOWOI "
      "UTW ZSNW TX RAUOWYOIASYTX RA ASCASDOWNO AHAYWNQO A RA QNASQNO RO QTIUZYOQOTZIO "
      "JAE VZA TX ASCASDANWTX RA QTIUZYOQOT BTQOIXA AXXASQNOHIASYA AI AHAYWTSNQO A "
      "QTIUZYORTWAX T QTSYAZRT RTX XAZX QZWXTX YAWOT YASRASQNOHIASYA IASTX RNXQNUHNSOX "
      "RA QNASQNOX SOYZWONX QTIT O AXYOYNQO TZ O RNSOINQO RT VZA TX QZWXTX YWORNQNTSONX "
      "RA ASCASDOWNO XOHJT QZWXTX VZA UTXXZAI QNQHT POXNQT AI JAE RNXXT XOT INSNXYWORTX "
      "QZWXTX XTPWA TX BZSROIASYTX RO QNASQNO RO QTIUZYOQOTST QOXT RT PWOXNH O IONTWNO "
      "RTX QZWXTX RA ASCASDOWNO RA QTIUZYOQOT XZWCNZ QTIT ZIO AXUAQNOHNEOQOT RT QZWXT RA "
      "ASCASDOWNO AHAYWNQO A A NXYT VZA TX RNBAWASQNO RTX QZWXTX RA QNASQNO RO QTIUZYOQOT "
      "ASVZOSYT AI QNASQNO RO QTIUZYOQOT ALNXYA ZI BTQT IONX AXUAQNBNQT AI RAXASJTHJNIASYT "
      "RA XTBYKOWA QTIUHALNRORA RA OHCTWNYITX XNXYAIOX TUAWOQNTSONX QTIUNHORTWAX A POSQTX RA "
      "RORTX O ASCASDOWNO RA QTIUZYOQOT BTQO IONX AI DOWRKOWA UWTQAXXTX OZYTIOQOT A XTBYKOWA "
      "AIPOWQORTQTIT O CWORZOQOT AI QNASQNO RO QTIUZYOQOT QTIAQTZ O XZWCNW ST UONX ST BNSOH RO "
      "RAQORO RA XAXXASYO  T UWNIANWT QZWXT RA POQDOWAHORT AI QNASQNO RO QTIUZYOQOT BTN QWNORT "
      "SO ZSNQOIU AI XAXXASYO A TNYT  TQTWWAZ VZA AI JOWNOX ZSNJAWXNRORAX VZA FO TBAWAQNOI "
      "OVZAHA QZWXT O NSXYOZWOQOT RT QZWXT RA ASCASDOWNO RA QTIUZYOQOT XACZNZ T UORWOT RT "
      "INY ZI ALAIUHT RNXXT A O UWTUWNO ZSNQOIU VZA NSXYOZWTZ RZOX ITROHNRORAX RA QZWXT ZI "
      "QTI ASBOXA AI RAXASJTHJNIASYT RA XTBYKOWA INSNXYWORT UAHT NSXYNYZYT RA QTIUZYOQOT A "
      "TZYWT QTI ASBOXA AI DOWRKOWA A UWTQAXXTX INSNXYWORT UAHO BOQZHRORA RA ASCASDOWNO "
      "AHAYWNQO A RA QTIUZYOQOT IONX YOWRA AHO JTHYTZ O TBAWAQAW T QZWXT"; //Texto

  String met = 'Frq';
/* Comandos de Met--------------------------------------------------------------
   RevAts = Reverte Atbash   Ats = Traduz Atbash    Frq = Analise de Frequencia
   RevAlb = Reverte Albam    Alb = Traduz Albam
   RevAtb = Reverte Atbah    Atb = Traduz Atbah
*/

  String def =
      'Aa,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm,Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz';

  String Atbash =
      'Zz,Yy,Xx,Ww,Vv,Uu,Tt,Ss,Rr,Qq,Pp,Oo,Nn,Mm,Ll,Kk,Jj,Ii,Hh,Gg,Ff,Ee,Dd,Cc,Bb,Aa';

  String Albam =
      'Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz,Aa,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm';

  String Atbah =
      'Ii,Hh,Gg,Ff,Nn,Dd,Cc,Bb,Aa,Rr,Qq,Pp,Oo,Ee,Mm,Ll,Kk,Jj,Zz,Yy,Xx,Ww,Vv,Uu,Tt,Ss';

  String Freq =
      //'Aa,Bb,Cc,Dd,Ee,Ff,Gg,Hh,Ii,Jj,Kk,Ll,Mm,Nn,Oo,Pp,Qq,Rr,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz'
        'Oo,Pp,Qq,Rr,Aa,Bb,Cc,Dd,Nn,Ff,Kk,Hh,Ii,Ss,Tt,Uu,Vv,Ww,Xx,Yy,Zz,Jj,Kk,Ll,Yy,Ee';

  var rev = met;
  var choice = met;
  switch (met) {
    case "Ats":
      {
        choice = Atbash;
      }
      break;
    case "Alb":
      {
        choice = Albam;
      }
      break;
    case "Atb":
      {
        choice = Atbah;
      }
      break;
    case "RevAts":
      {
        rev = Atbash;
      }
      break;
    case "RevAlb":
      {
        rev = Albam;
      }
      break;
    case "RevAtb":
      {
        rev = Atbah;
      }
      break;
    case "Frq":
      {
        rev = Freq;
      }
      break;
    default:
      {
        print("Erro ao ler o método de criptografia");
      }
      exit(2);
  }

  final coded = [];

  if (rev == met) {
    for (int i = 0; i < mes.length; i++) {
      if (mes[i] == ' ')
        coded.add(' ');
      else {
        coded.add(choice[def.indexOf(mes[i])]);
      }
    }
  } else {
    for (int i = 0; i < mes.length; i++) {
      if (mes[i] == ' '){coded.add(' ');}
      else {
        coded.add(def[rev.indexOf(mes[i])]);
      }
    }
  }
  print(coded.join());
}
