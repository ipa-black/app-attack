package com.yandex.metrica.impl.ob;

import android.content.pm.FeatureInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.AbstractC1830rb;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Z4 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final C1720mn f14328b;

    public Z4(L3 l3) {
        this(l3, new C1720mn());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        L3 a2 = a();
        if (a2.x().k() && a2.C()) {
            C1457c9 f2 = a2.f();
            String g2 = a().f().g();
            HashSet hashSet = null;
            if (!TextUtils.isEmpty(g2)) {
                try {
                    HashSet hashSet2 = new HashSet();
                    JSONArray jSONArray = new JSONArray(g2);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        hashSet2.add(new C1854sb(jSONArray.getJSONObject(i)));
                    }
                    hashSet = hashSet2;
                } catch (Throwable unused) {
                }
            }
            ArrayList<C1854sb> b2 = b();
            if (C1422b.a(hashSet, b2)) {
                a2.y();
            } else {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<C1854sb> it = b2.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next().a());
                }
                a2.r().c(C1448c0.a(c1448c0, new JSONObject().put("features", jSONArray2).toString()));
                f2.h(jSONArray2.toString());
            }
        }
        return false;
    }

    ArrayList<C1854sb> b() {
        AbstractC1830rb bVar;
        FeatureInfo[] featureInfoArr;
        try {
            L3 a2 = a();
            PackageInfo b2 = this.f14328b.b(a2.g(), a2.g().getPackageName(), 16384);
            ArrayList<C1854sb> arrayList = new ArrayList<>();
            if (A2.a(24)) {
                bVar = new AbstractC1830rb.a();
            } else {
                bVar = new AbstractC1830rb.b();
            }
            if (b2 != null && (featureInfoArr = b2.reqFeatures) != null) {
                for (FeatureInfo featureInfo : featureInfoArr) {
                    arrayList.add(bVar.a(featureInfo));
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public Z4(L3 l3, C1720mn c1720mn) {
        super(l3);
        this.f14328b = c1720mn;
    }
}
