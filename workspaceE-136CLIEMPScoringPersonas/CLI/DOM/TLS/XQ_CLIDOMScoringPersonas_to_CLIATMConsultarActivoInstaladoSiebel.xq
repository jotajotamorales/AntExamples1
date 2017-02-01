(:: pragma bea:global-element-return element="ns0:ConsultaActivosInscritos_Input" location="../../ATM/WS/CLIATMConsultarActivoInstaladoSiebel.wsdl" ::)

declare namespace ns0 = "http://siebel.com/CustomUI";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIDOMScoringPersonas_to_CLIATMConsultarActivoInstaladoSiebel/";

declare function xf:XQ_CLIDOMScoringPersonas_to_CLIATMConsultarActivoInstaladoSiebel($rutCliente as xs:string)
    as element(ns0:ConsultaActivosInscritos_Input) {
        <ns0:ConsultaActivosInscritos_Input>
            <ns0:rutCliente>{ $rutCliente }</ns0:rutCliente>
        </ns0:ConsultaActivosInscritos_Input>
};

declare variable $rutCliente as xs:string external;

xf:XQ_CLIDOMScoringPersonas_to_CLIATMConsultarActivoInstaladoSiebel($rutCliente)