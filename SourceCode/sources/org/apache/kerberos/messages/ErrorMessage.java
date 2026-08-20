package org.apache.kerberos.messages;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class ErrorMessage extends KerberosMessage {
    private Integer clientMicroSecond;
    private KerberosPrincipal clientPrincipal;
    private KerberosTime clientTime;
    private int errorCode;
    private byte[] explanatoryData;
    private String explanatoryText;
    private int serverMicroSecond;
    private KerberosPrincipal serverPrincipal;
    private KerberosTime serverTime;

    public ErrorMessage(KerberosTime kerberosTime, Integer num, KerberosTime kerberosTime2, int i, int i2, KerberosPrincipal kerberosPrincipal, KerberosPrincipal kerberosPrincipal2, String str, byte[] bArr) {
        super(MessageType.KRB_ERROR);
        this.clientTime = kerberosTime;
        this.clientMicroSecond = num;
        this.serverTime = kerberosTime2;
        this.serverMicroSecond = i;
        this.errorCode = i2;
        this.clientPrincipal = kerberosPrincipal;
        this.serverPrincipal = kerberosPrincipal2;
        this.explanatoryText = str;
        this.explanatoryData = bArr;
    }

    public KerberosPrincipal getClientPrincipal() {
        return this.clientPrincipal;
    }

    public KerberosTime getClientTime() {
        return this.clientTime;
    }

    public Integer getClientMicroSecond() {
        return this.clientMicroSecond;
    }

    public byte[] getExplanatoryData() {
        return this.explanatoryData;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getExplanatoryText() {
        return this.explanatoryText;
    }

    public KerberosPrincipal getServerPrincipal() {
        return this.serverPrincipal;
    }

    public KerberosTime getServerTime() {
        return this.serverTime;
    }

    public int getServerMicroSecond() {
        return this.serverMicroSecond;
    }
}
