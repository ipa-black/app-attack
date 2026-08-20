package com.yandex.metrica.impl.ob;

import android.os.FileObserver;
import java.io.File;
/* loaded from: classes5.dex */
public class Y6 {

    /* renamed from: a  reason: collision with root package name */
    private final FileObserver f14301a;

    /* renamed from: b  reason: collision with root package name */
    private final File f14302b;

    /* renamed from: c  reason: collision with root package name */
    private final C1703m6 f14303c;

    public Y6(File file, InterfaceC1719mm<File> interfaceC1719mm) {
        this(new FileObserverC1678l6(file, interfaceC1719mm), file, new C1703m6());
    }

    public void a() {
        this.f14303c.a(this.f14302b);
        this.f14301a.startWatching();
    }

    Y6(FileObserver fileObserver, File file, C1703m6 c1703m6) {
        this.f14301a = fileObserver;
        this.f14302b = file;
        this.f14303c = c1703m6;
    }
}
