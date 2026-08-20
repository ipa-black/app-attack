package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.ActivationBarrier;
import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.sh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1860sh implements ActivationBarrier.IActivationBarrierCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f15723a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ File f15724b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Eh f15725c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ C1491di f15726d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ C1908uh f15727e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1860sh(C1908uh c1908uh, String str, File file, Eh eh, C1491di c1491di) {
        this.f15727e = c1908uh;
        this.f15723a = str;
        this.f15724b = file;
        this.f15725c = eh;
        this.f15726d = c1491di;
    }

    @Override // com.yandex.metrica.coreutils.services.ActivationBarrier.IActivationBarrierCallback
    public void onWaitFinished() {
        CacheControlHttpsConnectionPerformer cacheControlHttpsConnectionPerformer;
        cacheControlHttpsConnectionPerformer = this.f15727e.f15852d;
        String str = this.f15723a;
        C1908uh c1908uh = this.f15727e;
        File file = this.f15724b;
        Eh eh = this.f15725c;
        C1491di c1491di = this.f15726d;
        c1908uh.getClass();
        cacheControlHttpsConnectionPerformer.performConnection(str, new C1884th(c1908uh, c1491di, file, eh));
    }
}
