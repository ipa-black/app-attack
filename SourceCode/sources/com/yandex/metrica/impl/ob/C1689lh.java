package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.ads.AdError;
import com.google.firebase.messaging.Constants;
import com.yandex.metrica.impl.ob.H1;
import com.yandex.metrica.impl.ob.Jf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.lh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1689lh {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Jf.e.b.a, String> f15090a = Collections.unmodifiableMap(new a());

    /* renamed from: b  reason: collision with root package name */
    private static final Map<H1.d, String> f15091b = Collections.unmodifiableMap(new b());

    /* renamed from: com.yandex.metrica.impl.ob.lh$a */
    /* loaded from: classes5.dex */
    class a extends HashMap<Jf.e.b.a, String> {
        a() {
            put(Jf.e.b.a.COMPLETE, "complete");
            put(Jf.e.b.a.ERROR, Constants.IPC_BUNDLE_KEY_SEND_ERROR);
            put(Jf.e.b.a.OFFLINE, "offline");
            put(Jf.e.b.a.INCOMPATIBLE_NETWORK_TYPE, "incompatible_network_type");
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.lh$b */
    /* loaded from: classes5.dex */
    class b extends HashMap<H1.d, String> {
        b() {
            put(H1.d.WIFI, "wifi");
            put(H1.d.CELL, "cell");
            put(H1.d.OFFLINE, "offline");
            put(H1.d.UNDEFINED, AdError.UNDEFINED_DOMAIN);
        }
    }

    public String a(Jf.e.b bVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("id", bVar.d().f13278a);
            jSONObject.putOpt("url", bVar.d().f13279b);
            jSONObject.putOpt("status", f15090a.get(bVar.h()));
            jSONObject.putOpt("code", bVar.f());
            if (!A2.a(bVar.e())) {
                jSONObject.putOpt(TtmlNode.TAG_BODY, Base64.encodeToString(bVar.e(), 0));
            } else if (!A2.a(bVar.b())) {
                jSONObject.putOpt(TtmlNode.TAG_BODY, Base64.encodeToString(bVar.b(), 0));
            }
            jSONObject.putOpt("headers", a(bVar.g()));
            Throwable c2 = bVar.c();
            jSONObject.putOpt(Constants.IPC_BUNDLE_KEY_SEND_ERROR, c2 != null ? c2.toString() + "\n" + Log.getStackTraceString(c2) : null);
            jSONObject.putOpt("network_type", f15091b.get(bVar.a()));
            return jSONObject.toString();
        } catch (Throwable th) {
            return th.toString();
        }
    }

    private JSONObject a(Map<String, List<String>> map) throws JSONException {
        if (A2.b(map)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            if (!A2.b(entry.getValue())) {
                List<String> value = entry.getValue();
                if (value.size() > 10) {
                    ArrayList arrayList = new ArrayList(10);
                    for (int i = 0; i < 10; i++) {
                        arrayList.add(value.get(i));
                    }
                    value = arrayList;
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str : value) {
                    if (!TextUtils.isEmpty(str)) {
                        arrayList2.add(A2.a(str, 100));
                    }
                }
                jSONObject.putOpt(key, TextUtils.join(",", arrayList2));
            }
        }
        return jSONObject;
    }
}
