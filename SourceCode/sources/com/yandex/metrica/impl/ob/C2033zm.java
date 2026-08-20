package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
import com.yandex.metrica.networktasks.api.RequestBodyEncryptionMode;
/* renamed from: com.yandex.metrica.impl.ob.zm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2033zm implements RequestBodyEncrypter {

    /* renamed from: a  reason: collision with root package name */
    private C2009ym f16178a;

    public C2033zm() {
        this(new C2009ym());
    }

    @Override // com.yandex.metrica.networktasks.api.RequestBodyEncrypter
    public byte[] encrypt(byte[] bArr) {
        return this.f16178a.a(bArr);
    }

    @Override // com.yandex.metrica.networktasks.api.RequestBodyEncrypter
    public RequestBodyEncryptionMode getEncryptionMode() {
        return RequestBodyEncryptionMode.AES_RSA;
    }

    C2033zm(C2009ym c2009ym) {
        this.f16178a = c2009ym;
    }
}
