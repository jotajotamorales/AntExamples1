<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma type="soap-env:Header" ::)

declare namespace xf = "http://tempuri.org/xq/AssignSiebelHeaderToken";
declare namespace soap-env = "http://schemas.xmlsoap.org/soap/envelope/";
declare namespace sieb = "http://siebel.com/webservices";

declare function xf:AssignSiebelHeaderToken($token as xs:string) as element() {
	<soap-env:Header>
		<sieb:SessionType>Stateless</sieb:SessionType>
		<sieb:SessionToken>{$token}</sieb:SessionToken>
	</soap-env:Header>
};

declare variable $token as xs:string external;

xf:AssignSiebelHeaderToken($token)]]></con:xquery>
</con:xqueryEntry>