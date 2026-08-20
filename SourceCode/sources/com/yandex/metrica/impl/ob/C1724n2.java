package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import com.yandex.metrica.MetricaService;
/* renamed from: com.yandex.metrica.impl.ob.n2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1724n2 {

    /* renamed from: a  reason: collision with root package name */
    private static final C1720mn f15232a = new C1720mn();

    public static Intent a(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Intent addFlags = new Intent(context, MetricaService.class).setAction("com.yandex.metrica.IMetricaService").setData(new Uri.Builder().scheme("metrica").authority(context.getPackageName()).build()).addFlags(32);
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (Throwable unused) {
            applicationInfo = null;
        }
        try {
            bundle = applicationInfo.metaData;
            if (bundle == null) {
                bundle = new Bundle();
            }
        } catch (Throwable unused2) {
            bundle = new Bundle();
        }
        Intent putExtras = addFlags.putExtras(bundle);
        putExtras.setData(putExtras.getData().buildUpon().path("client").appendQueryParameter("pid", String.valueOf(Process.myPid())).appendQueryParameter("psid", A3.f12617c).build());
        C1450c2 a2 = C1525f2.a(context).a();
        putExtras.putExtra("screen_size", a2 != null ? Tl.a(a2) : null);
        return putExtras.setPackage(context.getApplicationContext().getPackageName());
    }
}
