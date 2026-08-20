package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
abstract class a<E> extends ay<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f1699a;

    /* renamed from: b  reason: collision with root package name */
    private int f1700b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i, int i2) {
        Preconditions.checkPositionIndex(i2, i);
        this.f1699a = i;
        this.f1700b = i2;
    }

    protected abstract E a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f1700b < this.f1699a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f1700b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f1700b;
            this.f1700b = i + 1;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f1700b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f1700b - 1;
            this.f1700b = i;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f1700b - 1;
    }
}
