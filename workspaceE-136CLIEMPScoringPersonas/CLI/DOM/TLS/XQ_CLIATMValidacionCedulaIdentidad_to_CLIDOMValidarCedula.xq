(:: pragma bea:global-element-parameter parameter="$validarClienteExternoResponse1" element="ns0:ValidarClienteExternoResponse" location="../../ATM/WS/validarClienteExterno.wsdl" ::)
(:: pragma bea:global-element-return element="ns3:respValidarEstadoCedula" location="../WS/CLIDOMValidarCedulaResponse.xsd" ::)

declare namespace ns0 = "http://osb.vtr.cl/CLI/DOM/ValidarClienteExterno";
declare namespace ns2 = "http://osbcorp.vtr.cl/GLOBAL/EMP/ResultadoEjecucion";
declare namespace ns1 = "http://osb.vtr.cl/GLOBAL/EMP/ResultadoEjecucion";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIATMValidacionCedulaIdentidad_to_CLIDOMValidarCedula/";
declare namespace ns3 = "http://osbcorp.vtr.cl/CLI/DOM/ValidarCedula";

declare function xf:XQ_CLIATMValidacionCedulaIdentidad_to_CLIDOMValidarCedula($validarClienteExternoResponse1 as element(ns0:ValidarClienteExternoResponse))
    as element(ns3:respValidarEstadoCedula) {
        <ns3:respValidarEstadoCedula>
            {
                for $informacionVigenciaCedula in $validarClienteExternoResponse1/ns0:informacionVigenciaCedula
                return
                    <ns3:EstadoCedula>
                        <ns3:estado>{ data($informacionVigenciaCedula/ns0:Estado) }</ns3:estado>
                        <ns3:razon>{ data($informacionVigenciaCedula/ns0:Razon) }</ns3:razon>
                {
	                if($informacionVigenciaCedula/ns0:Estado/text() = 'N' ) then
	                	<ns3:fechaVencimiento>1990-01-01</ns3:fechaVencimiento>
	                else
	                	<ns3:fechaVencimiento>{ data($informacionVigenciaCedula/ns0:Fecha) }</ns3:fechaVencimiento>
                }                        
                    </ns3:EstadoCedula>
            }
            <ns3:ResultadoEjecucion>
                <ns2:ejecucionExitosa>{ data($validarClienteExternoResponse1/ns0:resultadoEjecucion/ns1:ejecucionExitosa) }</ns2:ejecucionExitosa>
                <ns2:codigoError>0</ns2:codigoError>
                <ns2:mensaje>Ok</ns2:mensaje>
            </ns3:ResultadoEjecucion>
        </ns3:respValidarEstadoCedula>
};

declare variable $validarClienteExternoResponse1 as element(ns0:ValidarClienteExternoResponse) external;

xf:XQ_CLIATMValidacionCedulaIdentidad_to_CLIDOMValidarCedula($validarClienteExternoResponse1)