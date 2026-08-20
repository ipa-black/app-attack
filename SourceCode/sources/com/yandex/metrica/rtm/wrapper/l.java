package com.yandex.metrica.rtm.wrapper;

import android.content.Context;
import android.os.Bundle;
import com.yandex.metrica.rtm.service.EventToReporterProxy;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public class l implements f {

    /* renamed from: a  reason: collision with root package name */
    private final EventToReporterProxy f16322a;

    public l(i iVar, Context context, Executor executor, j jVar) {
        this(new EventToReporterProxy(new a(iVar), context, executor, new c(jVar)));
    }

    @Override // com.yandex.metrica.rtm.wrapper.f
    public void reportData(Bundle bundle) {
        try {
            this.f16322a.reportData(bundle);
        } catch (Throwable unused) {
        }
    }

    l(EventToReporterProxy eventToReporterProxy) {
        this.f16322a = eventToReporterProxy;
    }
}
