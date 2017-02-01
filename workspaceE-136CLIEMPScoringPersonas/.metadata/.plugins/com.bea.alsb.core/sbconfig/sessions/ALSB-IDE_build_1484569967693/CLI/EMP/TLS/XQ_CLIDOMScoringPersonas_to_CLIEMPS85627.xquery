<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$respScoringPersonas1" element="ns1:respScoringPersonas" location="../../DOM/WS/CLIDOMScoringPersonaResponse.xsd" ::)
(:: pragma bea:global-element-return element="ns0:scoringPersonasResponse" location="../WS/CLIEMPScoringPersonas.wsdl" ::)

declare namespace ns2 = "http://osbcorp.vtr.cl/GLOBAL/EMP/ResultadoEjecucion";
declare namespace ns1 = "http://osbcorp.vtr.cl/CLI/DOM/scoringPersonasResp";
declare namespace ns3 = "http://osbcorp.vtr.cl/CLI/EMP/scoringPersonasResp";
declare namespace ns0 = "http://osbcorp.vtr.cl/CLI/EMP/scoringPersonas";
declare namespace xf = "http://tempuri.org/CLI/EMP/TLS/XQ_CLIDOMScoringPersonas_to_CLIEMPScoringPersonas/";

declare function xf:XQ_CLIDOMScoringPersonas_to_CLIEMPScoringPersonas($respScoringPersonas1 as element(ns1:respScoringPersonas))
    as element(ns0:scoringPersonasResponse) {
        <ns0:scoringPersonasResponse>
            <ns3:respScoringPersonas>
                <ns3:ResultadoEjecucion>
                    <ns2:ejecucionExitosa>{ data($respScoringPersonas1/ns1:ResultadoEjecucion/ns2:ejecucionExitosa) }</ns2:ejecucionExitosa>
                    {
                        for $codigoError in $respScoringPersonas1/ns1:ResultadoEjecucion/ns2:codigoError
                        return
                            <ns2:codigoError>{ data($codigoError) }</ns2:codigoError>
                    }
                    {
                        for $mensaje in $respScoringPersonas1/ns1:ResultadoEjecucion/ns2:mensaje
                        return
                            <ns2:mensaje>{ data($mensaje) }</ns2:mensaje>
                    }
                </ns3:ResultadoEjecucion>
                <ns3:scoringPersonas>
                    <ns3:puntajeScoring>{ data($respScoringPersonas1/ns1:scoringPersonas/ns1:puntajeScoring) }</ns3:puntajeScoring>
                    <ns3:grupoRiesgo>{ data($respScoringPersonas1/ns1:scoringPersonas/ns1:grupoRiesgo) }</ns3:grupoRiesgo>
                    <ns3:glosaResultado>{ data($respScoringPersonas1/ns1:scoringPersonas/ns1:glosaResultado) }</ns3:glosaResultado>
                </ns3:scoringPersonas>
            </ns3:respScoringPersonas>
        </ns0:scoringPersonasResponse>
};

declare variable $respScoringPersonas1 as element(ns1:respScoringPersonas) external;

xf:XQ_CLIDOMScoringPersonas_to_CLIEMPScoringPersonas($respScoringPersonas1)]]></con:xquery>
    <con:dependency location="../../DOM/WS/CLIDOMScoringPersonaResponse.xsd">
        <con:schema ref="CLI/DOM/WS/CLIDOMScoringPersonaResponse"/>
    </con:dependency>
    <con:dependency location="../WS/CLIEMPScoringPersonas.wsdl">
        <con:wsdl ref="CLI/EMP/WS/CLIEMPScoringPersonas"/>
    </con:dependency>
</con:xqueryEntry>