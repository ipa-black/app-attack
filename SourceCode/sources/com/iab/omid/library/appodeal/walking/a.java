package com.iab.omid.library.appodeal.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.appodeal.d.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f10224a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0308a> f10225b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f10226c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f10227d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f10228e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f10229f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f10230g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private boolean f10231h;

    /* renamed from: com.iab.omid.library.appodeal.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0308a {

        /* renamed from: a  reason: collision with root package name */
        private final com.iab.omid.library.appodeal.b.c f10235a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f10236b = new ArrayList<>();

        public C0308a(com.iab.omid.library.appodeal.b.c cVar, String str) {
            this.f10235a = cVar;
            a(str);
        }

        public com.iab.omid.library.appodeal.b.c a() {
            return this.f10235a;
        }

        public void a(String str) {
            this.f10236b.add(str);
        }

        public ArrayList<String> b() {
            return this.f10236b;
        }
    }

    private void a(com.iab.omid.library.appodeal.adsession.a aVar) {
        for (com.iab.omid.library.appodeal.b.c cVar : aVar.a()) {
            a(cVar, aVar);
        }
    }

    private void a(com.iab.omid.library.appodeal.b.c cVar, com.iab.omid.library.appodeal.adsession.a aVar) {
        View view = (View) cVar.a().get();
        if (view == null) {
            return;
        }
        C0308a c0308a = this.f10225b.get(view);
        if (c0308a != null) {
            c0308a.a(aVar.getAdSessionId());
        } else {
            this.f10225b.put(view, new C0308a(cVar, aVar.getAdSessionId()));
        }
    }

    private String d(View view) {
        if (view.hasWindowFocus()) {
            HashSet hashSet = new HashSet();
            while (view != null) {
                String e2 = f.e(view);
                if (e2 != null) {
                    return e2;
                }
                hashSet.add(view);
                ViewParent parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            this.f10227d.addAll(hashSet);
            return null;
        }
        return "noWindowFocus";
    }

    public String a(View view) {
        if (this.f10224a.size() == 0) {
            return null;
        }
        String str = this.f10224a.get(view);
        if (str != null) {
            this.f10224a.remove(view);
        }
        return str;
    }

    public String a(String str) {
        return this.f10230g.get(str);
    }

    public HashSet<String> a() {
        return this.f10228e;
    }

    public View b(String str) {
        return this.f10226c.get(str);
    }

    public C0308a b(View view) {
        C0308a c0308a = this.f10225b.get(view);
        if (c0308a != null) {
            this.f10225b.remove(view);
        }
        return c0308a;
    }

    public HashSet<String> b() {
        return this.f10229f;
    }

    public c c(View view) {
        return this.f10227d.contains(view) ? c.PARENT_VIEW : this.f10231h ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void c() {
        com.iab.omid.library.appodeal.b.a a2 = com.iab.omid.library.appodeal.b.a.a();
        if (a2 != null) {
            for (com.iab.omid.library.appodeal.adsession.a aVar : a2.c()) {
                View d2 = aVar.d();
                if (aVar.e()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (d2 != null) {
                        String d3 = d(d2);
                        if (d3 == null) {
                            this.f10228e.add(adSessionId);
                            this.f10224a.put(d2, adSessionId);
                            a(aVar);
                        } else {
                            this.f10229f.add(adSessionId);
                            this.f10226c.put(adSessionId, d2);
                            this.f10230g.put(adSessionId, d3);
                        }
                    } else {
                        this.f10229f.add(adSessionId);
                        this.f10230g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void d() {
        this.f10224a.clear();
        this.f10225b.clear();
        this.f10226c.clear();
        this.f10227d.clear();
        this.f10228e.clear();
        this.f10229f.clear();
        this.f10230g.clear();
        this.f10231h = false;
    }

    public void e() {
        this.f10231h = true;
    }
}
