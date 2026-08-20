package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class M1 {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1773p1 f13454a;

    /* renamed from: b  reason: collision with root package name */
    private final com.yandex.metrica.rtm.wrapper.f f13455b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public M1(InterfaceC1773p1 interfaceC1773p1, Context context) {
        this(interfaceC1773p1, new Zg().b(context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, Bundle bundle) {
        if (i == 1) {
            this.f13454a.reportData(bundle);
        } else if (i != 2) {
        } else {
            this.f13455b.reportData(bundle);
        }
    }

    M1(InterfaceC1773p1 interfaceC1773p1, com.yandex.metrica.rtm.wrapper.f fVar) {
        this.f13454a = interfaceC1773p1;
        this.f13455b = fVar;
    }
}
