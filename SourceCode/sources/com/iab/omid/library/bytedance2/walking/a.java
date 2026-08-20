package com.iab.omid.library.bytedance2.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.bytedance2.internal.e;
import com.iab.omid.library.bytedance2.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f10339a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0311a> f10340b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f10341c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f10342d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f10343e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f10344f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f10345g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final Map<View, Boolean> f10346h = new WeakHashMap();
    private boolean i;

    /* renamed from: com.iab.omid.library.bytedance2.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0311a {

        /* renamed from: a  reason: collision with root package name */
        private final e f10347a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f10348b = new ArrayList<>();

        public C0311a(e eVar, String str) {
            this.f10347a = eVar;
            a(str);
        }

        public e a() {
            return this.f10347a;
        }

        public void a(String str) {
            this.f10348b.add(str);
        }

        public ArrayList<String> b() {
            return this.f10348b;
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
            this.f10342d.addAll(hashSet);
            return null;
        }
        return "notAttached";
    }

    private void a(com.iab.omid.library.bytedance2.adsession.a aVar) {
        for (e eVar : aVar.d()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.bytedance2.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0311a c0311a = this.f10340b.get(view);
        if (c0311a != null) {
            c0311a.a(aVar.getAdSessionId());
        } else {
            this.f10340b.put(view, new C0311a(eVar, aVar.getAdSessionId()));
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f10346h.remove(view);
            return Boolean.FALSE;
        } else if (this.f10346h.containsKey(view)) {
            return this.f10346h.get(view);
        } else {
            Map<View, Boolean> map = this.f10346h;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public View a(String str) {
        return this.f10341c.get(str);
    }

    public void a() {
        this.f10339a.clear();
        this.f10340b.clear();
        this.f10341c.clear();
        this.f10342d.clear();
        this.f10343e.clear();
        this.f10344f.clear();
        this.f10345g.clear();
        this.i = false;
    }

    public String b(String str) {
        return this.f10345g.get(str);
    }

    public HashSet<String> b() {
        return this.f10344f;
    }

    public C0311a c(View view) {
        C0311a c0311a = this.f10340b.get(view);
        if (c0311a != null) {
            this.f10340b.remove(view);
        }
        return c0311a;
    }

    public HashSet<String> c() {
        return this.f10343e;
    }

    public String d(View view) {
        if (this.f10339a.size() == 0) {
            return null;
        }
        String str = this.f10339a.get(view);
        if (str != null) {
            this.f10339a.remove(view);
        }
        return str;
    }

    public void d() {
        this.i = true;
    }

    public c e(View view) {
        return this.f10342d.contains(view) ? c.PARENT_VIEW : this.i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.bytedance2.internal.c c2 = com.iab.omid.library.bytedance2.internal.c.c();
        if (c2 != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : c2.a()) {
                View c3 = aVar.c();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (c3 != null) {
                        String a2 = a(c3);
                        if (a2 == null) {
                            this.f10343e.add(adSessionId);
                            this.f10339a.put(c3, adSessionId);
                            a(aVar);
                        } else if (a2 != "noWindowFocus") {
                            this.f10344f.add(adSessionId);
                            this.f10341c.put(adSessionId, c3);
                            this.f10345g.put(adSessionId, a2);
                        }
                    } else {
                        this.f10344f.add(adSessionId);
                        this.f10345g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public boolean f(View view) {
        if (this.f10346h.containsKey(view)) {
            this.f10346h.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }
}
