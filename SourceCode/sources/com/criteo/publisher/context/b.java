package com.criteo.publisher.context;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.criteo.publisher.context.a;
import com.criteo.publisher.n0.m;
import com.criteo.publisher.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: ContextProvider.kt */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8706a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.context.a f8707b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.c f8708c;

    /* renamed from: d  reason: collision with root package name */
    private final z f8709d;

    static {
        new a(null);
    }

    public b(Context context, com.criteo.publisher.context.a connectionTypeFetcher, com.criteo.publisher.n0.c androidUtil, z session) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(connectionTypeFetcher, "connectionTypeFetcher");
        Intrinsics.checkParameterIsNotNull(androidUtil, "androidUtil");
        Intrinsics.checkParameterIsNotNull(session, "session");
        this.f8706a = context;
        this.f8707b = connectionTypeFetcher;
        this.f8708c = androidUtil;
        this.f8709d = session;
    }

    public String c() {
        String str = Build.MANUFACTURER;
        if (!Intrinsics.areEqual(str, "unknown")) {
            return str;
        }
        return null;
    }

    public String d() {
        String str = Build.MODEL;
        if (!Intrinsics.areEqual(str, "unknown")) {
            return str;
        }
        return null;
    }

    public Integer a() {
        a.EnumC0245a b2 = this.f8707b.b();
        if (b2 != null) {
            return Integer.valueOf(b2.a());
        }
        return null;
    }

    public String k() {
        List<Locale> h2 = h();
        ArrayList arrayList = new ArrayList();
        for (Locale locale : h2) {
            String it = locale.getCountry();
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (!(!StringsKt.isBlank(it))) {
                it = null;
            }
            if (it != null) {
                arrayList.add(it);
            }
        }
        return (String) CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
    }

    public List<String> l() {
        List<Locale> h2 = h();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = h2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String it2 = ((Locale) it.next()).getLanguage();
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            String str = StringsKt.isBlank(it2) ^ true ? it2 : null;
            if (str != null) {
                arrayList.add(str);
            }
        }
        List<String> distinct = CollectionsKt.distinct(arrayList);
        if (!distinct.isEmpty()) {
            return distinct;
        }
        return null;
    }

    private List<Locale> h() {
        Resources system = Resources.getSystem();
        Intrinsics.checkExpressionValueIsNotNull(system, "Resources.getSystem()");
        LocaleListCompat locales = ConfigurationCompat.getLocales(system.getConfiguration());
        Intrinsics.checkExpressionValueIsNotNull(locales, "ConfigurationCompat.getL…etSystem().configuration)");
        int size = locales.size();
        Locale[] localeArr = new Locale[size];
        for (int i = 0; i < size; i++) {
            localeArr[i] = locales.get(i);
        }
        return ArraysKt.toList(localeArr);
    }

    public Integer g() {
        Point f2 = f();
        if (f2 != null) {
            return Integer.valueOf(f2.x);
        }
        return null;
    }

    public Integer b() {
        Point f2 = f();
        if (f2 != null) {
            return Integer.valueOf(f2.y);
        }
        return null;
    }

    private Point f() {
        Point point = new Point();
        Object systemService = this.f8706a.getSystemService("window");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        ((WindowManager) systemService).getDefaultDisplay().getRealSize(point);
        return point;
    }

    public String e() {
        int a2 = this.f8708c.a();
        if (a2 != 1) {
            if (a2 != 2) {
                return null;
            }
            return "Landscape";
        }
        return "Portrait";
    }

    public Integer i() {
        return Integer.valueOf(this.f8709d.a());
    }

    public Map<String, Object> j() {
        return m.a(MapsKt.mapOf(TuplesKt.to("device.make", c()), TuplesKt.to("device.model", d()), TuplesKt.to("device.contype", a()), TuplesKt.to("device.w", g()), TuplesKt.to("device.h", b()), TuplesKt.to("data.orientation", e()), TuplesKt.to("user.geo.country", k()), TuplesKt.to("data.inputLanguage", l()), TuplesKt.to("data.sessionDuration", i())));
    }

    /* compiled from: ContextProvider.kt */
    /* loaded from: classes2.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
