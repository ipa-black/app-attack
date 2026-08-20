package com.pgl.ssdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
/* compiled from: SDKBatteryCollector.java */
/* loaded from: classes3.dex */
public class C {

    /* renamed from: c  reason: collision with root package name */
    private static C f12151c;

    /* renamed from: a  reason: collision with root package name */
    private Context f12152a;

    /* renamed from: b  reason: collision with root package name */
    private List<Integer> f12153b = new ArrayList();

    private C(Context context) {
        this.f12152a = null;
        this.f12152a = context;
    }

    public static C a(Context context) {
        if (f12151c == null) {
            synchronized (C.class) {
                if (f12151c == null) {
                    f12151c = new C(context);
                }
            }
        }
        return f12151c;
    }

    public synchronized String b() {
        if (this.f12153b.size() <= 0) {
            return "-1";
        }
        List<Integer> list = this.f12153b;
        return String.valueOf(list.get(list.size() - 1).intValue() % 10000);
    }

    public synchronized String c() {
        return new JSONArray((Collection) this.f12153b).toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        r1 = (r1 * 10000) + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            r7 = this;
            r0 = 0
            monitor-enter(r7)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            android.content.Context r1 = r7.f12152a     // Catch: java.lang.Throwable -> L4c
            android.content.IntentFilter r2 = new android.content.IntentFilter     // Catch: java.lang.Throwable -> L4c
            java.lang.String r3 = "android.intent.action.BATTERY_CHANGED"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L4c
            r3 = 0
            android.content.Intent r1 = r1.registerReceiver(r3, r2)     // Catch: java.lang.Throwable -> L4c
            if (r1 != 0) goto L14
            r1 = r0
            goto L1a
        L14:
            java.lang.String r2 = "plugged"
            int r1 = r1.getIntExtra(r2, r0)     // Catch: java.lang.Throwable -> L4c
        L1a:
            android.content.Context r2 = r7.f12152a     // Catch: java.lang.Throwable -> L4a
            android.content.IntentFilter r4 = new android.content.IntentFilter     // Catch: java.lang.Throwable -> L4a
            java.lang.String r5 = "android.intent.action.BATTERY_CHANGED"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L4a
            android.content.Intent r2 = r2.registerReceiver(r3, r4)     // Catch: java.lang.Throwable -> L4a
            if (r2 != 0) goto L2a
            goto L45
        L2a:
            java.lang.String r3 = "level"
            int r3 = r2.getIntExtra(r3, r0)     // Catch: java.lang.Throwable -> L4a
            java.lang.String r4 = "scale"
            int r0 = r2.getIntExtra(r4, r0)     // Catch: java.lang.Throwable -> L4a
            float r2 = (float) r3     // Catch: java.lang.Throwable -> L4a
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L4a
            float r2 = r2 / r0
            r0 = 1120403456(0x42c80000, float:100.0)
            float r2 = r2 * r0
            r0 = 1092616192(0x41200000, float:10.0)
            float r2 = r2 * r0
            int r0 = java.lang.Math.round(r2)     // Catch: java.lang.Throwable -> L4a
            int r0 = r0 / 10
        L45:
            monitor-exit(r7)
            int r1 = r1 * 10000
            int r1 = r1 + r0
            goto L58
        L4a:
            r0 = move-exception
            goto L50
        L4c:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L50:
            monitor-exit(r7)
            throw r0     // Catch: java.lang.Exception -> L52 java.lang.Throwable -> L54
        L52:
            r0 = r1
            goto L56
        L54:
            r0 = move-exception
            throw r0
        L56:
            int r1 = r0 * 10000
        L58:
            r0 = -1
            if (r1 != r0) goto L5c
            return
        L5c:
            java.util.List<java.lang.Integer> r0 = r7.f12153b
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.add(r1)
            java.util.List<java.lang.Integer> r0 = r7.f12153b     // Catch: java.lang.Throwable -> L83
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L83
            r1 = 20
            if (r0 <= r1) goto L83
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L83
            java.util.List<java.lang.Integer> r2 = r7.f12153b     // Catch: java.lang.Throwable -> L83
            int r3 = r0 + (-10)
            java.util.List r0 = r2.subList(r3, r0)     // Catch: java.lang.Throwable -> L83
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L83
            java.util.List<java.lang.Integer> r0 = r7.f12153b     // Catch: java.lang.Throwable -> L83
            r0.clear()     // Catch: java.lang.Throwable -> L83
            r7.f12153b = r1     // Catch: java.lang.Throwable -> L83
        L83:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.C.a():void");
    }
}
