package com.iab.omid.library.ironsrc.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.ironsrc.d.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f10447a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0314a> f10448b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f10449c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f10450d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f10451e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f10452f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f10453g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private boolean f10454h;

    /* renamed from: com.iab.omid.library.ironsrc.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0314a {

        /* renamed from: a  reason: collision with root package name */
        private final com.iab.omid.library.ironsrc.b.c f10455a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f10456b = new ArrayList<>();

        public C0314a(com.iab.omid.library.ironsrc.b.c cVar, String str) {
            this.f10455a = cVar;
            a(str);
        }

        public com.iab.omid.library.ironsrc.b.c a() {
            return this.f10455a;
        }

        public void a(String str) {
            this.f10456b.add(str);
        }

        public ArrayList<String> b() {
            return this.f10456b;
        }
    }

    private void a(com.iab.omid.library.ironsrc.adsession.a aVar) {
        for (com.iab.omid.library.ironsrc.b.c cVar : aVar.a()) {
            a(cVar, aVar);
        }
    }

    private void a(com.iab.omid.library.ironsrc.b.c cVar, com.iab.omid.library.ironsrc.adsession.a aVar) {
        View view = (View) cVar.a().get();
        if (view == null) {
            return;
        }
        C0314a c0314a = this.f10448b.get(view);
        if (c0314a != null) {
            c0314a.a(aVar.getAdSessionId());
        } else {
            this.f10448b.put(view, new C0314a(cVar, aVar.getAdSessionId()));
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
            this.f10450d.addAll(hashSet);
            return null;
        }
        return "noWindowFocus";
    }

    public String a(View view) {
        if (this.f10447a.size() == 0) {
            return null;
        }
        String str = this.f10447a.get(view);
        if (str != null) {
            this.f10447a.remove(view);
        }
        return str;
    }

    public String a(String str) {
        return this.f10453g.get(str);
    }

    public HashSet<String> a() {
        return this.f10451e;
    }

    public View b(String str) {
        return this.f10449c.get(str);
    }

    public C0314a b(View view) {
        C0314a c0314a = this.f10448b.get(view);
        if (c0314a != null) {
            this.f10448b.remove(view);
        }
        return c0314a;
    }

    public HashSet<String> b() {
        return this.f10452f;
    }

    public c c(View view) {
        return this.f10450d.contains(view) ? c.PARENT_VIEW : this.f10454h ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void c() {
        com.iab.omid.library.ironsrc.b.a a2 = com.iab.omid.library.ironsrc.b.a.a();
        if (a2 != null) {
            for (com.iab.omid.library.ironsrc.adsession.a aVar : a2.c()) {
                View d2 = aVar.d();
                if (aVar.e()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (d2 != null) {
                        String d3 = d(d2);
                        if (d3 == null) {
                            this.f10451e.add(adSessionId);
                            this.f10447a.put(d2, adSessionId);
                            a(aVar);
                        } else {
                            this.f10452f.add(adSessionId);
                            this.f10449c.put(adSessionId, d2);
                            this.f10453g.put(adSessionId, d3);
                        }
                    } else {
                        this.f10452f.add(adSessionId);
                        this.f10453g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void d() {
        this.f10447a.clear();
        this.f10448b.clear();
        this.f10449c.clear();
        this.f10450d.clear();
        this.f10451e.clear();
        this.f10452f.clear();
        this.f10453g.clear();
        this.f10454h = false;
    }

    public void e() {
        this.f10454h = true;
    }
}
