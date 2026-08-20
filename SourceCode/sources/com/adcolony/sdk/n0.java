package com.adcolony.sdk;

import com.appnext.ads.fullscreen.RewardedVideo;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.messaging.Constants;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f431a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f432b = new ArrayList();

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f433a;

        /* renamed from: b  reason: collision with root package name */
        private final String f434b;

        /* renamed from: c  reason: collision with root package name */
        private final int f435c;

        /* renamed from: d  reason: collision with root package name */
        private final String[] f436d;

        /* renamed from: e  reason: collision with root package name */
        private final String[] f437e;

        /* renamed from: f  reason: collision with root package name */
        private final List<b> f438f = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        private final List<c> f439g = new ArrayList();

        /* renamed from: h  reason: collision with root package name */
        private final d f440h;
        private final Map<String, String> i;

        a(f1 f1Var) throws JSONException {
            this.f433a = f1Var.e("stream");
            this.f434b = f1Var.e("table_name");
            this.f435c = f1Var.a("max_rows", 10000);
            e1 l = f1Var.l("event_types");
            this.f436d = l != null ? c0.a(l) : new String[0];
            e1 l2 = f1Var.l("request_types");
            this.f437e = l2 != null ? c0.a(l2) : new String[0];
            for (f1 f1Var2 : c0.b(f1Var.c("columns"))) {
                this.f438f.add(new b(f1Var2));
            }
            for (f1 f1Var3 : c0.b(f1Var.c("indexes"))) {
                this.f439g.add(new c(f1Var3, this.f434b));
            }
            f1 n = f1Var.n(Constants.FirelogAnalytics.PARAM_TTL);
            this.f440h = n != null ? new d(n) : null;
            this.i = f1Var.m("queries").f();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int c() {
            return this.f435c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String d() {
            return this.f433a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map<String, String> e() {
            return this.i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String f() {
            return this.f434b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public d g() {
            return this.f440h;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<b> a() {
            return this.f438f;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<c> b() {
            return this.f439g;
        }
    }

    /* loaded from: classes.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f441a;

        /* renamed from: b  reason: collision with root package name */
        private final String f442b;

        /* renamed from: c  reason: collision with root package name */
        private final Object f443c;

        b(f1 f1Var) throws JSONException {
            this.f441a = f1Var.e("name");
            this.f442b = f1Var.e(SessionDescription.ATTR_TYPE);
            this.f443c = f1Var.o(RewardedVideo.VIDEO_MODE_DEFAULT);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Object a() {
            return this.f443c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String b() {
            return this.f441a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String c() {
            return this.f442b;
        }
    }

    /* loaded from: classes.dex */
    static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f444a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f445b;

        c(f1 f1Var, String str) throws JSONException {
            this.f444a = str + "_" + f1Var.e("name");
            this.f445b = c0.a(f1Var.c("columns"));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String[] a() {
            return this.f445b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String b() {
            return this.f444a;
        }
    }

    /* loaded from: classes.dex */
    static class d {

        /* renamed from: a  reason: collision with root package name */
        private final long f446a;

        /* renamed from: b  reason: collision with root package name */
        private final String f447b;

        d(f1 f1Var) throws JSONException {
            this.f446a = f1Var.d("seconds");
            this.f447b = f1Var.e("column");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String a() {
            return this.f447b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long b() {
            return this.f446a;
        }
    }

    n0(f1 f1Var) throws JSONException {
        this.f431a = f1Var.b(MediationMetaData.KEY_VERSION);
        for (f1 f1Var2 : c0.b(f1Var.c("streams"))) {
            this.f432b.add(new a(f1Var2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n0 a(f1 f1Var) {
        try {
            return new n0(f1Var);
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f431a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<a> a() {
        return this.f432b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a(String str) {
        if (str.isEmpty()) {
            return null;
        }
        for (a aVar : this.f432b) {
            for (String str2 : aVar.f436d) {
                if (str.equals(str2)) {
                    return aVar;
                }
            }
            for (String str3 : aVar.f437e) {
                if (str.equals(str3)) {
                    return aVar;
                }
            }
        }
        return null;
    }
}
