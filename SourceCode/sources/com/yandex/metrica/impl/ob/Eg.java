package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
/* loaded from: classes5.dex */
public class Eg {

    /* renamed from: a  reason: collision with root package name */
    private String f12877a;

    /* renamed from: b  reason: collision with root package name */
    private U f12878b;

    /* renamed from: c  reason: collision with root package name */
    private C1450c2 f12879c;

    /* renamed from: d  reason: collision with root package name */
    private final String f12880d = y();

    /* renamed from: e  reason: collision with root package name */
    private String f12881e = C1575h2.a();

    /* renamed from: f  reason: collision with root package name */
    private String f12882f;

    /* renamed from: g  reason: collision with root package name */
    private String f12883g;

    /* renamed from: h  reason: collision with root package name */
    private Ab f12884h;
    private C2022zb i;
    private String j;
    private String k;
    private C1790pi l;

    /* loaded from: classes5.dex */
    public static abstract class a<I, O> implements Dg<I, O> {

        /* renamed from: a  reason: collision with root package name */
        public final String f12885a;

        /* renamed from: b  reason: collision with root package name */
        public final String f12886b;

        /* renamed from: c  reason: collision with root package name */
        public final String f12887c;

        public a(String str, String str2, String str3) {
            this.f12885a = str;
            this.f12886b = str2;
            this.f12887c = str3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static abstract class b<T extends Eg, A extends a> implements d<T, c<A>> {

        /* renamed from: a  reason: collision with root package name */
        final Context f12888a;

        /* renamed from: b  reason: collision with root package name */
        final String f12889b;

        /* JADX INFO: Access modifiers changed from: protected */
        public b(Context context, String str) {
            this.f12888a = context;
            this.f12889b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract T a();
    }

    /* loaded from: classes5.dex */
    public static class c<A> {

        /* renamed from: a  reason: collision with root package name */
        public final C1790pi f12890a;

        /* renamed from: b  reason: collision with root package name */
        public final A f12891b;

        public c(C1790pi c1790pi, A a2) {
            this.f12890a = c1790pi;
            this.f12891b = a2;
        }
    }

    /* loaded from: classes5.dex */
    public interface d<T extends Eg, D> {
        T a(D d2);
    }

    private static String y() {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty("public")) {
            sb.append("public");
        }
        if (!TextUtils.isEmpty("binary")) {
            sb.append("_binary");
        }
        if (!TextUtils.isEmpty("")) {
            sb.append("_");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(U u) {
        this.f12878b = u;
    }

    public String b() {
        String str = this.f12883g;
        return str == null ? "" : str;
    }

    public String c() {
        return this.f12881e;
    }

    public synchronized String d() {
        String a2;
        Ab ab = this.f12884h;
        a2 = ab == null ? null : ab.a();
        if (a2 == null) {
            a2 = "";
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(String str) {
        this.f12877a = str;
    }

    public String f() {
        String str = this.f12882f;
        return str == null ? "" : str;
    }

    public synchronized String g() {
        String i;
        i = this.l.i();
        if (i == null) {
            i = "";
        }
        return i;
    }

    public String h() {
        return this.f12878b.f13989e;
    }

    public String i() {
        String str = this.j;
        return str == null ? com.yandex.metrica.b.PHONE.a() : str;
    }

    public String j() {
        return this.f12880d;
    }

    public String k() {
        String str = this.k;
        return str == null ? "" : str;
    }

    public String l() {
        String str = this.f12878b.f13985a;
        return str == null ? "" : str;
    }

    public String m() {
        return this.f12878b.f13986b;
    }

    public int n() {
        return this.f12878b.f13988d;
    }

    public String o() {
        return this.f12878b.f13987c;
    }

    public String p() {
        return this.f12877a;
    }

    public RetryPolicyConfig q() {
        return this.l.J();
    }

    public float r() {
        return this.f12879c.d();
    }

    public int s() {
        return this.f12879c.b();
    }

    public int t() {
        return this.f12879c.c();
    }

    public String toString() {
        return "BaseRequestConfig{mPackageName='" + this.f12877a + "', mConstantDeviceInfo=" + this.f12878b + ", screenInfo=" + this.f12879c + ", mSdkVersionName='5.3.0', mSdkBuildNumber='45003240', mSdkBuildType='" + this.f12880d + "', mAppPlatform='android', mProtocolVersion='2', mAppFramework='" + this.f12881e + "', mCommitHash='a72bf6f57701ed3c2b8ed570054febbff4e58c12', mAppVersion='" + this.f12882f + "', mAppBuildNumber='" + this.f12883g + "', appSetId=" + this.f12884h + ", mAdvertisingIdsHolder=" + this.i + ", mDeviceType='" + this.j + "', mLocale='" + this.k + "', mStartupState=" + this.l + '}';
    }

    public int u() {
        return this.f12879c.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C1790pi v() {
        return this.l;
    }

    public synchronized String w() {
        String V;
        V = this.l.V();
        if (V == null) {
            V = "";
        }
        return V;
    }

    public synchronized boolean x() {
        return C1740ni.a(this.l);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(C1450c2 c1450c2) {
        this.f12879c = c1450c2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f12882f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.j = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(String str) {
        this.k = str;
    }

    public synchronized String e() {
        String a2;
        Ab ab = this.f12884h;
        a2 = ab == null ? null : ab.b().a();
        if (a2 == null) {
            a2 = "";
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(C1790pi c1790pi) {
        this.l = c1790pi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f12883g = str;
    }

    public synchronized void a(Ab ab) {
        this.f12884h = ab;
    }

    public C2022zb a() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(C2022zb c2022zb) {
        this.i = c2022zb;
    }
}
