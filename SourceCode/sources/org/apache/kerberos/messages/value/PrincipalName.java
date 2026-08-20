package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class PrincipalName {
    private String _nameComponent;
    private int _nameType;

    public PrincipalName(String str, int i) {
        this._nameComponent = str;
        this._nameType = i;
    }

    public int getNameType() {
        return this._nameType;
    }

    public String getNameComponent() {
        return this._nameComponent;
    }
}
