package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
final class i<F, T> extends ai<F> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final Function<F, ? extends T> f1803a;

    /* renamed from: b  reason: collision with root package name */
    final ai<T> f1804b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Function<F, ? extends T> function, ai<T> aiVar) {
        this.f1803a = (Function) Preconditions.checkNotNull(function);
        this.f1804b = (ai) Preconditions.checkNotNull(aiVar);
    }

    @Override // com.applovin.exoplayer2.common.a.ai, java.util.Comparator
    public int compare(F f2, F f3) {
        return this.f1804b.compare(this.f1803a.apply(f2), this.f1803a.apply(f3));
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return this.f1803a.equals(iVar.f1803a) && this.f1804b.equals(iVar.f1804b);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f1803a, this.f1804b);
    }

    public String toString() {
        return this.f1804b + ".onResultOf(" + this.f1803a + ")";
    }
}
