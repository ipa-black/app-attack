package org.apache.kerberos.messages.value;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class PrincipalNameModifier {
    private static final String COMPONENT_SEPARATOR = "/";
    List _components = new ArrayList();
    int _nameType;

    public PrincipalName getPrincipalName() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = this._components.iterator();
        while (it.hasNext()) {
            stringBuffer.append((String) it.next());
            if (it.hasNext()) {
                stringBuffer.append(COMPONENT_SEPARATOR);
            }
        }
        return new PrincipalName(stringBuffer.toString(), this._nameType);
    }

    public void setType(int i) {
        this._nameType = i;
    }

    public void addName(String str) {
        this._components.add(str);
    }
}
