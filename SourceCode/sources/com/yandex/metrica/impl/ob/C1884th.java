package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
/* renamed from: com.yandex.metrica.impl.ob.th  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1884th implements CacheControlHttpsConnectionPerformer.Client {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1491di f15776a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ File f15777b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Eh f15778c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ C1908uh f15779d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1884th(C1908uh c1908uh, C1491di c1491di, File file, Eh eh) {
        this.f15779d = c1908uh;
        this.f15776a = c1491di;
        this.f15777b = file;
        this.f15778c = eh;
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public String getOldETag() {
        InterfaceC1789ph interfaceC1789ph;
        interfaceC1789ph = this.f15779d.f15853e;
        return interfaceC1789ph.b();
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onError() {
        C1908uh.a(this.f15779d, this.f15776a.f14623h);
        C1908uh.c(this.f15779d);
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onNotModified() {
        C1908uh.a(this.f15779d, this.f15776a.i);
        C1908uh.c(this.f15779d);
        this.f15778c.a(this.f15777b);
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onResponse(String str, byte[] bArr) {
        InterfaceC1789ph interfaceC1789ph;
        FileOutputStream fileOutputStream;
        C1908uh.a(this.f15779d, this.f15776a.i);
        C1908uh.c(this.f15779d);
        interfaceC1789ph = this.f15779d.f15853e;
        interfaceC1789ph.b(str);
        C1908uh c1908uh = this.f15779d;
        File file = this.f15777b;
        c1908uh.getClass();
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            fileOutputStream = null;
        }
        A2.a((Closeable) fileOutputStream);
        this.f15778c.a(this.f15777b);
    }
}
