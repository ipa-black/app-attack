package org.apache.ldap.common.message;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.ldap.common.AbstractLockable;
/* loaded from: classes3.dex */
public class AbstractMessage extends AbstractLockable implements Message {
    private final Map controls;
    private final int id;
    private final Map parameters;
    private final MessageTypeEnum type;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractMessage(int i, MessageTypeEnum messageTypeEnum) {
        super(true);
        this.id = i;
        this.type = messageTypeEnum;
        this.controls = new HashMap();
        this.parameters = new HashMap();
    }

    @Override // org.apache.ldap.common.message.Message
    public int getMessageId() {
        return this.id;
    }

    @Override // org.apache.ldap.common.message.Message
    public Collection getControls() {
        return Collections.unmodifiableCollection(this.controls.values());
    }

    @Override // org.apache.ldap.common.message.Message
    public void add(Control control) throws MessageException {
        lockCheck("Attempt to add control to locked message envelope!");
        this.controls.put(control.getType(), control);
    }

    @Override // org.apache.ldap.common.message.Message
    public void remove(Control control) throws MessageException {
        lockCheck("Attempt to remove control from locked message envelope!");
        this.controls.remove(control.getType());
    }

    @Override // org.apache.ldap.common.message.Message
    public MessageTypeEnum getType() {
        return this.type;
    }

    @Override // org.apache.ldap.common.message.Message
    public Object get(Object obj) {
        return this.parameters.get(obj);
    }

    @Override // org.apache.ldap.common.message.Message
    public Object put(Object obj, Object obj2) {
        return this.parameters.put(obj, obj2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Message) {
            Message message = (Message) obj;
            if (message.getMessageId() == this.id && message.getType() == this.type) {
                Collection controls = message.getControls();
                if (controls.size() != this.controls.size()) {
                    return false;
                }
                for (Object obj2 : this.controls.values()) {
                    if (!controls.contains(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }
}
