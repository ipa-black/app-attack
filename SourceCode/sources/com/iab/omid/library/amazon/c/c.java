package com.iab.omid.library.amazon.c;

import android.view.View;
import com.iab.omid.library.amazon.c.a;
import com.iab.omid.library.amazon.d.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final a f9972a;

    public c(a aVar) {
        this.f9972a = aVar;
    }

    ArrayList<View> a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        com.iab.omid.library.amazon.b.a a2 = com.iab.omid.library.amazon.b.a.a();
        if (a2 != null) {
            Collection<com.iab.omid.library.amazon.adsession.a> c2 = a2.c();
            IdentityHashMap identityHashMap = new IdentityHashMap((c2.size() * 2) + 3);
            for (com.iab.omid.library.amazon.adsession.a aVar : c2) {
                View e2 = aVar.e();
                if (e2 != null && f.c(e2) && (rootView = e2.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float a3 = f.a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && f.a(arrayList.get(size - 1)) > a3) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.amazon.c.a
    public JSONObject a(View view) {
        return com.iab.omid.library.amazon.d.b.a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.amazon.c.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0301a interfaceC0301a, boolean z, boolean z2) {
        Iterator<View> it = a().iterator();
        while (it.hasNext()) {
            interfaceC0301a.a(it.next(), this.f9972a, jSONObject, z2);
        }
    }
}
