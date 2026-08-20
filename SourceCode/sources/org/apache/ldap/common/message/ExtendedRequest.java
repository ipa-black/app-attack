package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface ExtendedRequest extends SingleReplyRequest {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.EXTENDEDREQ;
    public static final MessageTypeEnum RESP_TYPE = ExtendedResponse.TYPE;

    String getOid();

    byte[] getPayload();

    void setOid(String str);

    void setPayload(byte[] bArr);
}
