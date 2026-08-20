package com.appodeal.ads.waterfall_filter;

import android.text.TextUtils;
import com.appodeal.ads.e0;
import com.appodeal.ads.l;
import com.appodeal.ads.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b extends e {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f7886a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f7887b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f7888c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final HashMap f7889d = new HashMap();

    public b(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null && optJSONObject.has("name") && optJSONObject.has("max_requests") && optJSONObject.has("max_requests_pf") && optJSONObject.has("max_nofills")) {
                String optString = optJSONObject.optString("name");
                if (!TextUtils.isEmpty(optString)) {
                    this.f7886a.put(optString, Integer.valueOf(optJSONObject.optInt("max_requests", Integer.MAX_VALUE)));
                    this.f7887b.put(optString, Integer.valueOf(optJSONObject.optInt("max_requests_pf", Integer.MAX_VALUE)));
                    this.f7888c.put(optString, Integer.valueOf(optJSONObject.optInt("max_nofills", Integer.MAX_VALUE)));
                }
            }
        }
    }

    public final void a(CopyOnWriteArrayList copyOnWriteArrayList) {
        boolean z;
        Integer num;
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < copyOnWriteArrayList.size(); i++) {
            jSONArray.put(((l) copyOnWriteArrayList.get(i)).f6826c.getId());
        }
        int length = jSONArray.length();
        int i2 = 0;
        while (true) {
            if (i2 >= copyOnWriteArrayList.size()) {
                z = false;
                break;
            } else if (((l) copyOnWriteArrayList.get(i2)).f6826c.getRequestResult() == e0.Successful) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            length--;
        }
        for (int i3 = 0; i3 < length; i3++) {
            String optString = jSONArray.optString(i3);
            if (!TextUtils.isEmpty(optString)) {
                this.f7889d.put(optString, Integer.valueOf(((!this.f7889d.containsKey(optString) || (num = (Integer) this.f7889d.get(optString)) == null) ? 0 : num.intValue()) + 1));
            }
        }
        if (z) {
            String optString2 = jSONArray.optString(jSONArray.length() - 1);
            if (TextUtils.isEmpty(optString2)) {
                return;
            }
            this.f7889d.remove(optString2);
        }
    }

    @Override // com.appodeal.ads.waterfall_filter.e
    public final void a(ArrayList arrayList, r rVar) {
        List list;
        if (rVar != null) {
            a(rVar.f7335c);
            a(rVar.f7336d);
        }
        com.appodeal.ads.utils.campaign_frequency.b.a(arrayList);
        if (!this.f7889d.isEmpty()) {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            HashMap hashMap4 = new HashMap();
            for (Map.Entry entry : this.f7888c.entrySet()) {
                hashMap.put((String) entry.getKey(), 0);
                hashMap2.put((String) entry.getKey(), 0);
                hashMap3.put((String) entry.getKey(), new ArrayList());
                hashMap4.put((String) entry.getKey(), new ArrayList());
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                JSONObject jSONObject = (JSONObject) it.next();
                String optString = jSONObject.optString("status");
                String optString2 = jSONObject.optString("id");
                boolean optBoolean = jSONObject.optBoolean("cap", false);
                if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && this.f7888c.containsKey(optString)) {
                    Integer num = (Integer) this.f7888c.get(optString);
                    int intValue = num != null ? num.intValue() : 0;
                    Integer num2 = (Integer) this.f7889d.get(optString2);
                    if ((num2 != null ? num2.intValue() : 0) >= intValue) {
                        if (optBoolean) {
                            List list2 = (List) hashMap3.get(optString);
                            list2.add(optString2);
                            hashMap3.put(optString, list2);
                        } else {
                            List list3 = (List) hashMap4.get(optString);
                            list3.add(optString2);
                            hashMap4.put(optString, list3);
                        }
                    } else if (optBoolean) {
                        Integer num3 = (Integer) hashMap.get(optString);
                        hashMap.put(optString, Integer.valueOf((num3 != null ? num3.intValue() : 0) + 1));
                    } else {
                        Integer num4 = (Integer) hashMap2.get(optString);
                        hashMap2.put(optString, Integer.valueOf((num4 != null ? num4.intValue() : 0) + 1));
                    }
                }
            }
            for (Map.Entry entry2 : hashMap.entrySet()) {
                if (((Integer) entry2.getValue()).intValue() == 0 && (list = (List) hashMap3.get(entry2.getKey())) != null && !list.isEmpty()) {
                    this.f7889d.keySet().removeAll(list);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        HashMap hashMap5 = new HashMap(this.f7886a);
        HashMap hashMap6 = new HashMap(this.f7887b);
        while (it2.hasNext()) {
            JSONObject jSONObject2 = (JSONObject) it2.next();
            String optString3 = jSONObject2.optString("status");
            String optString4 = jSONObject2.optString("id");
            boolean optBoolean2 = jSONObject2.optBoolean("cap", false);
            if (!TextUtils.isEmpty(optString3) && !TextUtils.isEmpty(optString4) && this.f7888c.containsKey(optString3)) {
                Integer num5 = (Integer) this.f7888c.get(optString3);
                int intValue2 = num5 != null ? num5.intValue() : 0;
                Integer num6 = (Integer) this.f7889d.get(optString4);
                int intValue3 = num6 != null ? num6.intValue() : 0;
                if (!optBoolean2 || intValue3 < intValue2) {
                    if (optBoolean2 && hashMap6.containsKey(optString3)) {
                        Integer num7 = (Integer) hashMap6.get(optString3);
                        int intValue4 = num7 != null ? num7.intValue() : 0;
                        if (intValue4 > 0) {
                            hashMap6.put(optString3, Integer.valueOf(intValue4 - 1));
                        }
                    } else if (!optBoolean2 && hashMap5.containsKey(optString3)) {
                        Integer num8 = (Integer) hashMap5.get(optString3);
                        int intValue5 = num8 != null ? num8.intValue() : 0;
                        if (intValue5 > 0) {
                            hashMap5.put(optString3, Integer.valueOf(intValue5 - 1));
                        }
                    }
                }
                it2.remove();
            }
        }
    }
}
