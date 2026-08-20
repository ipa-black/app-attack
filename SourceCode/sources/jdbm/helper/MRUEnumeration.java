package jdbm.helper;

import java.util.Enumeration;
/* compiled from: MRU.java */
/* loaded from: classes5.dex */
class MRUEnumeration implements Enumeration {
    Enumeration _enum;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MRUEnumeration(Enumeration enumeration) {
        this._enum = enumeration;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this._enum.hasMoreElements();
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        return ((CacheEntry) this._enum.nextElement()).getValue();
    }
}
