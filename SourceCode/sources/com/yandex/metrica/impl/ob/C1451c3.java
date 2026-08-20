package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.InterfaceC1533fa;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.c3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1451c3 implements InterfaceC1721n {

    /* renamed from: a  reason: collision with root package name */
    private final ProtobufStateStorage<X2> f14522a;

    /* renamed from: b  reason: collision with root package name */
    private X2 f14523b;

    public C1451c3(Context context) {
        this(InterfaceC1533fa.b.a(X2.class).a(context));
    }

    public void a(List<com.yandex.metrica.billing_interface.a> list, boolean z) {
        for (com.yandex.metrica.billing_interface.a aVar : list) {
        }
        X2 x2 = new X2(list, z);
        this.f14523b = x2;
        this.f14522a.save(x2);
    }

    public boolean b() {
        return this.f14523b.f14219b;
    }

    C1451c3(ProtobufStateStorage<X2> protobufStateStorage) {
        this.f14522a = protobufStateStorage;
        this.f14523b = (X2) protobufStateStorage.read();
    }

    public List<com.yandex.metrica.billing_interface.a> a() {
        return this.f14523b.f14218a;
    }
}
