package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import java.nio.charset.Charset;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* loaded from: classes5.dex */
public final class R6 implements Converter<Map<String, ? extends String>, C1538ff[]> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1538ff[] fromModel(Map<String, String> map) {
        int size = map.size();
        C1538ff[] c1538ffArr = new C1538ff[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c1538ffArr[i2] = new C1538ff();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            C1538ff c1538ff = c1538ffArr[i];
            String key = entry.getKey();
            Charset charset = Charsets.UTF_8;
            if (key != null) {
                byte[] bytes = key.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                c1538ff.f14748a = bytes;
                C1538ff c1538ff2 = c1538ffArr[i];
                String value = entry.getValue();
                Charset charset2 = Charsets.UTF_8;
                if (value == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                byte[] bytes2 = value.getBytes(charset2);
                Intrinsics.checkNotNullExpressionValue(bytes2, "(this as java.lang.String).getBytes(charset)");
                c1538ff2.f14749b = bytes2;
                i++;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
        }
        return c1538ffArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1538ff[] c1538ffArr = (C1538ff[]) obj;
        throw new UnsupportedOperationException();
    }
}
