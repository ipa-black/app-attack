package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
final class m<T> extends ai<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<T> f1826a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Comparator<T> comparator) {
        this.f1826a = (Comparator) Preconditions.checkNotNull(comparator);
    }

    @Override // com.applovin.exoplayer2.common.a.ai, java.util.Comparator
    public int compare(T t, T t2) {
        return this.f1826a.compare(t, t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            return this.f1826a.equals(((m) obj).f1826a);
        }
        return false;
    }

    public int hashCode() {
        return this.f1826a.hashCode();
    }

    public String toString() {
        return this.f1826a.toString();
    }
}
