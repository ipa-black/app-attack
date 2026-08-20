package org.apache.ldap.common.message;

import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public interface SearchResponseEntry extends Response {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.SEARCHRESENTRY;

    Attributes getAttributes();

    String getObjectName();

    void setAttributes(Attributes attributes);

    void setObjectName(String str);
}
