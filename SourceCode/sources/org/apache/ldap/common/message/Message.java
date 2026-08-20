package org.apache.ldap.common.message;

import java.util.Collection;
import org.apache.ldap.common.Lockable;
/* loaded from: classes3.dex */
public interface Message extends Lockable {
    void add(Control control) throws MessageException;

    Object get(Object obj);

    Collection getControls();

    int getMessageId();

    MessageTypeEnum getType();

    Object put(Object obj, Object obj2);

    void remove(Control control) throws MessageException;
}
