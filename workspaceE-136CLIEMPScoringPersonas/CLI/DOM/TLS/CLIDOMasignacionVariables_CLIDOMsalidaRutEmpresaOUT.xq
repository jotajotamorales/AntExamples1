(:: pragma bea:global-element-return element="ns1:respValidarEstadoCedula" location="../WS/CLIDOMValidarCedulaResponse.xsd" ::)

declare namespace ns1 = "http://osbcorp.vtr.cl/CLI/DOM/ValidarCedula";
declare namespace ns0 = "http://osbcorp.vtr.cl/GLOBAL/EMP/ResultadoEjecucion";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/CLIDOMasignacionVariables_CLIDOMsalidaRutEmpresaOUT/";

declare function xf:CLIDOMasignacionVariables_CLIDOMsalidaRutEmpresaOUT($razon as xs:string,
    $fecha as xs:string,
    $estado as xs:string)
    as element(ns1:respValidarEstadoCedula) {
        <ns1:respValidarEstadoCedula>
            <ns1:EstadoCedula>
                <ns1:estado>{ $estado }</ns1:estado>
                <ns1:razon>{ $razon }</ns1:razon>
                <ns1:fechaVencimiento>{ xs:date($fecha) }</ns1:fechaVencimiento>
            </ns1:EstadoCedula>
            <ns1:ResultadoEjecucion>
                <ns0:ejecucionExitosa>true</ns0:ejecucionExitosa>
                <ns0:codigoError>0</ns0:codigoError>
                <ns0:mensaje>Ok</ns0:mensaje>
            </ns1:ResultadoEjecucion>
        </ns1:respValidarEstadoCedula>
};

declare variable $razon as xs:string external;
declare variable $fecha as xs:string external;
declare variable $estado as xs:string external;

xf:CLIDOMasignacionVariables_CLIDOMsalidaRutEmpresaOUT($razon,
    $fecha,
    $estado)