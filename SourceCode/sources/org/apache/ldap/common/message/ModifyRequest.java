package org.apache.ldap.common.message;

import java.util.Collection;
import javax.naming.directory.ModificationItem;
/* loaded from: classes3.dex */
public interface ModifyRequest extends SingleReplyRequest {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.MODIFYREQUEST;
    public static final MessageTypeEnum RESP_TYPE = ModifyResponse.TYPE;

    void addModification(ModificationItem modificationItem);

    Collection getModificationItems();

    String getName();

    void removeModification(ModificationItem modificationItem);

    void setName(String str);
}
