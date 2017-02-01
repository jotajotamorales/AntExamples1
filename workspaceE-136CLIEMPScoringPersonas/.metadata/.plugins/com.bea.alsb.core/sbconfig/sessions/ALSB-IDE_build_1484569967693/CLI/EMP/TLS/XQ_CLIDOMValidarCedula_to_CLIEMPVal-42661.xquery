<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$respValidarEstadoCedula1" element="ns2:respValidarEstadoCedula" location="../../DOM/WS/CLIDOMValidarCedulaResponse.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ValidarCedulaResponse" location="../WS/CLIEMPValidarCedula.wsdl" ::)

declare namespace ns2 = "http://osbcorp.vtr.cl/CLI/DOM/ValidarCedula";
declare namespace ns1 = "http://osbcorp.vtr.cl/GLOBAL/EMP/ResultadoEjecucion";
declare namespace ns0 = "http://osbcorp.vtr.cl/CLI/EMP/ValidarCedula";
declare namespace xf = "http://tempuri.org/CLI/EMP/TLS/XQ_CLIDOMValidarCedula_to_CLIEMPValidarCedula/";

declare function xf:XQ_CLIDOMValidarCedula_to_CLIEMPValidarCedula($respValidarEstadoCedula1 as element(ns2:respValidarEstadoCedula))
    as element(ns0:ValidarCedulaResponse) {
        <ns0:ValidarCedulaResponse>
            <ns0:EstadoCedula>
                {
                    for $estado in $respValidarEstadoCedula1/ns2:EstadoCedula/ns2:estado
                    return
                        <ns0:estado>{ data($estado) }</ns0:estado>
                }
                {
                    for $razon in $respValidarEstadoCedula1/ns2:EstadoCedula/ns2:razon
                    return
                        <ns0:razon>{ data($razon) }</ns0:razon>
                }
                {
                    for $fechaVencimiento in $respValidarEstadoCedula1/ns2:EstadoCedula/ns2:fechaVencimiento
                    return
                        <ns0:fechaVencimiento>{ data($fechaVencimiento) }</ns0:fechaVencimiento>
                }
            </ns0:EstadoCedula>
            <ns0:ResultadoEjecucion>
                <ns1:ejecucionExitosa>{ data($respValidarEstadoCedula1/ns2:ResultadoEjecucion/ns1:ejecucionExitosa) }</ns1:ejecucionExitosa>
                {
                    for $codigoError in $respValidarEstadoCedula1/ns2:ResultadoEjecucion/ns1:codigoError
                    return
                        <ns1:codigoError>{ data($codigoError) }</ns1:codigoError>
                }
                {
                    for $mensaje in $respValidarEstadoCedula1/ns2:ResultadoEjecucion/ns1:mensaje
                    return
                        <ns1:mensaje>{ data($mensaje) }</ns1:mensaje>
                }
            </ns0:ResultadoEjecucion>
        </ns0:ValidarCedulaResponse>
};

declare variable $respValidarEstadoCedula1 as element(ns2:respValidarEstadoCedula) external;

xf:XQ_CLIDOMValidarCedula_to_CLIEMPValidarCedula($respValidarEstadoCedula1)]]></con:xquery>
    <con:dependency location="../../DOM/WS/CLIDOMValidarCedulaResponse.xsd">
        <con:schema ref="CLI/DOM/WS/CLIDOMValidarCedulaResponse"/>
    </con:dependency>
    <con:dependency location="../WS/CLIEMPValidarCedula.wsdl">
        <con:wsdl ref="CLI/EMP/WS/CLIEMPValidarCedula"/>
    </con:dependency>
</con:xqueryEntry>