package org.apache.kerberos.kdc;

import org.apache.kerberos.exceptions.KerberosException;
import org.apache.kerberos.messages.ErrorMessage;
import org.apache.kerberos.messages.ErrorMessageModifier;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class ErrorService {
    private org.apache.kerberos.service.KdcConfiguration config;

    public ErrorService(org.apache.kerberos.service.KdcConfiguration kdcConfiguration) {
        this.config = kdcConfiguration;
    }

    public ErrorMessage getReplyFor(KerberosException kerberosException) {
        ErrorMessageModifier errorMessageModifier = new ErrorMessageModifier();
        KerberosTime kerberosTime = new KerberosTime();
        errorMessageModifier.setErrorCode(kerberosException.getErrorCode());
        errorMessageModifier.setExplanatoryText(kerberosException.getMessage());
        errorMessageModifier.setServerPrincipal(this.config.getKdcPrincipal());
        errorMessageModifier.setServerTime(kerberosTime);
        errorMessageModifier.setServerMicroSecond(0);
        errorMessageModifier.setExplanatoryData(kerberosException.getExplanatoryData());
        return errorMessageModifier.getErrorMessage();
    }
}
