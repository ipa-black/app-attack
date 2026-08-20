package com.appodeal.ads.segments;

import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.segments.k;
import com.appodeal.ads.utils.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final long f7528a;

    /* renamed from: b  reason: collision with root package name */
    public final a f7529b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7530c;

    /* renamed from: d  reason: collision with root package name */
    public final i[] f7531d;

    /* renamed from: e  reason: collision with root package name */
    public final JSONArray f7532e;

    public k(JSONObject jSONObject) {
        this.f7528a = jSONObject.optInt("id", -1);
        this.f7529b = new a(jSONObject);
        this.f7531d = j.a(jSONObject);
        this.f7530c = com.appodeal.ads.segments.a.a(jSONObject.optString("match_rule", ""));
        this.f7532e = jSONObject.optJSONArray("placements");
    }

    public final void a() {
        TreeMap<String, g> treeMap = h.f7512a;
        if (this.f7532e == null) {
            treeMap.clear();
            return;
        }
        TreeMap treeMap2 = new TreeMap();
        for (int i = 0; i < this.f7532e.length(); i++) {
            g a2 = g.a(this.f7532e.getJSONObject(i));
            if (a2 != null) {
                g gVar = h.f7512a.get(a2.f7505b);
                a2.f7509f = gVar != null ? gVar.f7509f : 0L;
                treeMap2.put(a2.f7505b, a2);
            }
        }
        treeMap.clear();
        treeMap.putAll(treeMap2);
    }

    public final long b() {
        return this.f7528a;
    }

    public final a c() {
        return this.f7529b;
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final JSONObject f7533a;

        public a(JSONObject jSONObject) {
            JSONObject optJSONObject = jSONObject.optJSONObject(com.appnext.core.a.b.hW);
            this.f7533a = optJSONObject == null ? new JSONObject() : optJSONObject;
        }

        public static /* synthetic */ int a(Set set, JSONObject jSONObject, JSONObject jSONObject2) {
            if (set.contains(jSONObject.optString("status")) || set.contains(jSONObject2.optString("status"))) {
                double optDouble = jSONObject2.optDouble("ecpm") - jSONObject.optDouble("ecpm");
                if (optDouble == 0.0d) {
                    return 0;
                }
                return optDouble < 0.0d ? -1 : 1;
            }
            return 0;
        }

        public static void a(ArrayList arrayList, final HashSet hashSet) {
            if (hashSet.isEmpty()) {
                return;
            }
            Collections.sort(arrayList, new Comparator() { // from class: com.appodeal.ads.segments.k$a$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return k.a.a(hashSet, (JSONObject) obj, (JSONObject) obj2);
                }
            });
        }

        public static void a(ArrayList arrayList, HashSet hashSet, JSONObject jSONObject) {
            if (hashSet.isEmpty()) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                JSONObject jSONObject2 = (JSONObject) it.next();
                String optString = jSONObject2.optString("status", null);
                String optString2 = jSONObject2.optString("name", null);
                if (optString2 != null && !optString2.isEmpty()) {
                    optString = optString2;
                }
                if (optString != null && !optString.isEmpty() && hashSet.contains(optString)) {
                    if (!jSONObject2.has("cap")) {
                        String optString3 = jSONObject2.optString("id");
                        String optString4 = jSONObject2.optString("status");
                        String optString5 = jSONObject2.optString("name", null);
                        if (optString5 != null && !optString5.isEmpty()) {
                            optString4 = optString5;
                        }
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            JSONObject jSONObject3 = (JSONObject) it2.next();
                            String optString6 = jSONObject3.optString("id");
                            if (optString6 == null || !optString6.equals(optString3)) {
                                String optString7 = jSONObject3.optString("status");
                                String optString8 = jSONObject3.optString("name", null);
                                if (optString8 != null && !optString8.isEmpty()) {
                                    optString7 = optString8;
                                }
                                if (optString7 != null && optString7.equals(optString4)) {
                                    break;
                                }
                            }
                        }
                        jSONObject2.put("ecpm", jSONObject.getDouble(optString));
                    } else if (jSONObject2.getBoolean("cap")) {
                        it.remove();
                    } else {
                        jSONObject2.put("ecpm", jSONObject.getDouble(optString));
                    }
                }
            }
        }

        public final boolean a(AdType adType) {
            JSONArray optJSONArray = this.f7533a.optJSONArray("disable_type");
            if (optJSONArray != null) {
                return optJSONArray.toString().contains(String.format("\"%s\"", m.a(adType)));
            }
            return false;
        }

        public final void a(ArrayList arrayList, AdType adType) {
            try {
                JSONObject optJSONObject = this.f7533a.optJSONObject("disable_networks");
                JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray(m.a(adType)) : null;
                if (optJSONArray == null) {
                    optJSONArray = new JSONArray();
                }
                if (optJSONArray.length() == 0) {
                    return;
                }
                HashSet hashSet = new HashSet(optJSONArray.length());
                for (int i = 0; i < optJSONArray.length(); i++) {
                    hashSet.add(optJSONArray.getString(i));
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    JSONObject jSONObject = (JSONObject) it.next();
                    String optString = jSONObject.optString("status", null);
                    String optString2 = jSONObject.optString("name", null);
                    if ((optString != null && !optString.isEmpty() && hashSet.contains(optString)) || (optString2 != null && !optString2.isEmpty() && hashSet.contains(optString2))) {
                        it.remove();
                    }
                }
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
    }
}
