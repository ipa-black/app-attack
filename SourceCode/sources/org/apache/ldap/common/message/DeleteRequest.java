package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface DeleteRequest extends SingleReplyRequest {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.DELREQUEST;
    public static final MessageTypeEnum RESP_TYPE = DeleteResponse.TYPE;

    String getName();

    void setName(String str);
}
