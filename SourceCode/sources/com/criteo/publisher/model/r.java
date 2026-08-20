package com.criteo.publisher.model;

import java.util.List;
/* compiled from: CdbResponse.java */
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final List<s> f9161a;

    /* renamed from: b  reason: collision with root package name */
    private final int f9162b;

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f9163c;

    public r(List<s> list, int i, Boolean bool) {
        this.f9161a = list;
        this.f9162b = i;
        this.f9163c = bool;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.criteo.publisher.model.r a(org.json.JSONObject r7) {
        /*
            java.lang.Class<com.criteo.publisher.model.r> r0 = com.criteo.publisher.model.r.class
            com.criteo.publisher.logging.g r0 = com.criteo.publisher.logging.h.b(r0)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r2 = "timeToNextCall"
            boolean r3 = r7.has(r2)
            r4 = 0
            if (r3 == 0) goto L32
            int r2 = r7.getInt(r2)     // Catch: org.json.JSONException -> L19
            goto L33
        L19:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r5 = "Exception while reading cdb time to next call"
            r3.<init>(r5)
            java.lang.String r2 = r2.getMessage()
            java.lang.StringBuilder r2 = r3.append(r2)
            java.lang.String r2 = r2.toString()
            java.lang.Object[] r3 = new java.lang.Object[r4]
            r0.a(r2, r3)
        L32:
            r2 = r4
        L33:
            java.lang.String r3 = "slots"
            boolean r5 = r7.has(r3)
            if (r5 == 0) goto L66
            org.json.JSONArray r5 = new org.json.JSONArray
            r5.<init>()
            org.json.JSONArray r5 = r7.getJSONArray(r3)     // Catch: org.json.JSONException -> L45
            goto L4b
        L45:
            r3 = move-exception
            java.lang.String r6 = "Exception while reading slots array"
            r0.a(r6, r3)
        L4b:
            int r3 = r5.length()
            if (r4 >= r3) goto L66
            org.json.JSONObject r3 = r5.getJSONObject(r4)     // Catch: java.lang.Exception -> L5d
            com.criteo.publisher.model.s r3 = com.criteo.publisher.model.s.a(r3)     // Catch: java.lang.Exception -> L5d
            r1.add(r3)     // Catch: java.lang.Exception -> L5d
            goto L63
        L5d:
            r3 = move-exception
            java.lang.String r6 = "Exception while reading slot from slots array"
            r0.a(r6, r3)
        L63:
            int r4 = r4 + 1
            goto L4b
        L66:
            java.lang.String r3 = "consentGiven"
            boolean r4 = r7.has(r3)
            if (r4 == 0) goto L7d
            boolean r7 = r7.getBoolean(r3)     // Catch: org.json.JSONException -> L77
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: org.json.JSONException -> L77
            goto L7e
        L77:
            r7 = move-exception
            java.lang.String r3 = "Exception while reading consentGiven"
            r0.a(r3, r7)
        L7d:
            r7 = 0
        L7e:
            com.criteo.publisher.model.r r0 = new com.criteo.publisher.model.r
            r0.<init>(r1, r2, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.r.a(org.json.JSONObject):com.criteo.publisher.model.r");
    }

    public List<s> b() {
        return this.f9161a;
    }

    public int c() {
        return this.f9162b;
    }

    public Boolean a() {
        return this.f9163c;
    }

    public s a(String str) {
        for (s sVar : this.f9161a) {
            if (str.equals(sVar.f())) {
                return sVar;
            }
        }
        return null;
    }

    public String toString() {
        return "CdbResponse{slots=" + this.f9161a + ", timeToNextCall=" + this.f9162b + ", consentGiven = " + this.f9163c + '}';
    }
}
