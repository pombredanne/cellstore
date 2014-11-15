xquery version "3.0";

module namespace sendmail = "http://apps.28.io/sendmail";

import module namespace smtp = 'http://www.zorba-xquery.com/modules/email/smtp';
import schema namespace email = 'http://www.zorba-xquery.com/modules/email';
import module namespace credentials = "http://apps.28.io/credentials";

declare variable $sendmail:CONFIG := 
    <config>
        <host>{$credentials:sendmail-host}</host>
        <user>{$credentials:sendmail-user}</user>
        <password>{$credentials:sendmail-password}</password>
        <!-- IMPORTANT: this email address needs to be registered in the gmail
                        account (Settings->Accounts and Import->Send mail as)! -->
        <sender-email>{$credentials:sendmail-sender-email}</sender-email>
        <sender-name>{$credentials:sendmail-sender-name}</sender-name>
    </config>;

declare %an:sequential function sendmail:send(
  $email as xs:string,
  $subject as xs:string,
  $message as xs:string)
  as empty-sequence()
{
   variable $host := validate strict
   {
     <email:hostInfo>
       <email:hostName>{ fn:data($sendmail:CONFIG/host) }</email:hostName>
       <email:userName>{ fn:data($sendmail:CONFIG/user) }</email:userName>
       <email:password>{ fn:data($sendmail:CONFIG/password) }</email:password>
     </email:hostInfo>
   };
   variable $mail := validate strict
   {
     <email:message>
       <email:envelope>
         <email:from>
           <email:name>{ fn:data($sendmail:CONFIG/sender-name) }</email:name>
           <email:email>{ fn:data($sendmail:CONFIG/sender-email) }</email:email>
         </email:from>
         <email:subject>{ $subject }</email:subject>
         <email:recipient>
            <email:to>
               <email:email>{ $email }</email:email>
             </email:to>
         </email:recipient>
       </email:envelope>
       <email:body>
         <email:content contentType="text/plain" charset="UTF-8" contentTransferEncoding="ENC8BIT">
           {
             $message
           }
         </email:content>
       </email:body>
     </email:message>
   };
   smtp:send($host, $mail);
};
