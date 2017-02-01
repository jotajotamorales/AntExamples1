(:: pragma bea:global-element-parameter parameter="$consultaActivosInscritos_Output1" element="ns0:ConsultaActivosInscritos_Output" location="../../ATM/WS/CLIATMConsultarActivoInstaladoSiebel.wsdl" ::)

declare namespace ns1 = "http://www.siebel.com/xml/OCS%20E1082%20Consulta%20Activos%20Salida%20IO/Data";
declare namespace ns0 = "http://siebel.com/CustomUI";
declare namespace xf = "http://tempuri.org/CLI/DOM/TLS/XQ_CLIATMConsultarActivoInstaladoSiebel_to_CLIDOMScoringPersonas/";

declare function xf:getFechasActivos($consultaActivosInscritos_Lista as element(ns0:ConsultaActivosInscritos_Output))  as element(*) {
        <activo>
         {for $activo in $consultaActivosInscritos_Lista/ns1:Activo/ns1:Assets/ns1:Asset
         order by max(fn:concat(fn:year-from-dateTime($activo/ns1:FechaInstalacion),fn:month-from-dateTime($activo/ns1:FechaInstalacion),fn:day-from-dateTime($activo/ns1:FechaInstalacion))) ascending
         return
          <dias>
     {fn:days-from-duration(fn:current-dateTime() - xs:dateTime($activo/ns1:FechaInstalacion))}
    </dias>
   }
  </activo>
 };
 
declare function xf:XQ_CLIATMConsultarActivoInstaladoSiebel_to_CLIDOMScoringPersonas($consultaActivosInscritos_Output1 as element(ns0:ConsultaActivosInscritos_Output))
    as xs:int {
        xf:getFechasActivos($consultaActivosInscritos_Output1)/dias[1]/text()
};

declare variable $consultaActivosInscritos_Output1 as element(ns0:ConsultaActivosInscritos_Output) external;

xf:XQ_CLIATMConsultarActivoInstaladoSiebel_to_CLIDOMScoringPersonas($consultaActivosInscritos_Output1)