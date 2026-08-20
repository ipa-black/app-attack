package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1811qf;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* renamed from: com.yandex.metrica.impl.ob.te  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1881te {

    /* renamed from: a  reason: collision with root package name */
    private final D9 f15768a = new D9();

    public C1811qf.d.a.b[] a(byte[] bArr) {
        int i = 0;
        if (bArr != null) {
            Map<String, byte[]> model = this.f15768a.toModel(bArr);
            int size = model.size();
            C1811qf.d.a.b[] bVarArr = new C1811qf.d.a.b[size];
            for (int i2 = 0; i2 < size; i2++) {
                bVarArr[i2] = new C1811qf.d.a.b();
            }
            for (Object obj : ((LinkedHashMap) model).entrySet()) {
                int i3 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Map.Entry entry = (Map.Entry) obj;
                C1811qf.d.a.b bVar = bVarArr[i];
                String str = (String) entry.getKey();
                Charset charset = Charsets.UTF_8;
                if (str != null) {
                    byte[] bytes = str.getBytes(charset);
                    Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                    bVar.f15553a = bytes;
                    bVar.f15554b = (byte[]) entry.getValue();
                    i = i3;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            }
            return bVarArr;
        }
        return new C1811qf.d.a.b[0];
    }
}
