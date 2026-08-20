package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface BindResponse extends ResultResponse {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.BINDRESPONSE;

    byte[] getServerSaslCreds();

    void setServerSaslCreds(byte[] bArr);
}
