package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
final class ao<T> extends ai<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final ai<? super T> f1740a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(ai<? super T> aiVar) {
        this.f1740a = (ai) Preconditions.checkNotNull(aiVar);
    }

    @Override // com.applovin.exoplayer2.common.a.ai
    public <S extends T> ai<S> a() {
        return (ai<? super T>) this.f1740a;
    }

    @Override // com.applovin.exoplayer2.common.a.ai, java.util.Comparator
    public int compare(T t, T t2) {
        return this.f1740a.compare(t2, t);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ao) {
            return this.f1740a.equals(((ao) obj).f1740a);
        }
        return false;
    }

    public int hashCode() {
        return -this.f1740a.hashCode();
    }

    public String toString() {
        return this.f1740a + ".reverse()";
    }
}
