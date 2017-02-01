<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma type="soap-env:Header" ::)

declare namespace xf = "http://tempuri.org/xq/AssignSiebelHeaderFull";
declare namespace soap-env = "http://schemas.xmlsoap.org/soap/envelope/";
declare namespace sieb = "http://siebel.com/webservices";

declare function xf:AssignSiebelHeaderFull($username as xs:string, $password as xs:string) as element() {
	<soap-env:Header>
		<sieb:SessionType>Stateless</sieb:SessionType>
		<sieb:UsernameToken>{$username}</sieb:UsernameToken>
		<sieb:PasswordText>{$password}</sieb:PasswordText>
	</soap-env:Header>
};

declare variable $username as xs:string external;
declare variable $password as xs:string external;

xf:AssignSiebelHeaderFull($username, $password)]]></con:xquery>
</con:xqueryEntry>