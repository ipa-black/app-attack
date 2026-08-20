package com.yandex.metrica.impl.ob;

import android.os.Process;
/* loaded from: classes5.dex */
class C7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f12742a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f12743b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12744c;

    /* renamed from: d  reason: collision with root package name */
    public final C1779p7 f12745d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C7(String str, boolean z, C1779p7 c1779p7) {
        this(str, z, c1779p7, A2.a(23) && Process.is64Bit());
    }

    C7(String str, boolean z, C1779p7 c1779p7, boolean z2) {
        this.f12742a = str;
        this.f12744c = z;
        this.f12745d = c1779p7;
        this.f12743b = z2;
    }
}
