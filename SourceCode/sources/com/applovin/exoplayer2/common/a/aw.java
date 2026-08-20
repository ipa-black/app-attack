package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.Iterator;
/* loaded from: classes.dex */
abstract class aw<F, T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<? extends F> f1752a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(Iterator<? extends F> it) {
        this.f1752a = (Iterator) Preconditions.checkNotNull(it);
    }

    abstract T a(F f2);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1752a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.f1752a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f1752a.remove();
    }
}
