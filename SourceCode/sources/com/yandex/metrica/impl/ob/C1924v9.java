package com.yandex.metrica.impl.ob;

import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.v9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1924v9 {

    /* renamed from: a  reason: collision with root package name */
    private final a f15902a;

    /* renamed from: b  reason: collision with root package name */
    private final Ql f15903b;

    /* renamed from: com.yandex.metrica.impl.ob.v9$a */
    /* loaded from: classes5.dex */
    public static class a {
    }

    public C1924v9() {
        this(new a(), new Ql());
    }

    public byte[] a(byte[] bArr, String str) {
        try {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, 16);
            a aVar = this.f15902a;
            byte[] bytes = str.getBytes();
            aVar.getClass();
            C1961wm c1961wm = new C1961wm("AES/CBC/PKCS5Padding", bytes, copyOfRange);
            if (A2.a(bArr)) {
                return null;
            }
            return this.f15903b.uncompress(c1961wm.a(bArr, 16, bArr.length - 16));
        } catch (Throwable unused) {
            return null;
        }
    }

    public C1924v9(a aVar, Ql ql) {
        this.f15902a = aVar;
        this.f15903b = ql;
    }
}
