(:: pragma bea:global-element-return element="ns0:respScoringPersonas" location="../WS/CLIDOMScoringPersonaResponse.xsd" ::)

declare namespace ns1 = "http://osbcorp.vtr.cl/GLOBAL/EMP/ResultadoEjecucion";
declare namespace ns0 = "http://osbcorp.vtr.cl/CLI/DOM/scoringPersonasResp";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIDOMScoringPersonasDummyIN_to_CLIEMPScoringPersonasDummyOUT/";

declare function xf:XQ_CLIDOMScoringPersonasDummyIN_to_CLIEMPScoringPersonasDummyOUT($ejecucionExitosa as xs:string,
    $codigoError as xs:string,
    $mensaje as xs:string,
    $puntajeScoring as xs:string,
    $grupoRiesgo as xs:string,
    $glosaResultado as xs:string)
    as element(ns0:respScoringPersonas) {
        <ns0:respScoringPersonas>
            <ns0:ResultadoEjecucion>
                <ns1:ejecucionExitosa>{ xs:boolean($ejecucionExitosa) }</ns1:ejecucionExitosa>
                <ns1:codigoError>{ $codigoError }</ns1:codigoError>
                <ns1:mensaje>{ $mensaje }</ns1:mensaje>
            </ns0:ResultadoEjecucion>
            <ns0:scoringPersonas>
                <ns0:puntajeScoring>{ $puntajeScoring }</ns0:puntajeScoring>
                <ns0:grupoRiesgo>{ $grupoRiesgo }</ns0:grupoRiesgo>
                <ns0:glosaResultado>{ $glosaResultado }</ns0:glosaResultado>
            </ns0:scoringPersonas>
        </ns0:respScoringPersonas>
};

declare variable $ejecucionExitosa as xs:string external;
declare variable $codigoError as xs:string external;
declare variable $mensaje as xs:string external;
declare variable $puntajeScoring as xs:string external;
declare variable $grupoRiesgo as xs:string external;
declare variable $glosaResultado as xs:string external;

xf:XQ_CLIDOMScoringPersonasDummyIN_to_CLIEMPScoringPersonasDummyOUT($ejecucionExitosa,
    $codigoError,
    $mensaje,
    $puntajeScoring,
    $grupoRiesgo,
    $glosaResultado)
