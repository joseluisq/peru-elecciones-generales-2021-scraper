import 'dart:convert' show json;
import 'dart:io' show File;
import 'package:markdown/markdown.dart';
import 'package:intl/intl.dart';

// Generated by https://javiercbk.github.io/json_to_dart/ and adapted at convenience

class JsonResults {
  final Generals generals;
  final List<Results> results;
  final Summary summary;

  JsonResults.fromJson(Map<String, dynamic> json)
      : generals = Generals.fromJson(json['generals'] as Map<String, dynamic>),
        results = (json['results'] as List<dynamic>)
            .map((r) => Results.fromJson(r as Map<String, dynamic>))
            .toList(),
        summary = Summary.fromJson(json['summary'] as Map<String, dynamic>);

  Map<String, dynamic> toJson() {
    return {
      'generals': generals.toJson(),
      'results': results.map((v) => v.toJson()).toList(),
      'summary': summary.toJson(),
    };
  }
}

class Generals {
  final GeneralData generalData;
  final ActData actData;
  final String realImages;

  Generals.fromJson(Map<String, dynamic> json)
      : generalData =
            GeneralData.fromJson(json['generalData'] as Map<String, dynamic>),
        actData = ActData.fromJson(json['actData'] as Map<String, dynamic>),
        realImages = json['realImages'] as String;

  Map<String, dynamic> toJson() {
    return {
      'generalData': generalData.toJson(),
      'actData': actData.toJson(),
      'realImages': realImages,
    };
  }
}

class GeneralData {
  final String electoresHabiles;
  final String totalCiudadanosVotaron;
  final String porCiudadanosVotaron;
  final String porActasContabilizadas;
  final String porActasProcesadas;
  final String actasProcesadas;
  final String porProcesar;
  final String contabiliza;
  final String porPorProcesar;
  final String nCandidatos;

  GeneralData.fromJson(Map<String, dynamic> json)
      : electoresHabiles = json['ELECTORES_HABIL'] as String,
        totalCiudadanosVotaron = json['TOT_CIUDADANOS_VOTARON'] as String,
        porCiudadanosVotaron = json['POR_CIUDADANOS_VOTARON'] as String,
        porActasContabilizadas = json['POR_ACTAS_CONTABILIZADAS'] as String,
        porActasProcesadas = json['POR_ACTAS_PROCESADAS'] as String,
        actasProcesadas = json['ACTAS_PROCESADAS'] as String,
        porProcesar = json['POR_PROCESAR'] as String,
        contabiliza = json['CONTABILIZA'] as String,
        porPorProcesar = json['POR_POR_PROCESAR'] as String,
        nCandidatos = json['N_CANDIDATOS'] as String;

  Map<String, String> toJson() {
    return {
      'ELECTORES_HABIL': electoresHabiles,
      'TOT_CIUDADANOS_VOTARON': totalCiudadanosVotaron,
      'POR_CIUDADANOS_VOTARON': porCiudadanosVotaron,
      'POR_ACTAS_CONTABILIZADAS': porActasContabilizadas,
      'POR_ACTAS_PROCESADAS': porActasProcesadas,
      'ACTAS_PROCESADAS': actasProcesadas,
      'POR_PROCESAR': porProcesar,
      'CONTABILIZA': contabiliza,
      'POR_POR_PROCESAR': porPorProcesar,
      'N_CANDIDATOS': nCandidatos,
    };
  }
}

class ActData {
  final String fecha;
  final String hora;
  final String porAvance;

  ActData.fromJson(Map<String, dynamic> json)
      : fecha = json['FECHA'] as String,
        hora = json['HORA'] as String,
        porAvance = json['POR_AVANCE'] as String;

  Map<String, String> toJson() {
    return {
      'FECHA': fecha,
      'HORA': hora,
      'POR_AVANCE': porAvance,
    };
  }
}

class Results {
  final String? cCodiAgruPol;
  final String agrupacion;
  final String totalVotos;
  final String? nLista;
  final String? porValidos;
  final String porEmitidos;
  final String? nombreCandidato;
  final String? imagenAgrupacion;
  final String? porcAvanceActa;
  final String? actasComputadas;
  final String? totalMesas;

  Results.fromJson(Map<String, dynamic> json)
      : cCodiAgruPol = json['C_CODI_AGRUPOL'] as String?,
        agrupacion = json['AGRUPACION'] as String,
        totalVotos = json['TOTAL_VOTOS'] as String,
        nLista = json['NLISTA'] as String?,
        porValidos = json['POR_VALIDOS'] as String?,
        porEmitidos = json['POR_EMITIDOS'] as String,
        nombreCandidato = json['NOMBREe_CANDIDATO'] as String?,
        imagenAgrupacion = json['IMAGENAGRUPACION'] as String?,
        porcAvanceActa = json['PORC_AVANCE_ACTA'] as String?,
        actasComputadas = json['ACTAS_COMPUTADA'] as String?,
        totalMesas = json['TOTAL_MESAS'] as String?;

  Map<String, dynamic> toJson() {
    return {
      'C_CODI_AGRUPOL': cCodiAgruPol,
      'AGRUPACION': agrupacion,
      'TOTAL_VOTOS': totalVotos,
      'NLISTA': nLista,
      'POR_VALIDOS': porValidos,
      'POR_EMITIDOS': porEmitidos,
      'NOMBREe_CANDIDATO': nombreCandidato,
      'IMAGENAGRUPACION': imagenAgrupacion,
      'PORC_AVANCE_ACTA': porcAvanceActa,
      'ACTAS_COMPUTADA': actasComputadas,
      'TOTAL_MESAS': totalMesas,
    };
  }
}

class Summary {
  final String cCodiUbigeo;
  final String contabiliza;
  final String contNormal;
  final String impugnada;
  final String errorMat;
  final String mesasInstaladas;
  final String actasProcesadas;
  final String solNulidad;
  final String ilegible;
  final String pendiente;
  final String otrasObs;
  final String sinDatos;
  final String contAnulada;
  final String porProcesar;
  final String extraviada;
  final String siniestrada;
  final String incompleta;
  final String sinFirma;
  final String aIinstalar;
  final String mesasNoInst;
  final String fusionadas;
  final String nTotalAuto;
  final String mesasHabiles;
  final String totCiudadanosVotaron;
  final String electoresHabil;
  final String electoresHabil50;
  final String totalJEE;

  Summary.fromJson(Map<String, dynamic> json)
      : cCodiUbigeo = json['CCODI_UBIGEO'] as String,
        contabiliza = json['CONTABILIZA'] as String,
        contNormal = json['CONT_NORMAL'] as String,
        impugnada = json['IMPUGNADA'] as String,
        errorMat = json['ERROR_MAT'] as String,
        mesasInstaladas = json['MESAS_INSTALADAS'] as String,
        actasProcesadas = json['ACTAS_PROCESADAS'] as String,
        solNulidad = json['SOL_NULIDAD'] as String,
        ilegible = json['ILEGIBLE'] as String,
        pendiente = json['PENDIENTE'] as String,
        otrasObs = json['OTRAS_OBS'] as String,
        sinDatos = json['SIN_DATOS'] as String,
        contAnulada = json['CONT_ANULADA'] as String,
        porProcesar = json['POR_PROCESAR'] as String,
        extraviada = json['EXTRAVIADA'] as String,
        siniestrada = json['SINIESTRADA'] as String,
        incompleta = json['INCOMPLETA'] as String,
        sinFirma = json['SIN_FIRMA'] as String,
        aIinstalar = json['A_INSTALAR'] as String,
        mesasNoInst = json['MESAS_NO_INST'] as String,
        fusionadas = json['FUSIONADAS'] as String,
        nTotalAuto = json['NTOTAL_AUTO'] as String,
        mesasHabiles = json['MESAS_HABILES'] as String,
        totCiudadanosVotaron = json['TOT_CIUDADANOS_VOTARON'] as String,
        electoresHabil = json['ELECTORES_HABIL'] as String,
        electoresHabil50 = json['ELECTORES_HABIL_50'] as String,
        totalJEE = json['TOTAL_JEE'] as String;

  Map<String, dynamic> toJson() {
    return {
      'CCODI_UBIGEO': cCodiUbigeo,
      'CONTABILIZA': contabiliza,
      'CONT_NORMAL': contNormal,
      'IMPUGNADA': impugnada,
      'ERROR_MAT': errorMat,
      'MESAS_INSTALADAS': mesasInstaladas,
      'ACTAS_PROCESADAS': actasProcesadas,
      'SOL_NULIDAD': solNulidad,
      'ILEGIBLE': ilegible,
      'PENDIENTE': pendiente,
      'OTRAS_OBS': otrasObs,
      'SIN_DATOS': sinDatos,
      'CONT_ANULADA': contAnulada,
      'POR_PROCESAR': porProcesar,
      'EXTRAVIADA': extraviada,
      'SINIESTRADA': siniestrada,
      'INCOMPLETA': incompleta,
      'SIN_FIRMA': sinFirma,
      'A_INSTALAR': aIinstalar,
      'MESAS_NO_INST': mesasNoInst,
      'FUSIONADAS': fusionadas,
      'NTOTAL_AUTO': nTotalAuto,
      'MESAS_HABILES': mesasHabiles,
      'TOT_CIUDADANOS_VOTARON': totCiudadanosVotaron,
      'ELECTORES_HABIL': electoresHabil,
      'ELECTORES_HABIL_50': electoresHabil50,
      'TOTAL_JEE': totalJEE,
    };
  }
}

Future<void> main() async {
  const jsonFilePath = 'elecciones_generales_2021_segunda_jornada.json';
  final jsonContent = await File(jsonFilePath).readAsString();

  final decode = json.decode(jsonContent) as Map<String, dynamic>;
  final obj = JsonResults.fromJson(decode);

  // Crear contenido HTML
  final general = obj.generals.generalData;
  final actData = obj.generals.actData;
  final details = StringBuffer()..write('''
## Fórmula Presidencial — Todos

- **Actas Procesadas:** ${general.porActasProcesadas}%
- **Actas Contabilizadas:** ${general.porActasContabilizadas}%
- **Fecha de Actualización:** ${actData.fecha} ${actData.hora}

<div style="overflow-x:auto;">

| Electores Hábiles | Participación Ciudadana | Actas Procesadas |
| --- | --- | --- |
| ${general.electoresHabiles}% | ${general.totalCiudadanosVotaron} (${general.porCiudadanosVotaron}%) | ${general.porActasProcesadas}% |

</div>
''')..write('''

## Total de Votos

_Ordenado por "(%) Votos Válidos" de forma descendente._

<div class="table-default" style="overflow-x:auto;">

| Organización Política | Total Votos | (%) Votos Válidos | (%) Votos Emitidos |
| --- | --- | --- | --- |
''');

  obj.results.sort((a, b) {
    if (a.porValidos != null && b.porValidos != null) {
      return double.parse(b.porValidos!).compareTo(double.parse(a.porValidos!));
    }

    return -1;
  });

  final entries = List<Results>.from([]);

  for (var r in obj.results) {
    if (r.nLista != null) {
      entries.add(r);
    }
  }

// We take the first two entries
  final first = entries[0];
  details.write('''
| ${first.agrupacion}  | ${first.totalVotos} | ${first.porValidos}% | ${first.porEmitidos}% |
''');
  final second = entries[1];
  final totalDiffV = double.parse(first.totalVotos.replaceAll(',', '').trim()) -
      double.parse(second.totalVotos.replaceAll(',', '').trim());
  final totalDiffPercentV = double.parse(first.porValidos.toString()) -
      double.parse(second.porValidos.toString());
  final totalDiffEmitPercentV = double.parse(first.porEmitidos.toString()) -
      double.parse(second.porEmitidos.toString());

  final totalDiff = NumberFormat('#,###,000').format(totalDiffV);
  final totalDiffPercent = NumberFormat('##0.0##').format(totalDiffPercentV);
  final totalDiffEmitPercent =
      NumberFormat('##0.0##').format(totalDiffEmitPercentV);

  details.write('''
| ${second.agrupacion}  | ${second.totalVotos} | ${second.porValidos}% | ${second.porEmitidos}% |

**Diferencia Total Votos:** $totalDiff <br>
**Diferencia Votos Válidos (%):** $totalDiffPercent% <br>
**Diferencia Votos Emitidos (%):** $totalDiffEmitPercent%

\n</div>
''');

  var pageMd = await File('elecciones_generales_2021_segunda_jornada.tmpl.md')
      .readAsString();
  pageMd = pageMd.replaceFirst('{{body}}', details.toString());

  await File('elecciones_generales_2021_segunda_jornada.html').writeAsString(
      markdownToHtml(pageMd, extensionSet: ExtensionSet.gitHubFlavored));

  print('Contenido HTML generado con éxito.');
}