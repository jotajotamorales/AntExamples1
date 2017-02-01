(:: pragma bea:global-element-return element="ns0:getScoringInternoPersonasResponse" location="../../ATM/WS/XMLSchemaConsultarScoringInterno.xsd" ::)

declare namespace ns0 = "http://osb.vtr.cl/CLI/ATM/ConsultarScoringInterno";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIDOMScoringPersonasDummyIN_to_CLIATMScoringPersonasDummyOUT/";

declare function xf:XQ_CLIDOMScoringPersonasDummyIN_to_CLIATMScoringPersonasDummyOUT($scoringInterno as xs:string,
    $ejecucionExitosa as xs:string,
    $CodigoError as xs:string,
    $Mensaje as xs:string)
    as element(ns0:getScoringInternoPersonasResponse) {
        <ns0:getScoringInternoPersonasResponse>
            <srvConsultaScoringInterno>
                <scoringInterno>{ xs:int($scoringInterno) }</scoringInterno>
                <ResultadoEjecucion>
                    <EjecucionExitosa>{ xs:boolean($ejecucionExitosa) }</EjecucionExitosa>
                    <CodigoError>{ $CodigoError }</CodigoError>
                    <mensaje>{ $Mensaje }</mensaje>
                </ResultadoEjecucion>
            </srvConsultaScoringInterno>
        </ns0:getScoringInternoPersonasResponse>
};

declare variable $scoringInterno as xs:string external;
declare variable $ejecucionExitosa as xs:string external;
declare variable $CodigoError as xs:string external;
declare variable $Mensaje as xs:string external;

xf:XQ_CLIDOMScoringPersonasDummyIN_to_CLIATMScoringPersonasDummyOUT($scoringInterno,
    $ejecucionExitosa,
    $CodigoError,
    $Mensaje)
