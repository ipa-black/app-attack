package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.gh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1565gh {

    /* renamed from: a  reason: collision with root package name */
    private final ProtobufStateStorage<C1515eh> f14804a;

    /* renamed from: b  reason: collision with root package name */
    private final C1540fh f14805b;

    /* renamed from: c  reason: collision with root package name */
    private final M0 f14806c;

    public C1565gh(ProtobufStateStorage<C1515eh> protobufStateStorage) {
        this(protobufStateStorage, new C1540fh(), C1764oh.a());
    }

    public void a() {
        M0 m0 = this.f14806c;
        C1540fh c1540fh = this.f14805b;
        List<C1590hh> list = ((C1515eh) this.f14804a.read()).f14686a;
        c1540fh.getClass();
        ArrayList arrayList = new ArrayList();
        for (C1590hh c1590hh : list) {
            ArrayList arrayList2 = new ArrayList(c1590hh.f14864b.size());
            for (String str : c1590hh.f14864b) {
                if (C1575h2.a(str)) {
                    arrayList2.add(str);
                }
            }
            if (!arrayList2.isEmpty()) {
                arrayList.add(new C1590hh(c1590hh.f14863a, arrayList2));
            }
        }
        c1540fh.getClass();
        JSONObject jSONObject = new JSONObject();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C1590hh c1590hh2 = (C1590hh) it.next();
            try {
                jSONObject.put(c1590hh2.f14863a, new JSONObject().put("classes", new JSONArray((Collection) c1590hh2.f14864b)));
            } catch (Throwable unused) {
            }
        }
        m0.reportEvent("sdk_list", jSONObject.toString());
    }

    public C1565gh(ProtobufStateStorage<C1515eh> protobufStateStorage, C1540fh c1540fh, M0 m0) {
        this.f14804a = protobufStateStorage;
        this.f14805b = c1540fh;
        this.f14806c = m0;
    }
}
