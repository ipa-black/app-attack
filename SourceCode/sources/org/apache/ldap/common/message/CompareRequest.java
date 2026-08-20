package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface CompareRequest extends SingleReplyRequest {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.COMPAREREQUEST;
    public static final MessageTypeEnum RESP_TYPE = CompareResponse.TYPE;

    String getAssertionValue();

    String getAttributeId();

    String getName();

    void setAssertionValue(String str);

    void setAttributeId(String str);

    void setName(String str);
}
