package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
/* renamed from: com.yandex.metrica.impl.ob.ga  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1558ga<T> implements InterfaceC1533fa<T> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC1533fa
    public ProtobufStateStorage<T> a(Context context) {
        return a(context, c(context));
    }

    protected abstract ProtobufStateStorage<T> a(Context context, R7 r7);

    @Override // com.yandex.metrica.impl.ob.InterfaceC1533fa
    public ProtobufStateStorage<T> b(Context context) {
        return a(context, d(context));
    }

    protected abstract R7 c(Context context);

    protected abstract R7 d(Context context);
}
