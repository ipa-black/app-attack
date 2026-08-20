package com.appodeal.ads.utils.campaign_frequency;

import android.util.Pair;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appnext.base.b.d;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.r0;
import com.appodeal.ads.storage.o;
import com.appodeal.ads.utils.Log;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b {
    public static final HashMap l = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    public a f7750a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7751b;

    /* renamed from: c  reason: collision with root package name */
    public final String f7752c;

    /* renamed from: d  reason: collision with root package name */
    public final String f7753d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7754e;

    /* renamed from: f  reason: collision with root package name */
    public final int f7755f;

    /* renamed from: g  reason: collision with root package name */
    public final int f7756g;

    /* renamed from: h  reason: collision with root package name */
    public final int f7757h;
    public final int i;
    public final boolean j;
    public final boolean k;

    public b(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        this.f7751b = str;
        this.f7752c = str2;
        this.f7753d = str3;
        this.f7754e = i;
        this.f7755f = i2;
        this.f7756g = i3;
        this.f7757h = i4;
        this.i = i5;
        this.j = z;
        this.k = z2;
        this.f7750a = new a(str2);
    }

    public static b a(JSONObject jSONObject, String str) {
        try {
            String valueOf = String.valueOf(jSONObject.getInt("campaign_id"));
            String valueOf2 = String.valueOf(jSONObject.getInt("image_id"));
            int i = jSONObject.getInt("impressions");
            int i2 = jSONObject.getInt(TypedValues.CycleType.S_WAVE_PERIOD);
            int optInt = jSONObject.optInt(OutcomeEventsTable.COLUMN_NAME_SESSION, -1);
            int optInt2 = jSONObject.optInt(d.fn, 0);
            jSONObject.optBoolean("per_app", false);
            return new b(str, valueOf, valueOf2, jSONObject.getString("cap_type").equals("image") ? 2 : 1, i, i2, optInt, optInt2, jSONObject.optBoolean("stop_after_install", false), jSONObject.optBoolean("stop_after_click", false));
        } catch (Throwable th) {
            Log.log(th);
            return null;
        }
    }

    public static JSONObject a(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                JSONObject jSONObject2 = new JSONObject(jSONObject.getString(next));
                Iterator<String> keys2 = jSONObject2.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    JSONArray jSONArray = jSONObject2.getJSONArray(next2);
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(Integer.valueOf(jSONArray.getInt(i)));
                    }
                    Collections.sort(arrayList);
                    List subList = arrayList.subList(Math.max(arrayList.size() - 20, 0), arrayList.size());
                    long currentTimeMillis = ((System.currentTimeMillis() / 1000) / 60) - 43200;
                    Iterator it = subList.iterator();
                    while (it.hasNext()) {
                        if (((Integer) it.next()).intValue() < currentTimeMillis) {
                            it.remove();
                        }
                    }
                    if (subList.size() > 0) {
                        jSONObject2.put(next2, new JSONArray((Collection) subList));
                    } else {
                        keys2.remove();
                    }
                }
                if (jSONObject2.length() > 0) {
                    jSONObject.put(next, jSONObject2);
                } else {
                    keys.remove();
                }
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
        return jSONObject;
    }

    public static void a(ArrayList arrayList) {
        try {
            if (r0.f7347g) {
                HashMap hashMap = new HashMap();
                for (int i = 0; i < arrayList.size(); i++) {
                    JSONObject jSONObject = (JSONObject) arrayList.get(i);
                    if (jSONObject.has(Constants.CAMPAIGN_FREQUENCY)) {
                        double d2 = jSONObject.getDouble("ecpm");
                        List arrayList2 = hashMap.containsKey(Double.valueOf(d2)) ? (List) hashMap.get(Double.valueOf(d2)) : new ArrayList();
                        arrayList2.add(new Pair(Integer.valueOf(i), Double.valueOf(jSONObject.getJSONObject(Constants.CAMPAIGN_FREQUENCY).optDouble("weight", 1.0d))));
                        hashMap.put(Double.valueOf(d2), arrayList2);
                    }
                }
                for (List<Pair> list : hashMap.values()) {
                    if (list.size() != 1) {
                        double d3 = 0.0d;
                        for (Pair pair : list) {
                            d3 += ((Double) pair.second).doubleValue();
                        }
                        ArrayList arrayList3 = new ArrayList();
                        for (Pair pair2 : list) {
                            arrayList3.addAll(Collections.nCopies((int) Math.round((((Double) pair2.second).doubleValue() / d3) * 100.0d), (Integer) pair2.first));
                        }
                        Collections.shuffle(arrayList3);
                        ArrayList arrayList4 = new ArrayList(new LinkedHashSet(arrayList3));
                        HashMap hashMap2 = new HashMap();
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            hashMap2.put((Integer) arrayList4.get(i2), (JSONObject) arrayList.get(((Integer) ((Pair) list.get(i2)).first).intValue()));
                        }
                        for (Map.Entry entry : hashMap2.entrySet()) {
                            arrayList.set(((Integer) entry.getKey()).intValue(), (JSONObject) entry.getValue());
                        }
                    }
                }
            }
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0154 A[Catch: Exception -> 0x01cd, TryCatch #1 {Exception -> 0x01cd, blocks: (B:3:0x0003, B:6:0x000c, B:8:0x0010, B:9:0x0017, B:11:0x0029, B:13:0x002d, B:15:0x0039, B:17:0x0049, B:30:0x0076, B:74:0x013a, B:75:0x014e, B:77:0x0154, B:79:0x0163, B:80:0x0166, B:84:0x016d, B:90:0x0178, B:93:0x0186, B:99:0x0192, B:101:0x0197, B:110:0x01c9, B:103:0x01a5, B:106:0x01ab, B:107:0x01b8, B:109:0x01bc, B:35:0x0086, B:37:0x008e, B:38:0x0096, B:40:0x009c, B:43:0x00aa, B:45:0x00ae, B:47:0x00b8, B:49:0x00c2, B:51:0x00ca, B:53:0x00da, B:54:0x00df, B:56:0x00e5, B:57:0x00f0, B:59:0x00f6, B:62:0x0104, B:64:0x0108, B:66:0x0112, B:68:0x011c, B:69:0x0125, B:71:0x012b, B:28:0x0072, B:19:0x005e, B:23:0x0065, B:24:0x006a, B:25:0x006b), top: B:118:0x0003, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.content.Context r17) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.utils.campaign_frequency.b.a(android.content.Context):boolean");
    }

    public static void a() {
        try {
            JSONObject a2 = a(a.a());
            o oVar = a.f7747b;
            oVar.a(a2);
            oVar.f7664a.a(System.currentTimeMillis());
        } catch (Exception e2) {
            Log.log(e2);
        }
    }
}
