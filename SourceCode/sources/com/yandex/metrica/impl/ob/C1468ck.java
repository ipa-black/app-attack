package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
/* renamed from: com.yandex.metrica.impl.ob.ck  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1468ck implements Ok {

    /* renamed from: a  reason: collision with root package name */
    private final C1720mn f14575a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1468ck() {
        this(new C1720mn());
    }

    @Override // com.yandex.metrica.impl.ob.Ok
    public Bundle a(Activity activity) {
        ActivityInfo activityInfo;
        C1720mn c1720mn = this.f14575a;
        ComponentName componentName = activity.getComponentName();
        c1720mn.getClass();
        try {
            activityInfo = activity.getPackageManager().getActivityInfo(componentName, 128);
        } catch (Throwable unused) {
            activityInfo = null;
        }
        if (activityInfo != null) {
            return activityInfo.metaData;
        }
        return null;
    }

    C1468ck(C1720mn c1720mn) {
        this.f14575a = c1720mn;
    }
}
