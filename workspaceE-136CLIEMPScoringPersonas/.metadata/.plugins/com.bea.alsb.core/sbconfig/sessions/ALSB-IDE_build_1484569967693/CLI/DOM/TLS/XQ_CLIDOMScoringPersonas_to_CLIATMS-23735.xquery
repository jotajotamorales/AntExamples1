<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$reqScoringPersonas1" element="ns1:reqScoringPersonas" location="../WS/CLIDOMScoringPersonaRequest.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getScoringInternoPersonas" location="../../ATM/WS/XMLSchemaConsultarScoringInterno.xsd" ::)

declare namespace ns1 = "http://osbcorp.vtr.cl/CLI/DOM/scoringPersonasReq";
declare namespace ns0 = "http://osb.vtr.cl/CLI/ATM/ConsultarScoringInterno";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIDOMScoringPersonas_to_CLIATMScoringPersonas/";

declare function xf:XQ_CLIDOMScoringPersonas_to_CLIATMScoringPersonas($reqScoringPersonas1 as element(ns1:reqScoringPersonas))
    as element(ns0:getScoringInternoPersonas) {
        <ns0:getScoringInternoPersonas>
            <srvConsultaScoringInternoRequest>
                <rut_cliente>{data($reqScoringPersonas1/ns1:rut) }</rut_cliente>
                {
                if (fn:lower-case(data($reqScoringPersonas1/ns1:tipo)) = 'fijo') then
                	<tipo_producto>F</tipo_producto>
                else if (fn:lower-case(data($reqScoringPersonas1/ns1:tipo)) = 'movil') then
                	<tipo_producto>M</tipo_producto>
                else
                	<tipo_producto></tipo_producto>
                }
            </srvConsultaScoringInternoRequest>
        </ns0:getScoringInternoPersonas>
};

declare variable $reqScoringPersonas1 as element(ns1:reqScoringPersonas) external;

xf:XQ_CLIDOMScoringPersonas_to_CLIATMScoringPersonas($reqScoringPersonas1)]]></con:xquery>
    <con:dependency location="../WS/CLIDOMScoringPersonaRequest.xsd">
        <con:schema ref="CLI/DOM/WS/CLIDOMScoringPersonaRequest"/>
    </con:dependency>
    <con:dependency location="../../ATM/WS/XMLSchemaConsultarScoringInterno.xsd">
        <con:schema ref="CLI/ATM/WS/XMLSchemaConsultarScoringInterno"/>
    </con:dependency>
</con:xqueryEntry>