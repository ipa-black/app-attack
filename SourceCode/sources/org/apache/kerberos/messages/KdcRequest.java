package org.apache.kerberos.messages;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.HostAddresses;
import org.apache.kerberos.messages.value.KdcOptions;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.PreAuthenticationData;
import org.apache.kerberos.messages.value.RequestBody;
/* loaded from: classes5.dex */
public class KdcRequest extends KerberosMessage {
    private PreAuthenticationData[] preAuthData;
    private RequestBody requestBody;

    public KdcRequest(int i, MessageType messageType, PreAuthenticationData[] preAuthenticationDataArr, RequestBody requestBody) {
        super(i, messageType);
        this.preAuthData = preAuthenticationDataArr;
        this.requestBody = requestBody;
    }

    public PreAuthenticationData[] getPreAuthData() {
        return this.preAuthData;
    }

    public Ticket[] getAdditionalTickets() {
        return this.requestBody.getAdditionalTickets();
    }

    public HostAddresses getAddresses() {
        return this.requestBody.getAddresses();
    }

    public KerberosPrincipal getClientPrincipal() {
        return this.requestBody.getClientPrincipal();
    }

    public String getRealm() {
        return this.requestBody.getServerPrincipal().getRealm();
    }

    public EncryptedData getEncAuthorizationData() {
        return this.requestBody.getEncAuthorizationData();
    }

    public EncryptionType[] getEType() {
        return this.requestBody.getEType();
    }

    public KerberosTime getFrom() {
        return this.requestBody.getFrom();
    }

    public KdcOptions getKdcOptions() {
        return this.requestBody.getKdcOptions();
    }

    public int getNonce() {
        return this.requestBody.getNonce();
    }

    public KerberosTime getRtime() {
        return this.requestBody.getRtime();
    }

    public KerberosPrincipal getServerPrincipal() {
        return this.requestBody.getServerPrincipal();
    }

    public KerberosTime getTill() {
        return this.requestBody.getTill();
    }

    public boolean getOption(int i) {
        return this.requestBody.getKdcOptions().get(i);
    }

    public void setOption(int i) {
        this.requestBody.getKdcOptions().set(i);
    }

    public void clearOption(int i) {
        this.requestBody.getKdcOptions().clear(i);
    }
}
