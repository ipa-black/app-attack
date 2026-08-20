package com.yandex.metrica.impl.ob;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.yandex.metrica.impl.ob.wm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1961wm {

    /* renamed from: a  reason: collision with root package name */
    private final String f16006a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f16007b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f16008c;

    public C1961wm(String str, byte[] bArr, byte[] bArr2) {
        this.f16006a = str;
        this.f16007b = bArr;
        this.f16008c = bArr2;
    }

    public byte[] a(byte[] bArr) throws Throwable {
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f16007b, "AES");
        Cipher cipher = Cipher.getInstance(this.f16006a);
        cipher.init(1, secretKeySpec, new IvParameterSpec(this.f16008c));
        return cipher.doFinal(bArr);
    }

    public byte[] a(byte[] bArr, int i, int i2) throws Throwable {
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f16007b, "AES");
        Cipher cipher = Cipher.getInstance(this.f16006a);
        cipher.init(2, secretKeySpec, new IvParameterSpec(this.f16008c));
        return cipher.doFinal(bArr, i, i2);
    }
}
