package com.yandex.metrica.impl.ob;

import android.os.FileObserver;
import android.text.TextUtils;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.l6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class FileObserverC1678l6 extends FileObserver {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1719mm<File> f15058a;

    /* renamed from: b  reason: collision with root package name */
    private final File f15059b;

    /* renamed from: c  reason: collision with root package name */
    private final B0 f15060c;

    public FileObserverC1678l6(File file, InterfaceC1719mm<File> interfaceC1719mm) {
        this(file, interfaceC1719mm, new B0());
    }

    @Override // android.os.FileObserver
    public void onEvent(int i, String str) {
        if (i != 8 || TextUtils.isEmpty(str)) {
            return;
        }
        InterfaceC1719mm<File> interfaceC1719mm = this.f15058a;
        B0 b0 = this.f15060c;
        File file = this.f15059b;
        b0.getClass();
        interfaceC1719mm.b(new File(file, str));
    }

    FileObserverC1678l6(File file, InterfaceC1719mm<File> interfaceC1719mm, B0 b0) {
        super(file.getAbsolutePath(), 8);
        this.f15058a = interfaceC1719mm;
        this.f15059b = file;
        this.f15060c = b0;
    }
}
