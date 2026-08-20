package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Base64;
/* renamed from: com.yandex.metrica.impl.ob.xm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1985xm implements Cm {

    /* renamed from: a  reason: collision with root package name */
    private final C1961wm f16058a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1985xm() {
        this(new C1937vm(F0.g().e()));
    }

    @Override // com.yandex.metrica.impl.ob.Cm
    public Bm a(C1448c0 c1448c0) {
        byte[] a2;
        String encodeToString;
        String q = c1448c0.q();
        if (!TextUtils.isEmpty(q)) {
            try {
                a2 = this.f16058a.a(q.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
            } catch (Throwable unused) {
            }
            if (a2 != null) {
                encodeToString = Base64.encodeToString(a2, 0);
                return new Bm(c1448c0.f(encodeToString), Em.AES_VALUE_ENCRYPTION);
            }
        }
        encodeToString = null;
        return new Bm(c1448c0.f(encodeToString), Em.AES_VALUE_ENCRYPTION);
    }

    C1985xm(C1937vm c1937vm) {
        this(new C1961wm("AES/CBC/PKCS5Padding", c1937vm.b(), c1937vm.a()));
    }

    C1985xm(C1961wm c1961wm) {
        this.f16058a = c1961wm;
    }

    @Override // com.yandex.metrica.impl.ob.Cm
    public byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (bArr == null || bArr.length <= 0) {
            return bArr2;
        }
        try {
            byte[] decode = Base64.decode(bArr, 0);
            C1961wm c1961wm = this.f16058a;
            c1961wm.getClass();
            return c1961wm.a(decode, 0, decode.length);
        } catch (Throwable unused) {
            return bArr2;
        }
    }
}
