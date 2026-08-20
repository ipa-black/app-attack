package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface BindRequest extends SingleReplyRequest {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.BINDREQUEST;
    public static final MessageTypeEnum RESP_TYPE = BindResponse.TYPE;

    byte[] getCredentials();

    String getName();

    boolean getSimple();

    boolean getVersion3();

    boolean isSimple();

    boolean isVersion3();

    void setCredentials(byte[] bArr);

    void setName(String str);

    void setSimple(boolean z);

    void setVersion3(boolean z);
}
