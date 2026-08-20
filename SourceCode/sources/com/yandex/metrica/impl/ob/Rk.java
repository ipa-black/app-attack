package com.yandex.metrica.impl.ob;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TableLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Rk {
    private static final List<Class> l;
    private static final List<Class> m;

    /* renamed from: a  reason: collision with root package name */
    private final TreeSet<Float> f13827a = new TreeSet<>();

    /* renamed from: b  reason: collision with root package name */
    private final List<C1444bl> f13828b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final Ak f13829c;

    /* renamed from: d  reason: collision with root package name */
    private final List<InterfaceC1469cl> f13830d;

    /* renamed from: e  reason: collision with root package name */
    private final List<InterfaceC1816qk> f13831e;

    /* renamed from: f  reason: collision with root package name */
    private final Fl f13832f;

    /* renamed from: g  reason: collision with root package name */
    private final C1863sk f13833g;

    /* renamed from: h  reason: collision with root package name */
    private final C1960wl f13834h;
    private final C2008yl i;
    private final C1864sl j;
    private final Hl k;

    static {
        ArrayList arrayList = new ArrayList();
        l = arrayList;
        ArrayList arrayList2 = new ArrayList();
        m = arrayList2;
        arrayList.add(ListView.class);
        arrayList.add(GridView.class);
        a(arrayList, "androidx.recyclerview.widget.RecyclerView");
        a(arrayList, "androidx.viewpager.widget.ViewPager");
        a(arrayList, "androidx.viewpager2.widget.ViewPager2");
        a(arrayList2, "androidx.coordinatorlayout.widget.CoordinatorLayout");
        a(arrayList2, "androidx.drawerlayout.widget.DrawerLayout");
        a(arrayList2, "androidx.slidingpanelayout.widget.SlidingPaneLayout");
        a(arrayList2, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout");
        a(arrayList2, "androidx.core.widget.NestedScrollView");
        a(arrayList2, "androidx.constraintlayout.widget.ConstraintLayout");
        a(arrayList2, "androidx.appcompat.widget.ContentFrameLayout");
        arrayList2.add(AbsoluteLayout.class);
        arrayList2.add(FrameLayout.class);
        arrayList2.add(LinearLayout.class);
        arrayList2.add(RelativeLayout.class);
        arrayList2.add(TableLayout.class);
        arrayList2.add(ScrollView.class);
        arrayList2.add(GridLayout.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rk(C1960wl c1960wl, Fl fl, C1863sk c1863sk, Ak ak, List<InterfaceC1469cl> list, List<InterfaceC1816qk> list2, C2008yl c2008yl, C1864sl c1864sl, Hl hl) {
        this.f13834h = c1960wl;
        this.f13832f = fl;
        this.f13833g = c1863sk;
        this.f13829c = ak;
        this.f13830d = list;
        this.f13831e = list2;
        this.i = c2008yl;
        this.j = c1864sl;
        this.k = hl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b6, code lost:
        r1 = r1.a();
     */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.Pk a(com.yandex.metrica.impl.ob.C1840rl r22, android.view.View r23, int r24) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Rk.a(com.yandex.metrica.impl.ob.rl, android.view.View, int):com.yandex.metrica.impl.ob.Pk");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pk b(C1840rl c1840rl, View view, int i) {
        try {
            if (this.j.a(view)) {
                return null;
            }
            return a(c1840rl, view, i);
        } catch (Throwable th) {
            this.i.a("ui_parsing_view", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<C1444bl> b() {
        return this.f13828b;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e3 A[LOOP:0: B:49:0x00dd->B:51:0x00e3, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.C1840rl a(android.widget.TextView r20, java.lang.String r21, java.lang.String r22, int r23, boolean r24, com.yandex.metrica.impl.ob.C1840rl.a r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Rk.a(android.widget.TextView, java.lang.String, java.lang.String, int, boolean, com.yandex.metrica.impl.ob.rl$a):com.yandex.metrica.impl.ob.rl");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TreeSet<Float> a() {
        return this.f13827a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<View> a(View view, int i) {
        ArrayList arrayList = new ArrayList();
        try {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int min = Math.min(this.f13833g.a(i), viewGroup.getChildCount());
                for (int i2 = 0; i2 < min; i2++) {
                    arrayList.add(viewGroup.getChildAt(i2));
                }
            }
        } catch (Throwable th) {
            this.i.a("ui_parsing_children", th);
        }
        return arrayList;
    }

    private boolean a(List<Class> list, View view) {
        for (Class cls : list) {
            if (cls.isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    private static void a(List<Class> list, String str) {
        Class b2 = C1575h2.b(str);
        if (b2 != null) {
            list.add(b2);
        }
    }
}
