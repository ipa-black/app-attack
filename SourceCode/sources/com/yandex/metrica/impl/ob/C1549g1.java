package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.res.Configuration;
import android.os.LocaleList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.g1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1549g1 {

    /* renamed from: c  reason: collision with root package name */
    private static volatile C1549g1 f14768c;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f14769d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private List<String> f14770a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f14771b = new ArrayList();

    /* renamed from: com.yandex.metrica.impl.ob.g1$a */
    /* loaded from: classes5.dex */
    public interface a {
        void a();
    }

    C1549g1(Context context) {
        synchronized (this) {
            this.f14770a = a(context.getResources().getConfiguration());
        }
    }

    public static C1549g1 a(Context context) {
        if (f14768c == null) {
            synchronized (f14769d) {
                if (f14768c == null) {
                    f14768c = new C1549g1(context.getApplicationContext());
                }
            }
        }
        return f14768c;
    }

    public void b(Configuration configuration) {
        ArrayList arrayList;
        synchronized (this) {
            this.f14770a = a(configuration);
            arrayList = new ArrayList(this.f14771b);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
    }

    public List<String> a() {
        return this.f14770a;
    }

    public synchronized void a(a aVar) {
        this.f14771b.add(aVar);
    }

    private List<String> a(Configuration configuration) {
        if (A2.a(24)) {
            ArrayList arrayList = new ArrayList();
            LocaleList locales = configuration.getLocales();
            if (locales != null) {
                Intrinsics.checkNotNullExpressionValue(locales, "configuration.locales ?: return result");
                int size = locales.size();
                for (int i = 0; i < size; i++) {
                    Locale locale = locales.get(i);
                    if (locale != null) {
                        String a2 = H1.a(locale);
                        Intrinsics.checkNotNullExpressionValue(a2, "PhoneUtils.normalizedLocale(it)");
                        arrayList.add(a2);
                    }
                }
            }
            return arrayList;
        }
        return Collections.singletonList(H1.a(configuration.locale));
    }
}
