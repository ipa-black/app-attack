package com.applovin.exoplayer2.common.base;

import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
final class d<T> extends Optional<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f1963a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(T t) {
        this.f1963a = t;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public Set<T> asSet() {
        return Collections.singleton(this.f1963a);
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof d) {
            return this.f1963a.equals(((d) obj).f1963a);
        }
        return false;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public T get() {
        return this.f1963a;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public int hashCode() {
        return this.f1963a.hashCode() + 1502476572;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public boolean isPresent() {
        return true;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public Optional<T> or(Optional<? extends T> optional) {
        Preconditions.checkNotNull(optional);
        return this;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public T or(Supplier<? extends T> supplier) {
        Preconditions.checkNotNull(supplier);
        return this.f1963a;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public T or(T t) {
        Preconditions.checkNotNull(t, "use Optional.orNull() instead of Optional.or(null)");
        return this.f1963a;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public T orNull() {
        return this.f1963a;
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public String toString() {
        return "Optional.of(" + this.f1963a + ")";
    }

    @Override // com.applovin.exoplayer2.common.base.Optional
    public <V> Optional<V> transform(Function<? super T, V> function) {
        return new d(Preconditions.checkNotNull(function.apply((T) this.f1963a), "the Function passed to Optional.transform() must not return null."));
    }
}
