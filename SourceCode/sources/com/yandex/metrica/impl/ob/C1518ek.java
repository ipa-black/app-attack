package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
/* renamed from: com.yandex.metrica.impl.ob.ek  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1518ek implements Ok {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f14699a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1518ek(Context context) {
        this(context, new C1720mn());
    }

    @Override // com.yandex.metrica.impl.ob.Ok
    public Bundle a(Activity activity) {
        return this.f14699a;
    }

    C1518ek(Context context, C1720mn c1720mn) {
        ApplicationInfo a2 = c1720mn.a(context, context.getPackageName(), 128);
        if (a2 != null) {
            this.f14699a = a2.metaData;
        } else {
            this.f14699a = null;
        }
    }
}
