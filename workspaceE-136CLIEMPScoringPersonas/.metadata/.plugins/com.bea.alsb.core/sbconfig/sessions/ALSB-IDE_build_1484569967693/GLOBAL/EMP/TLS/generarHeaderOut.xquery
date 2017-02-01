<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:schema-type-return type="ns0:datosHeaderResponse" location="../WS/HeaderResponse.xsd" ::)

declare namespace ns0 = "http://osbcorp.vtr.cl/GLOBAL/EMP/HeaderResponse";
declare namespace xf = "http://tempuri.org/GLOBAL/EMP/TLS/generarHeaderOut/";

declare function xf:generarHeaderOut($fechaReq as xs:dateTime,
    $serverName as xs:string)
    as element() {
        <ns0:HeaderResponse>
            <ns0:IdServer>{ $serverName }</ns0:IdServer>
            <ns0:ReqSrvDate>{ $fechaReq }</ns0:ReqSrvDate>
            <ns0:RespSrvDate>{fn:current-dateTime()}</ns0:RespSrvDate>
        </ns0:HeaderResponse>
};

declare variable $fechaReq as xs:dateTime external;
declare variable $serverName as xs:string external;

xf:generarHeaderOut($fechaReq,
    $serverName)]]></con:xquery>
    <con:dependency location="../WS/HeaderResponse.xsd">
        <con:schema ref="GLOBAL/EMP/WS/HeaderResponse"/>
    </con:dependency>
</con:xqueryEntry>