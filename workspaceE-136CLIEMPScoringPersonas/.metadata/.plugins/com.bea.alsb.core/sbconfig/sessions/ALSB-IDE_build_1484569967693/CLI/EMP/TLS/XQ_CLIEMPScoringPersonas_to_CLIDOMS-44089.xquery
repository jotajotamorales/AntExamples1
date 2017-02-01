<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$scoringPersonasRequest1" element="ns0:scoringPersonasRequest" location="../WS/CLIEMPScoringPersonas.wsdl" ::)
(:: pragma bea:global-element-return element="ns2:reqScoringPersonas" location="../../DOM/WS/CLIDOMScoringPersonaRequest.xsd" ::)

declare namespace ns2 = "http://osbcorp.vtr.cl/CLI/DOM/scoringPersonasReq";
declare namespace ns1 = "http://osbcorp.vtr.cl/CLI/EMP/scoringPersonasReq";
declare namespace ns0 = "http://osbcorp.vtr.cl/CLI/EMP/scoringPersonas";
declare namespace xf = "http://tempuri.org/CLI/EMP/TLS/XQ_CLIEMPScoringPersonas_to_CLIDOMScoringPersonas/";

declare function xf:XQ_CLIEMPScoringPersonas_to_CLIDOMScoringPersonas($scoringPersonasRequest1 as element(ns0:scoringPersonasRequest))
    as element(ns2:reqScoringPersonas) {
        <ns2:reqScoringPersonas>
            <ns2:rut>{ data($scoringPersonasRequest1/ns1:reqScoringPersonas/ns1:rut) }</ns2:rut>
            {
                for $tipo in $scoringPersonasRequest1/ns1:reqScoringPersonas/ns1:tipo
                return
                    <ns2:tipo>{ data($tipo) }</ns2:tipo>
            }
        </ns2:reqScoringPersonas>
};

declare variable $scoringPersonasRequest1 as element(ns0:scoringPersonasRequest) external;

xf:XQ_CLIEMPScoringPersonas_to_CLIDOMScoringPersonas($scoringPersonasRequest1)]]></con:xquery>
    <con:dependency location="../WS/CLIEMPScoringPersonas.wsdl">
        <con:wsdl ref="CLI/EMP/WS/CLIEMPScoringPersonas"/>
    </con:dependency>
    <con:dependency location="../../DOM/WS/CLIDOMScoringPersonaRequest.xsd">
        <con:schema ref="CLI/DOM/WS/CLIDOMScoringPersonaRequest"/>
    </con:dependency>
</con:xqueryEntry>