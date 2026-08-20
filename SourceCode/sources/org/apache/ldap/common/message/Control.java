package org.apache.ldap.common.message;

import org.apache.ldap.common.Lockable;
/* loaded from: classes3.dex */
public interface Control extends Lockable, javax.naming.ldap.Control {
    String getType();

    byte[] getValue();

    boolean isCritical();

    void setCritical(boolean z);

    void setType(String str);

    void setValue(byte[] bArr);
}
