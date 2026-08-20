package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.yandex.metrica.impl.ob.Eg;
import java.util.List;
/* loaded from: classes5.dex */
public class Hg extends Eg {
    private String m;
    private String n;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static abstract class a<T extends Hg, A extends Eg.a> extends Eg.b<T, A> {

        /* renamed from: c  reason: collision with root package name */
        private final C1720mn f13050c;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Context context, String str) {
            this(context, str, new C1720mn());
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.yandex.metrica.impl.ob.Eg] */
        public T a(Eg.c<A> cVar) {
            ?? a2 = a();
            a2.a(U.a());
            C1450c2 a3 = F0.g().n().a();
            a2.a(a3);
            a2.a(cVar.f12890a);
            String str = cVar.f12891b.f12885a;
            if (str == null) {
                str = a3.a() != null ? a3.a().a() : null;
            }
            a2.c(str);
            String str2 = this.f12889b;
            String str3 = cVar.f12891b.f12886b;
            Context context = this.f12888a;
            if (TextUtils.isEmpty(str3)) {
                str3 = A2.a(context, str2);
            }
            a2.b(str3);
            String str4 = this.f12889b;
            String str5 = cVar.f12891b.f12887c;
            Context context2 = this.f12888a;
            if (TextUtils.isEmpty(str5)) {
                str5 = String.valueOf(A2.b(context2, str4));
            }
            a2.a(str5);
            a2.e(this.f12889b);
            a2.a(F0.g().r().a(this.f12888a));
            a2.a(F0.g().a().a());
            List<String> a4 = C1549g1.a(this.f12888a).a();
            a2.d(a4.isEmpty() ? null : a4.get(0));
            T t = (T) a2;
            String packageName = this.f12888a.getPackageName();
            ApplicationInfo a5 = this.f13050c.a(this.f12888a, this.f12889b, 0);
            String str6 = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
            if (a5 != null) {
                t.f((a5.flags & 2) != 0 ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
                if ((a5.flags & 1) == 0) {
                    str6 = "0";
                }
                t.g(str6);
            } else if (TextUtils.equals(packageName, this.f12889b)) {
                t.f((this.f12888a.getApplicationInfo().flags & 2) != 0 ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
                if ((this.f12888a.getApplicationInfo().flags & 1) == 0) {
                    str6 = "0";
                }
                t.g(str6);
            } else {
                t.f("0");
                t.g("0");
            }
            return t;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Context context, String str, C1720mn c1720mn) {
            super(context, str);
            this.f13050c = c1720mn;
        }
    }

    public String A() {
        return this.n;
    }

    void f(String str) {
        this.m = str;
    }

    void g(String str) {
        this.n = str;
    }

    @Override // com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "CoreRequestConfig{mAppDebuggable='" + this.m + "', mAppSystem='" + this.n + "'} " + super.toString();
    }

    public String z() {
        return this.m;
    }
}
