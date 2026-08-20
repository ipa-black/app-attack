package com.apm.insight.k;

import com.apm.insight.CrashType;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentLinkedQueue<c> f938a = new ConcurrentLinkedQueue<>();

    /* renamed from: com.apm.insight.k.c$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f939a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f939a = iArr;
            try {
                iArr[CrashType.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f939a[CrashType.LAUNCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f939a[CrashType.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private JSONObject f940a;

        /* renamed from: b  reason: collision with root package name */
        private JSONObject f941b;

        /* renamed from: c  reason: collision with root package name */
        private CrashType f942c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(JSONObject jSONObject, CrashType crashType) {
            this.f942c = crashType;
            if (crashType == CrashType.LAUNCH) {
                this.f940a = ((JSONArray) jSONObject.opt("data")).optJSONObject(0);
            } else {
                this.f940a = jSONObject;
            }
            this.f941b = jSONObject.optJSONObject("header");
        }

        public String a() {
            return this.f940a.optString("crash_thread_name", null);
        }

        public long b() {
            return this.f940a.optInt("app_start_time", -1);
        }

        public String c() {
            int i = AnonymousClass1.f939a[this.f942c.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return this.f940a.optString("data", null);
                }
                return this.f940a.optString("stack", null);
            }
            return this.f940a.optString("data", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CrashType crashType, JSONObject jSONObject) {
        ConcurrentLinkedQueue<c> concurrentLinkedQueue = f938a;
        if (concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
            return;
        }
        a aVar = new a(jSONObject, crashType);
        while (!f938a.isEmpty()) {
            c poll = f938a.poll();
            if (poll != null) {
                poll.a(crashType, aVar);
            }
        }
        f938a = null;
    }

    public abstract void a(CrashType crashType, a aVar);
}
