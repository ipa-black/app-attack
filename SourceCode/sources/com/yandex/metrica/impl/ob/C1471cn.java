package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
/* renamed from: com.yandex.metrica.impl.ob.cn  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1471cn extends Sm<String> {
    public C1471cn(int i, String str) {
        this(i, str, Ul.a());
    }

    public C1471cn(int i, String str, C1470cm c1470cm) {
        super(i, str, c1470cm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1546fn
    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            byte[] bytes = str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME);
            if (bytes.length > super.b()) {
                String str2 = new String(bytes, 0, super.b(), com.google.android.exoplayer2.C.UTF8_NAME);
                try {
                    if (this.f13918c.isEnabled()) {
                        this.f13918c.fw("\"%s\" %s exceeded limit of %d bytes", super.a(), str, Integer.valueOf(super.b()));
                    }
                } catch (UnsupportedEncodingException unused) {
                }
                return str2;
            }
            return str;
        } catch (UnsupportedEncodingException unused2) {
            return str;
        }
    }
}
