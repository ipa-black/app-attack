package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.Eg;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.gd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1561gd extends Eg {
    private final C1709mc m;

    /* renamed from: com.yandex.metrica.impl.ob.gd$b */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final C1790pi f14788a;

        /* renamed from: b  reason: collision with root package name */
        public final C1709mc f14789b;

        public b(C1790pi c1790pi, C1709mc c1709mc) {
            this.f14788a = c1790pi;
            this.f14789b = c1709mc;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.gd$c */
    /* loaded from: classes5.dex */
    public static class c implements Eg.d<C1561gd, b> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f14790a;

        /* renamed from: b  reason: collision with root package name */
        private final Cg f14791b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Context context, Cg cg) {
            this.f14790a = context;
            this.f14791b = cg;
        }

        @Override // com.yandex.metrica.impl.ob.Eg.d
        public C1561gd a(b bVar) {
            C1561gd c1561gd = new C1561gd(bVar.f14789b);
            Cg cg = this.f14791b;
            Context context = this.f14790a;
            cg.getClass();
            c1561gd.b(A2.a(context, context.getPackageName()));
            Cg cg2 = this.f14791b;
            Context context2 = this.f14790a;
            cg2.getClass();
            c1561gd.a(String.valueOf(A2.b(context2, context2.getPackageName())));
            c1561gd.a(bVar.f14788a);
            c1561gd.a(U.a());
            c1561gd.a(F0.g().n().a());
            c1561gd.e(this.f14790a.getPackageName());
            c1561gd.a(F0.g().r().a(this.f14790a));
            c1561gd.a(F0.g().a().a());
            return c1561gd;
        }
    }

    public List<String> A() {
        return v().x();
    }

    @Override // com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "RequestConfig{mSuitableCollectionConfig=" + this.m + "} " + super.toString();
    }

    public C1709mc z() {
        return this.m;
    }

    private C1561gd(C1709mc c1709mc) {
        this.m = c1709mc;
    }
}
