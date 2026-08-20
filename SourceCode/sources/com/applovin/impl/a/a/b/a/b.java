package com.applovin.impl.a.a.b.a;

import android.app.Activity;
import android.content.Context;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.mediation.debugger.ui.d.e;
import com.applovin.impl.sdk.n;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class b extends d {

    /* renamed from: a  reason: collision with root package name */
    private n f4234a;

    /* renamed from: b  reason: collision with root package name */
    private List<com.applovin.impl.a.a.a.a> f4235b;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f4236d;

    /* renamed from: e  reason: collision with root package name */
    private List<com.applovin.impl.mediation.debugger.ui.d.c> f4237e;

    /* loaded from: classes.dex */
    public enum a {
        RECENT_ADS,
        COUNT
    }

    public b(Context context) {
        super(context);
        this.f4236d = new AtomicBoolean();
        this.f4237e = new ArrayList();
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> a(List<com.applovin.impl.a.a.a.a> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (com.applovin.impl.a.a.a.a aVar : list) {
            arrayList.add(new com.applovin.impl.a.a.b.a.a.a(aVar, this.f5139c));
        }
        return arrayList;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int a(int i) {
        return this.f4237e.size();
    }

    public void a() {
        this.f4236d.compareAndSet(true, false);
    }

    public void a(List<com.applovin.impl.a.a.a.a> list, n nVar) {
        Activity ar;
        this.f4234a = nVar;
        this.f4235b = list;
        if (!(this.f5139c instanceof Activity) && (ar = nVar.ar()) != null) {
            this.f5139c = ar;
        }
        if (list != null && this.f4236d.compareAndSet(false, true)) {
            this.f4237e = a(this.f4235b);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.a.a.b.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.notifyDataSetChanged();
            }
        });
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected com.applovin.impl.mediation.debugger.ui.d.c b(int i) {
        return new e("RECENT ADS");
    }

    public boolean b() {
        return this.f4237e.size() == 0;
    }

    public n c() {
        return this.f4234a;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected List<com.applovin.impl.mediation.debugger.ui.d.c> c(int i) {
        return this.f4237e;
    }

    public List<com.applovin.impl.a.a.a.a> d() {
        return this.f4235b;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int e() {
        return a.COUNT.ordinal();
    }

    public String toString() {
        return "CreativeDebuggerListAdapter{isInitialized=" + this.f4236d.get() + "}";
    }
}
