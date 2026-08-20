package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class Gd implements Ad {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12981a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12982b;

    /* renamed from: c  reason: collision with root package name */
    private final C1720mn f12983c;

    public Gd(Context context, String str, C1720mn c1720mn) {
        this.f12981a = context;
        this.f12982b = str;
        this.f12983c = c1720mn;
    }

    @Override // com.yandex.metrica.impl.ob.Ad
    public List<Bd> a() {
        ArrayList arrayList = new ArrayList();
        PackageInfo b2 = this.f12983c.b(this.f12981a, this.f12982b, 4096);
        if (b2 != null) {
            for (String str : b2.requestedPermissions) {
                arrayList.add(new Bd(str, true));
            }
        }
        return arrayList;
    }
}
