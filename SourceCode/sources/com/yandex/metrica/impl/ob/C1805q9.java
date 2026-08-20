package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.StateSerializer;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.q9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1805q9<T> implements StateSerializer<T> {

    /* renamed from: a  reason: collision with root package name */
    private final StateSerializer<T> f15484a;

    /* renamed from: b  reason: collision with root package name */
    private final C1961wm f15485b;

    public C1805q9(StateSerializer<T> stateSerializer, C1961wm c1961wm) {
        this.f15484a = stateSerializer;
        this.f15485b = c1961wm;
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public T defaultValue() {
        return (T) this.f15484a.defaultValue();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public byte[] toByteArray(T t) {
        try {
            return this.f15485b.a(this.f15484a.toByteArray(t));
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public T toState(byte[] bArr) throws IOException {
        try {
            C1961wm c1961wm = this.f15485b;
            c1961wm.getClass();
            return (T) this.f15484a.toState(c1961wm.a(bArr, 0, bArr.length));
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }
}
