package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public abstract class tn<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f15792a;

    public tn(T t) {
        this.f15792a = t;
    }

    protected abstract boolean a(tn<T> tnVar);

    public boolean equals(Object obj) {
        if (obj instanceof tn) {
            try {
                return a((tn) obj);
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }
}
