package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface AbandonRequest extends Request {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.ABANDONREQUEST;

    int getAbandoned();

    void setAbandoned(int i);
}
