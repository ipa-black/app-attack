package com.iab.omid.library.applovin.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.applovin.internal.e;
import com.iab.omid.library.applovin.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f10117a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0305a> f10118b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f10119c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f10120d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f10121e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f10122f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f10123g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final Map<View, Boolean> f10124h = new WeakHashMap();
    private boolean i;

    /* renamed from: com.iab.omid.library.applovin.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0305a {

        /* renamed from: a  reason: collision with root package name */
        private final e f10125a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f10126b = new ArrayList<>();

        public C0305a(e eVar, String str) {
            this.f10125a = eVar;
            a(str);
        }

        public e a() {
            return this.f10125a;
        }

        public void a(String str) {
            this.f10126b.add(str);
        }

        public ArrayList<String> b() {
            return this.f10126b;
        }
    }

    private String a(View view) {
        if (view.isAttachedToWindow()) {
            if (b(view).booleanValue()) {
                return "noWindowFocus";
            }
            HashSet hashSet = new HashSet();
            while (view != null) {
                String a2 = h.a(view);
                if (a2 != null) {
                    return a2;
                }
                hashSet.add(view);
                ViewParent parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            this.f10120d.addAll(hashSet);
            return null;
        }
        return "notAttached";
    }

    private void a(com.iab.omid.library.applovin.adsession.a aVar) {
        for (e eVar : aVar.d()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.applovin.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0305a c0305a = this.f10118b.get(view);
        if (c0305a != null) {
            c0305a.a(aVar.getAdSessionId());
        } else {
            this.f10118b.put(view, new C0305a(eVar, aVar.getAdSessionId()));
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f10124h.remove(view);
            return Boolean.FALSE;
        } else if (this.f10124h.containsKey(view)) {
            return this.f10124h.get(view);
        } else {
            Map<View, Boolean> map = this.f10124h;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public View a(String str) {
        return this.f10119c.get(str);
    }

    public void a() {
        this.f10117a.clear();
        this.f10118b.clear();
        this.f10119c.clear();
        this.f10120d.clear();
        this.f10121e.clear();
        this.f10122f.clear();
        this.f10123g.clear();
        this.i = false;
    }

    public String b(String str) {
        return this.f10123g.get(str);
    }

    public HashSet<String> b() {
        return this.f10122f;
    }

    public C0305a c(View view) {
        C0305a c0305a = this.f10118b.get(view);
        if (c0305a != null) {
            this.f10118b.remove(view);
        }
        return c0305a;
    }

    public HashSet<String> c() {
        return this.f10121e;
    }

    public String d(View view) {
        if (this.f10117a.size() == 0) {
            return null;
        }
        String str = this.f10117a.get(view);
        if (str != null) {
            this.f10117a.remove(view);
        }
        return str;
    }

    public void d() {
        this.i = true;
    }

    public c e(View view) {
        return this.f10120d.contains(view) ? c.PARENT_VIEW : this.i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.applovin.internal.c c2 = com.iab.omid.library.applovin.internal.c.c();
        if (c2 != null) {
            for (com.iab.omid.library.applovin.adsession.a aVar : c2.a()) {
                View c3 = aVar.c();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (c3 != null) {
                        String a2 = a(c3);
                        if (a2 == null) {
                            this.f10121e.add(adSessionId);
                            this.f10117a.put(c3, adSessionId);
                            a(aVar);
                        } else if (a2 != "noWindowFocus") {
                            this.f10122f.add(adSessionId);
                            this.f10119c.put(adSessionId, c3);
                            this.f10123g.put(adSessionId, a2);
                        }
                    } else {
                        this.f10122f.add(adSessionId);
                        this.f10123g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public boolean f(View view) {
        if (this.f10124h.containsKey(view)) {
            this.f10124h.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }
}
