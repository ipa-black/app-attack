package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Pk {

    /* renamed from: a  reason: collision with root package name */
    private final List<Pk> f13721a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final C1840rl f13722b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final int f13723a;

        /* renamed from: b  reason: collision with root package name */
        final int f13724b;

        /* renamed from: c  reason: collision with root package name */
        final JSONObject f13725c;

        a(int i, int i2, JSONObject jSONObject) {
            this.f13723a = i;
            this.f13724b = i2;
            this.f13725c = jSONObject;
        }
    }

    public Pk(C1840rl c1840rl) {
        this.f13722b = c1840rl;
    }

    public void a(Pk pk) {
        this.f13721a.add(pk);
    }

    public C1840rl a() {
        return this.f13722b;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|2|3|(9:8|(1:13)|17|18|19|20|(5:25|(5:28|(1:30)|31|(2:34|35)(1:33)|26)|39|36|37)|40|41)|44|(2:10|13)|17|18|19|20|(6:22|25|(1:26)|39|36|37)|40|41) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0029, code lost:
        if (r5 == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
        r0 = r7.f13722b.a(r8, r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005c A[Catch: all -> 0x0081, TryCatch #1 {all -> 0x0081, blocks: (B:20:0x003b, B:22:0x004b, B:25:0x0050, B:26:0x0056, B:28:0x005c, B:30:0x006c, B:31:0x006f, B:34:0x0074, B:35:0x0079), top: B:43:0x003b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.yandex.metrica.impl.ob.Pk.a a(com.yandex.metrica.impl.ob.C1594hl r8, com.yandex.metrica.impl.ob.Ak r9, int r10, int r11) {
        /*
            r7 = this;
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            int r1 = r11 + 1
            com.yandex.metrica.impl.ob.rl r2 = r7.f13722b     // Catch: java.lang.Throwable -> L80
            com.yandex.metrica.impl.ob.rl$b r2 = r2.a(r9)     // Catch: java.lang.Throwable -> L80
            boolean r3 = r8.f14881f     // Catch: java.lang.Throwable -> L80
            r4 = 0
            r5 = 1
            if (r3 != 0) goto L1e
            com.yandex.metrica.impl.ob.rl r3 = r7.f13722b     // Catch: java.lang.Throwable -> L80
            boolean r3 = r3.a()     // Catch: java.lang.Throwable -> L80
            if (r3 == 0) goto L1c
            goto L1e
        L1c:
            r3 = r4
            goto L1f
        L1e:
            r3 = r5
        L1f:
            if (r2 == 0) goto L27
            boolean r6 = r8.i     // Catch: java.lang.Throwable -> L80
            if (r6 != 0) goto L26
            goto L27
        L26:
            r5 = r4
        L27:
            if (r3 == 0) goto L31
            if (r5 == 0) goto L31
            com.yandex.metrica.impl.ob.rl r3 = r7.f13722b     // Catch: java.lang.Throwable -> L80
            org.json.JSONObject r0 = r3.a(r8, r2)     // Catch: java.lang.Throwable -> L80
        L31:
            java.lang.String r2 = r0.toString()     // Catch: java.lang.Throwable -> L80
            byte[] r2 = r2.getBytes()     // Catch: java.lang.Throwable -> L80
            int r2 = r2.length     // Catch: java.lang.Throwable -> L80
            int r2 = r2 + r10
            org.json.JSONArray r3 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L81
            r3.<init>()     // Catch: java.lang.Throwable -> L81
            java.lang.String r5 = "ch"
            r0.put(r5, r3)     // Catch: java.lang.Throwable -> L81
            int r2 = r2 + 8
            int r5 = r8.n     // Catch: java.lang.Throwable -> L81
            if (r2 > r5) goto L79
            int r5 = r8.m     // Catch: java.lang.Throwable -> L81
            if (r1 <= r5) goto L50
            goto L79
        L50:
            java.util.List<com.yandex.metrica.impl.ob.Pk> r4 = r7.f13721a     // Catch: java.lang.Throwable -> L81
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L81
        L56:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L81
            if (r5 == 0) goto L81
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L81
            com.yandex.metrica.impl.ob.Pk r5 = (com.yandex.metrica.impl.ob.Pk) r5     // Catch: java.lang.Throwable -> L81
            int r6 = r2 + 1
            com.yandex.metrica.impl.ob.Pk$a r5 = r5.a(r8, r9, r6, r1)     // Catch: java.lang.Throwable -> L81
            org.json.JSONObject r6 = r5.f13725c     // Catch: java.lang.Throwable -> L81
            if (r6 == 0) goto L6f
            r3.put(r6)     // Catch: java.lang.Throwable -> L81
        L6f:
            int r6 = r5.f13723a     // Catch: java.lang.Throwable -> L81
            if (r6 != 0) goto L74
            goto L81
        L74:
            int r5 = r5.f13724b     // Catch: java.lang.Throwable -> L81
            int r1 = r1 + r5
            int r2 = r2 + r6
            goto L56
        L79:
            com.yandex.metrica.impl.ob.Pk$a r8 = new com.yandex.metrica.impl.ob.Pk$a     // Catch: java.lang.Throwable -> L81
            r9 = 0
            r8.<init>(r4, r4, r9)     // Catch: java.lang.Throwable -> L81
            return r8
        L80:
            r2 = r10
        L81:
            com.yandex.metrica.impl.ob.Pk$a r8 = new com.yandex.metrica.impl.ob.Pk$a
            int r2 = r2 - r10
            int r1 = r1 - r11
            r8.<init>(r2, r1, r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Pk.a(com.yandex.metrica.impl.ob.hl, com.yandex.metrica.impl.ob.Ak, int, int):com.yandex.metrica.impl.ob.Pk$a");
    }
}
