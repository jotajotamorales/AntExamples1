<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$getScoringInternoPersonasResponse1" element="ns2:getScoringInternoPersonasResponse" location="../../ATM/WS/XMLSchemaConsultarScoringInterno.xsd" ::)
(:: pragma bea:global-element-return element="ns0:respScoringPersonas" location="../WS/CLIDOMScoringPersonaResponse.xsd" ::)

declare namespace ns2 = "http://osb.vtr.cl/CLI/ATM/ConsultarScoringInterno";
declare namespace ns1 = "http://osbcorp.vtr.cl/GLOBAL/EMP/ResultadoEjecucion";
declare namespace ns0 = "http://osbcorp.vtr.cl/CLI/DOM/scoringPersonasResp";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIATMScoringPersonas_to_CLIDOMScoringPersonas/";
declare namespace funcionValidacion = "http://osb.vtr.cl/funcionValidacion";
declare function funcionValidacion:validar
  ( $valor as xs:integer ) as xs:string {
		if ($valor ge 0 and $valor le 50) then
         xs:string('Control - 50')
        else if ($valor ge 51 and $valor le 125) then
         xs:string('Control - 125')
        else if ($valor ge 126 and $valor le 130) then
         xs:string('Control  - 130')
        else if ($valor ge 131 and $valor le 350) then
         xs:string('Control - 350')
        else if ($valor ge 351 and $valor le 560) then
         xs:string('Control  - 560')
        else if ($valor ge 561 and $valor le 577) then
         xs:string('Control  - 570')
        else if ($valor ge 578 and $valor le 824) then
         xs:string('Vive')
        else if ($valor ge 825 and $valor le 964) then
         xs:string('Conectado')
        else if ($valor ge 965 and $valor le 9999) then
         xs:string('Libre')
        else
         xs:string('')
 };

declare function xf:XQ_CLIATMScoringPersonas_to_CLIDOMScoringPersonas($getScoringInternoPersonasResponse1 as element(ns2:getScoringInternoPersonasResponse))
    as element(ns0:respScoringPersonas) {
        <ns0:respScoringPersonas>
            <ns0:ResultadoEjecucion>
                <ns1:ejecucionExitosa>true</ns1:ejecucionExitosa>
                <ns1:codigoError>0</ns1:codigoError>
                <ns1:mensaje>OK</ns1:mensaje>
            </ns0:ResultadoEjecucion>
            <ns0:scoringPersonas>
                {
                	if (fn:exists($getScoringInternoPersonasResponse1/srvConsultaScoringInterno/ResultadoEjecucion/CodigoError)) then
                        <ns0:puntajeScoring>125</ns0:puntajeScoring>
                    else
                    	<ns0:puntajeScoring>{ data($getScoringInternoPersonasResponse1/srvConsultaScoringInterno/scoringInterno) }</ns0:puntajeScoring>
                }
                <ns0:grupoRiesgo>0</ns0:grupoRiesgo>
                {
                	if (fn:exists($getScoringInternoPersonasResponse1/srvConsultaScoringInterno/ResultadoEjecucion/CodigoError)) then
                        <ns0:glosaResultado>{xs:string('Control - 125')}</ns0:glosaResultado>
                    else
                    	<ns0:glosaResultado>{funcionValidacion:validar(data($getScoringInternoPersonasResponse1/srvConsultaScoringInterno/scoringInterno))}</ns0:glosaResultado>
                }
            </ns0:scoringPersonas>
        </ns0:respScoringPersonas>
};

declare variable $getScoringInternoPersonasResponse1 as element(ns2:getScoringInternoPersonasResponse) external;

xf:XQ_CLIATMScoringPersonas_to_CLIDOMScoringPersonas($getScoringInternoPersonasResponse1)]]></con:xquery>
    <con:dependency location="../../ATM/WS/XMLSchemaConsultarScoringInterno.xsd">
        <con:schema ref="CLI/ATM/WS/XMLSchemaConsultarScoringInterno"/>
    </con:dependency>
    <con:dependency location="../WS/CLIDOMScoringPersonaResponse.xsd">
        <con:schema ref="CLI/DOM/WS/CLIDOMScoringPersonaResponse"/>
    </con:dependency>
</con:xqueryEntry>