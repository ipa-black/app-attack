package com.iab.omid.library.amazon.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.amazon.d.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f10003a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0302a> f10004b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f10005c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f10006d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f10007e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f10008f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f10009g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final Map<View, Boolean> f10010h = new WeakHashMap();
    private boolean i;

    /* renamed from: com.iab.omid.library.amazon.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0302a {

        /* renamed from: a  reason: collision with root package name */
        private final com.iab.omid.library.amazon.b.c f10011a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f10012b = new ArrayList<>();

        public C0302a(com.iab.omid.library.amazon.b.c cVar, String str) {
            this.f10011a = cVar;
            a(str);
        }

        public com.iab.omid.library.amazon.b.c a() {
            return this.f10011a;
        }

        public void a(String str) {
            this.f10012b.add(str);
        }

        public ArrayList<String> b() {
            return this.f10012b;
        }
    }

    private void a(com.iab.omid.library.amazon.adsession.a aVar) {
        for (com.iab.omid.library.amazon.b.c cVar : aVar.a()) {
            a(cVar, aVar);
        }
    }

    private void a(com.iab.omid.library.amazon.b.c cVar, com.iab.omid.library.amazon.adsession.a aVar) {
        View view = (View) cVar.a().get();
        if (view == null) {
            return;
        }
        C0302a c0302a = this.f10004b.get(view);
        if (c0302a != null) {
            c0302a.a(aVar.getAdSessionId());
        } else {
            this.f10004b.put(view, new C0302a(cVar, aVar.getAdSessionId()));
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
            this.f10006d.addAll(hashSet);
            return null;
        }
        return "notAttached";
    }

    private Boolean f(View view) {
        if (view.hasWindowFocus()) {
            this.f10010h.remove(view);
            return false;
        } else if (this.f10010h.containsKey(view)) {
            return this.f10010h.get(view);
        } else {
            this.f10010h.put(view, false);
            return false;
        }
    }

    public String a(View view) {
        if (this.f10003a.size() == 0) {
            return null;
        }
        String str = this.f10003a.get(view);
        if (str != null) {
            this.f10003a.remove(view);
        }
        return str;
    }

    public String a(String str) {
        return this.f10009g.get(str);
    }

    public HashSet<String> a() {
        return this.f10007e;
    }

    public View b(String str) {
        return this.f10005c.get(str);
    }

    public C0302a b(View view) {
        C0302a c0302a = this.f10004b.get(view);
        if (c0302a != null) {
            this.f10004b.remove(view);
        }
        return c0302a;
    }

    public HashSet<String> b() {
        return this.f10008f;
    }

    public c c(View view) {
        return this.f10006d.contains(view) ? c.PARENT_VIEW : this.i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void c() {
        com.iab.omid.library.amazon.b.a a2 = com.iab.omid.library.amazon.b.a.a();
        if (a2 != null) {
            for (com.iab.omid.library.amazon.adsession.a aVar : a2.c()) {
                View e2 = aVar.e();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (e2 != null) {
                        String e3 = e(e2);
                        if (e3 == null) {
                            this.f10007e.add(adSessionId);
                            this.f10003a.put(e2, adSessionId);
                            a(aVar);
                        } else if (e3 != "noWindowFocus") {
                            this.f10008f.add(adSessionId);
                            this.f10005c.put(adSessionId, e2);
                            this.f10009g.put(adSessionId, e3);
                        }
                    } else {
                        this.f10008f.add(adSessionId);
                        this.f10009g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void d() {
        this.f10003a.clear();
        this.f10004b.clear();
        this.f10005c.clear();
        this.f10006d.clear();
        this.f10007e.clear();
        this.f10008f.clear();
        this.f10009g.clear();
        this.i = false;
    }

    public boolean d(View view) {
        if (this.f10010h.containsKey(view)) {
            this.f10010h.put(view, true);
            return false;
        }
        return true;
    }

    public void e() {
        this.i = true;
    }
}
