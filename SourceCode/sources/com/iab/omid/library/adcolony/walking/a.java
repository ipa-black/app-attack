package com.iab.omid.library.adcolony.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.adcolony.d.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f9896a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0299a> f9897b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f9898c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f9899d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f9900e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f9901f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f9902g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final Map<View, Boolean> f9903h = new WeakHashMap();
    private boolean i;

    /* renamed from: com.iab.omid.library.adcolony.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0299a {

        /* renamed from: a  reason: collision with root package name */
        private final com.iab.omid.library.adcolony.b.c f9907a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f9908b = new ArrayList<>();

        public C0299a(com.iab.omid.library.adcolony.b.c cVar, String str) {
            this.f9907a = cVar;
            a(str);
        }

        public com.iab.omid.library.adcolony.b.c a() {
            return this.f9907a;
        }

        public void a(String str) {
            this.f9908b.add(str);
        }

        public ArrayList<String> b() {
            return this.f9908b;
        }
    }

    private void a(com.iab.omid.library.adcolony.adsession.a aVar) {
        for (com.iab.omid.library.adcolony.b.c cVar : aVar.a()) {
            a(cVar, aVar);
        }
    }

    private void a(com.iab.omid.library.adcolony.b.c cVar, com.iab.omid.library.adcolony.adsession.a aVar) {
        View view = cVar.a().get();
        if (view == null) {
            return;
        }
        C0299a c0299a = this.f9897b.get(view);
        if (c0299a != null) {
            c0299a.a(aVar.getAdSessionId());
        } else {
            this.f9897b.put(view, new C0299a(cVar, aVar.getAdSessionId()));
        }
    }

    private String e(View view) {
        if (view.isAttachedToWindow()) {
            if (f(view).booleanValue()) {
                return "noWindowFocus";
            }
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
            this.f9899d.addAll(hashSet);
            return null;
        }
        return "notAttached";
    }

    private Boolean f(View view) {
        if (view.hasWindowFocus()) {
            this.f9903h.remove(view);
            return Boolean.FALSE;
        } else if (this.f9903h.containsKey(view)) {
            return this.f9903h.get(view);
        } else {
            Map<View, Boolean> map = this.f9903h;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public String a(View view) {
        if (this.f9896a.size() == 0) {
            return null;
        }
        String str = this.f9896a.get(view);
        if (str != null) {
            this.f9896a.remove(view);
        }
        return str;
    }

    public String a(String str) {
        return this.f9902g.get(str);
    }

    public HashSet<String> a() {
        return this.f9900e;
    }

    public View b(String str) {
        return this.f9898c.get(str);
    }

    public C0299a b(View view) {
        C0299a c0299a = this.f9897b.get(view);
        if (c0299a != null) {
            this.f9897b.remove(view);
        }
        return c0299a;
    }

    public HashSet<String> b() {
        return this.f9901f;
    }

    public c c(View view) {
        return this.f9899d.contains(view) ? c.PARENT_VIEW : this.i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void c() {
        com.iab.omid.library.adcolony.b.a a2 = com.iab.omid.library.adcolony.b.a.a();
        if (a2 != null) {
            for (com.iab.omid.library.adcolony.adsession.a aVar : a2.c()) {
                View e2 = aVar.e();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (e2 != null) {
                        String e3 = e(e2);
                        if (e3 == null) {
                            this.f9900e.add(adSessionId);
                            this.f9896a.put(e2, adSessionId);
                            a(aVar);
                        } else if (e3 != "noWindowFocus") {
                            this.f9901f.add(adSessionId);
                            this.f9898c.put(adSessionId, e2);
                            this.f9902g.put(adSessionId, e3);
                        }
                    } else {
                        this.f9901f.add(adSessionId);
                        this.f9902g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void d() {
        this.f9896a.clear();
        this.f9897b.clear();
        this.f9898c.clear();
        this.f9899d.clear();
        this.f9900e.clear();
        this.f9901f.clear();
        this.f9902g.clear();
        this.i = false;
    }

    public boolean d(View view) {
        if (this.f9903h.containsKey(view)) {
            this.f9903h.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    public void e() {
        this.i = true;
    }
}
