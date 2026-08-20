package org.apache.commons.collections.primitives.decorators;

import java.io.Serializable;
import org.apache.commons.collections.primitives.CharList;
/* loaded from: classes5.dex */
public final class UnmodifiableCharList extends BaseUnmodifiableCharList implements Serializable {
    private CharList proxied;

    UnmodifiableCharList(CharList charList) {
        this.proxied = charList;
    }

    public static final CharList wrap(CharList charList) {
        if (charList == null) {
            return null;
        }
        if (charList instanceof UnmodifiableCharList) {
            return charList;
        }
        if (charList instanceof Serializable) {
            return new UnmodifiableCharList(charList);
        }
        return new NonSerializableUnmodifiableCharList(charList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList
    public CharList getProxiedList() {
        return this.proxied;
    }
}
