package com.applovin.exoplayer2.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
abstract class b<T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    private a f1955a = a.NOT_READY;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private T f1956b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.exoplayer2.common.base.b$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1957a;

        static {
            int[] iArr = new int[a.values().length];
            f1957a = iArr;
            try {
                iArr[a.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1957a[a.DONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean c() {
        this.f1955a = a.FAILED;
        this.f1956b = a();
        if (this.f1955a != a.DONE) {
            this.f1955a = a.READY;
            return true;
        }
        return false;
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    @NullableDecl
    public final T b() {
        this.f1955a = a.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.f1955a != a.FAILED);
        int i = AnonymousClass1.f1957a[this.f1955a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return c();
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f1955a = a.NOT_READY;
            T t = this.f1956b;
            this.f1956b = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
