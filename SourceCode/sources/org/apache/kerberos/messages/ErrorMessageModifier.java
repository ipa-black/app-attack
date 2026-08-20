package org.apache.kerberos.messages;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class ErrorMessageModifier {
    private Integer clientMicroSecond;
    private KerberosPrincipal clientPrincipal;
    private KerberosTime clientTime;
    private int errorCode;
    private byte[] explanatoryData;
    private String explanatoryText;
    private int serverMicroSecond;
    private KerberosPrincipal serverPrincipal;
    private KerberosTime serverTime;

    public ErrorMessage getErrorMessage() {
        return new ErrorMessage(this.clientTime, this.clientMicroSecond, this.serverTime, this.serverMicroSecond, this.errorCode, this.clientPrincipal, this.serverPrincipal, this.explanatoryText, this.explanatoryData);
    }

    public void setClientPrincipal(KerberosPrincipal kerberosPrincipal) {
        this.clientPrincipal = kerberosPrincipal;
    }

    public void setClientTime(KerberosTime kerberosTime) {
        this.clientTime = kerberosTime;
    }

    public void setClientMicroSecond(Integer num) {
        this.clientMicroSecond = num;
    }

    public void setExplanatoryData(byte[] bArr) {
        this.explanatoryData = bArr;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public void setExplanatoryText(String str) {
        this.explanatoryText = str;
    }

    public void setServerPrincipal(KerberosPrincipal kerberosPrincipal) {
        this.serverPrincipal = kerberosPrincipal;
    }

    public void setServerTime(KerberosTime kerberosTime) {
        this.serverTime = kerberosTime;
    }

    public void setServerMicroSecond(int i) {
        this.serverMicroSecond = i;
    }
}
