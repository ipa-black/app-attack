package antlr.collections.impl;

import java.util.Enumeration;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
class VectorEnumerator implements Enumeration {
    int i = 0;
    Vector vector;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VectorEnumerator(Vector vector) {
        this.vector = vector;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        boolean z;
        synchronized (this.vector) {
            z = this.i <= this.vector.lastElement;
        }
        return z;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        Object obj;
        synchronized (this.vector) {
            if (this.i <= this.vector.lastElement) {
                Object[] objArr = this.vector.data;
                int i = this.i;
                this.i = i + 1;
                obj = objArr[i];
            } else {
                throw new NoSuchElementException("VectorEnumerator");
            }
        }
        return obj;
    }
}
