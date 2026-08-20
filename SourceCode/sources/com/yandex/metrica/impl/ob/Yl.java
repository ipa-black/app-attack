package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import com.yandex.metrica.MetricaService;
/* loaded from: classes5.dex */
public final class Yl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final Context f14321a;

    public Yl(Context context) {
        this.f14321a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        PackageInfo packageInfo;
        Context context = this.f14321a;
        try {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 516);
            } catch (Throwable unused) {
                packageInfo = null;
            }
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            if (serviceInfoArr != null) {
                for (ServiceInfo serviceInfo : serviceInfoArr) {
                    if (MetricaService.class.getName().equals(serviceInfo.name) && !serviceInfo.enabled) {
                        try {
                            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, MetricaService.class), 1, 1);
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
        } catch (Throwable unused3) {
        }
    }
}
