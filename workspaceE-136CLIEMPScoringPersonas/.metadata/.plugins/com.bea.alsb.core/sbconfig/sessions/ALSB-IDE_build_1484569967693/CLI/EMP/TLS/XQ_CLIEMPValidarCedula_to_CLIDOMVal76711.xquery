<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$validarCedula1" element="ns0:ValidarCedula" location="../WS/CLIEMPValidarCedula.wsdl" ::)
(:: pragma bea:global-element-return element="ns1:reqValidarEstadoCedula" location="../../DOM/WS/CLIDOMValidarCedulaRequest.xsd" ::)

declare namespace ns1 = "http://osbcorp.vtr.cl/CLI/DOM/ValidarCedula";
declare namespace ns0 = "http://osbcorp.vtr.cl/CLI/EMP/ValidarCedula";
declare namespace xf = "http://tempuri.org/CLI/EMP/TLS/XQ_CLIEMPValidarCedula_to_CLIDOMValidarCedula/";

declare function xf:XQ_CLIEMPValidarCedula_to_CLIDOMValidarCedula($validarCedula1 as element(ns0:ValidarCedula))
    as element(ns1:reqValidarEstadoCedula) {
        <ns1:reqValidarEstadoCedula>
            <ns1:rut>{ data($validarCedula1/ns0:rut) }</ns1:rut>
            <ns1:serie>{ data($validarCedula1/ns0:serie) }</ns1:serie>
        </ns1:reqValidarEstadoCedula>
};

declare variable $validarCedula1 as element(ns0:ValidarCedula) external;

xf:XQ_CLIEMPValidarCedula_to_CLIDOMValidarCedula($validarCedula1)]]></con:xquery>
    <con:dependency location="../WS/CLIEMPValidarCedula.wsdl">
        <con:wsdl ref="CLI/EMP/WS/CLIEMPValidarCedula"/>
    </con:dependency>
    <con:dependency location="../../DOM/WS/CLIDOMValidarCedulaRequest.xsd">
        <con:schema ref="CLI/DOM/WS/CLIDOMValidarCedulaRequest"/>
    </con:dependency>
</con:xqueryEntry>