package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.core.api.JsonParser;
import com.yandex.metrica.modules.api.RemoteConfigExtensionConfiguration;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.hd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1586hd implements JsonParser<Object>, Converter<Object, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ JsonParser<? extends Object> f14852a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Converter<Object, byte[]> f14853b;

    public C1586hd(RemoteConfigExtensionConfiguration<Object> remoteConfigExtensionConfiguration) {
        this.f14852a = remoteConfigExtensionConfiguration.getJsonParser();
        this.f14853b = remoteConfigExtensionConfiguration.getProtobufConverter();
    }

    @Override // com.yandex.metrica.core.api.Parser
    /* renamed from: a */
    public Object parse(JSONObject jSONObject) {
        return this.f14852a.parse(jSONObject);
    }

    public Object a(byte[] bArr) {
        return this.f14853b.toModel(bArr);
    }

    public byte[] a(Object obj) {
        return (byte[]) this.f14853b.fromModel(obj);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        return (byte[]) this.f14853b.fromModel(obj);
    }

    @Override // com.yandex.metrica.core.api.Parser
    public Object parseOrNull(Object obj) {
        return this.f14852a.parseOrNull((JSONObject) obj);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        return this.f14853b.toModel((byte[]) obj);
    }
}
