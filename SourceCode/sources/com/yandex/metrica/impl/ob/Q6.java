package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* loaded from: classes5.dex */
public final class Q6 implements Converter<String, byte[]> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public byte[] fromModel(String str) {
        if (Intrinsics.areEqual("native", str)) {
            str = "JVM";
        }
        Charset charset = Charsets.UTF_8;
        if (str != null) {
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        byte[] bArr = (byte[]) obj;
        throw new UnsupportedOperationException();
    }
}
