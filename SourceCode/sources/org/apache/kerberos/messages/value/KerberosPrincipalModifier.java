package org.apache.kerberos.messages.value;

import javax.security.auth.kerberos.KerberosPrincipal;
/* loaded from: classes5.dex */
public class KerberosPrincipalModifier {
    private static final String REALM_SEPARATOR = "@";
    PrincipalName _nameComponent;
    String _realm;

    public KerberosPrincipal getKerberosPrincipal() {
        if (this._nameComponent != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this._nameComponent.getNameComponent());
            if (this._realm != null) {
                stringBuffer.append(REALM_SEPARATOR);
                stringBuffer.append(this._realm);
            }
            return new KerberosPrincipal(stringBuffer.toString(), this._nameComponent.getNameType());
        }
        return null;
    }

    public void setPrincipalName(PrincipalName principalName) {
        this._nameComponent = principalName;
    }

    public void setRealm(String str) {
        this._realm = str;
    }
}
