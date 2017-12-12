package com.beat.util;

import javax.mail.PasswordAuthentication;

import javax.mail.Authenticator;

 

/**

 * @author viper9

 *

 */

public class SMTPAuthenticator extends Authenticator {

    public SMTPAuthenticator() {

        super();

    }

 

    public PasswordAuthentication getPasswordAuthentication() {

        String username = "hbclass6.1@gmail.com";

        String password = "hbclass6161";

        return new PasswordAuthentication(username, password);

    }

}