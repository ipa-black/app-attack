package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface ExtendedResponse extends ResultResponse {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.EXTENDEDRESP;

    byte[] getResponse();

    String getResponseName();

    void setResponse(byte[] bArr);

    void setResponseName(String str);
}
