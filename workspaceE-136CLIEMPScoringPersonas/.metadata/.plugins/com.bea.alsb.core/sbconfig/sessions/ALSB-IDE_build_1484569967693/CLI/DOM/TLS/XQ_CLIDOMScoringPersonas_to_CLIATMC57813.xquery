<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-return element="ns0:ConsultaActivosInscritos_Input" location="../../ATM/WS/CLIATMConsultarActivoInstaladoSiebel.wsdl" ::)

declare namespace ns0 = "http://siebel.com/CustomUI";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIDOMScoringPersonas_to_CLIATMConsultarActivoInstaladoSiebel/";

declare function xf:XQ_CLIDOMScoringPersonas_to_CLIATMConsultarActivoInstaladoSiebel($rutCliente as xs:string)
    as element(ns0:ConsultaActivosInscritos_Input) {
        &lt;ns0:ConsultaActivosInscritos_Input>
            &lt;ns0:rutCliente>{ $rutCliente }&lt;/ns0:rutCliente>
        &lt;/ns0:ConsultaActivosInscritos_Input>
};

declare variable $rutCliente as xs:string external;

xf:XQ_CLIDOMScoringPersonas_to_CLIATMConsultarActivoInstaladoSiebel($rutCliente)</con:xquery>
    <con:dependency location="../../ATM/WS/CLIATMConsultarActivoInstaladoSiebel.wsdl">
        <con:wsdl ref="CLI/ATM/WS/CLIATMConsultarActivoInstaladoSiebel"/>
    </con:dependency>
</con:xqueryEntry>