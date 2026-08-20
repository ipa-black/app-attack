package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.core.api.ProtobufStateSerializer;
import com.yandex.metrica.core.api.ProtobufStateStorage;
/* renamed from: com.yandex.metrica.impl.ob.l9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1681l9<T, P extends MessageNano> implements ProtobufStateStorage<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f15062a;

    /* renamed from: b  reason: collision with root package name */
    private final R7 f15063b;

    /* renamed from: c  reason: collision with root package name */
    private final ProtobufStateSerializer<P> f15064c;

    /* renamed from: d  reason: collision with root package name */
    private final ProtobufConverter<T, P> f15065d;

    public C1681l9(String str, R7 r7, ProtobufStateSerializer<P> protobufStateSerializer, ProtobufConverter<T, P> protobufConverter) {
        this.f15062a = str;
        this.f15063b = r7;
        this.f15064c = protobufStateSerializer;
        this.f15065d = protobufConverter;
    }

    @Override // com.yandex.metrica.core.api.ProtobufStateStorage
    public void delete() {
        this.f15063b.b(this.f15062a);
    }

    @Override // com.yandex.metrica.core.api.ProtobufStateStorage
    public T read() {
        try {
            byte[] a2 = this.f15063b.a(this.f15062a);
            if (A2.a(a2)) {
                return (T) this.f15065d.toModel(this.f15064c.defaultValue());
            }
            return (T) this.f15065d.toModel(this.f15064c.toState(a2));
        } catch (Throwable unused) {
            return (T) this.f15065d.toModel(this.f15064c.defaultValue());
        }
    }

    @Override // com.yandex.metrica.core.api.ProtobufStateStorage
    public void save(T t) {
        this.f15063b.a(this.f15062a, this.f15064c.toByteArray(this.f15065d.fromModel(t)));
    }
}
