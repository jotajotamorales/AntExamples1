(:: pragma bea:global-element-return element="ns0:setLogScoring" location="../../ATM/WS/XMLSchemaRegistrarLogScoring.xsd" ::)

declare namespace ns0 = "http://osb.vtr.cl/CLI/ATM/RegistrarLogScoring";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIDOMScoringPersonas_to_CLIATMRegistrarLogScoring/";

declare function xf:XQ_CLIDOMScoringPersonas_to_CLIATMRegistrarLogScoring($rutCliente as xs:string,
    $tipoProducto as xs:string,
    $scoringCalculado as xs:string,
    $tenenciaCalculada as xs:string,
    $permanenciaCalculada as xs:string,
    $origenScoring as xs:string)
    as element(ns0:setLogScoring) {
        <ns0:setLogScoring>
            <srvRegistrarLogScoringRequest>
                <rut_cliente>{ $rutCliente }</rut_cliente>
                <tipo_producto>{ $tipoProducto }</tipo_producto>
                <scoring_calculado>{ $scoringCalculado }</scoring_calculado>
                <origen_Scoring>{ $origenScoring }</origen_Scoring>
                <tenencia_Calculada>{ $tenenciaCalculada }</tenencia_Calculada>
                <permanencia_Calculada>{ $permanenciaCalculada }</permanencia_Calculada>
            </srvRegistrarLogScoringRequest>
        </ns0:setLogScoring>
};

declare variable $rutCliente as xs:string external;
declare variable $tipoProducto as xs:string external;
declare variable $scoringCalculado as xs:string external;
declare variable $tenenciaCalculada as xs:string external;
declare variable $permanenciaCalculada as xs:string external;
declare variable $origenScoring as xs:string external;

xf:XQ_CLIDOMScoringPersonas_to_CLIATMRegistrarLogScoring($rutCliente,
    $tipoProducto,
    $scoringCalculado,
    $tenenciaCalculada,
    $permanenciaCalculada,
    $origenScoring)