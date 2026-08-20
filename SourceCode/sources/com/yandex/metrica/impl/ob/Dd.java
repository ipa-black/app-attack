package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
class Dd implements Ad {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12806a;

    /* renamed from: b  reason: collision with root package name */
    private final C1720mn f12807b;

    public Dd(Context context, C1720mn c1720mn) {
        this.f12806a = context;
        this.f12807b = c1720mn;
    }

    @Override // com.yandex.metrica.impl.ob.Ad
    public List<Bd> a() {
        ArrayList arrayList = new ArrayList();
        C1720mn c1720mn = this.f12807b;
        Context context = this.f12806a;
        PackageInfo b2 = c1720mn.b(context, context.getPackageName(), 4096);
        if (b2 == null) {
            return arrayList;
        }
        String[] strArr = b2.requestedPermissions;
        int[] iArr = b2.requestedPermissionsFlags;
        if (strArr == null) {
            return arrayList;
        }
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (iArr != null && iArr.length > i && (iArr[i] & 2) != 0) {
                arrayList.add(new Bd(str, true));
            } else {
                arrayList.add(new Bd(str, false));
            }
        }
        return arrayList;
    }
}
