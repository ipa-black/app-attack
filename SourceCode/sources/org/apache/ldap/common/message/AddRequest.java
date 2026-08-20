package org.apache.ldap.common.message;

import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public interface AddRequest extends SingleReplyRequest {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.ADDREQUEST;
    public static final MessageTypeEnum RESP_TYPE = AddResponse.TYPE;

    Attributes getEntry();

    String getName();

    void setEntry(Attributes attributes);

    void setName(String str);
}
