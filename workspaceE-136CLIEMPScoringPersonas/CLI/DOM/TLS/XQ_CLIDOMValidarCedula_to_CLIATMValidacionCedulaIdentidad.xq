(:: pragma bea:global-element-parameter parameter="$reqValidarEstadoCedula1" element="ns1:reqValidarEstadoCedula" location="../WS/CLIDOMValidarCedulaRequest.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ValidarClienteExterno" location="../../ATM/WS/validarClienteExterno.wsdl" ::)

declare namespace ns1 = "http://osbcorp.vtr.cl/CLI/DOM/ValidarCedula";
declare namespace ns0 = "http://osb.vtr.cl/CLI/DOM/ValidarClienteExterno";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIDOMValidarCedula_to_CLIATMValidacionCedulaIdentidad/";

declare function xf:XQ_CLIDOMValidarCedula_to_CLIATMValidacionCedulaIdentidad($reqValidarEstadoCedula1 as element(ns1:reqValidarEstadoCedula))
    as element(ns0:ValidarClienteExterno) {
        <ns0:ValidarClienteExterno>
            <ns0:rut>{ data(fn:tokenize($reqValidarEstadoCedula1/ns1:rut, '-')[1]) }</ns0:rut>
            <ns0:digitoVerificador>{ data(fn:tokenize($reqValidarEstadoCedula1/ns1:rut, '-')[2]) }</ns0:digitoVerificador>
            <ns0:serie>{ data($reqValidarEstadoCedula1/ns1:serie) }</ns0:serie>
        </ns0:ValidarClienteExterno>
};

declare variable $reqValidarEstadoCedula1 as element(ns1:reqValidarEstadoCedula) external;

xf:XQ_CLIDOMValidarCedula_to_CLIATMValidacionCedulaIdentidad($reqValidarEstadoCedula1)