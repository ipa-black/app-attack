package com.applovin.impl.mediation.debugger.ui.a;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.impl.mediation.debugger.b.a.e;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends com.applovin.impl.mediation.debugger.ui.d.d {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.mediation.debugger.b.a.a f5014a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.mediation.debugger.b.a.b f5015b;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.applovin.impl.mediation.debugger.ui.d.c> f5016d;

    /* renamed from: e  reason: collision with root package name */
    private final List<com.applovin.impl.mediation.debugger.ui.d.c> f5017e;

    /* renamed from: f  reason: collision with root package name */
    private final List<com.applovin.impl.mediation.debugger.ui.d.c> f5018f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends com.applovin.impl.mediation.debugger.ui.b.a.a {
        private final com.applovin.impl.mediation.debugger.b.a.b o;

        a(com.applovin.impl.mediation.debugger.b.a.b bVar, String str, boolean z) {
            super(bVar.a().c(), b.this.f5139c);
            this.o = bVar;
            this.f5116d = StringUtils.createSpannedString(bVar.a().b(), ViewCompat.MEASURED_STATE_MASK, 18, 1);
            this.f5117e = !TextUtils.isEmpty(str) ? new SpannedString(str) : null;
            this.f5115c = z;
        }

        @Override // com.applovin.impl.mediation.debugger.ui.b.a.a, com.applovin.impl.mediation.debugger.ui.d.c
        public boolean c() {
            return this.f5115c;
        }

        public com.applovin.impl.mediation.debugger.b.a.b d() {
            return this.o;
        }

        @Override // com.applovin.impl.mediation.debugger.ui.d.c
        public int e() {
            return -12303292;
        }
    }

    /* renamed from: com.applovin.impl.mediation.debugger.ui.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    enum EnumC0073b {
        INFO,
        BIDDERS,
        WATERFALL,
        COUNT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(com.applovin.impl.mediation.debugger.b.a.a aVar, com.applovin.impl.mediation.debugger.b.a.b bVar, Context context) {
        super(context);
        this.f5014a = aVar;
        this.f5015b = bVar;
        this.f5016d = b();
        this.f5017e = c();
        this.f5018f = d();
        notifyDataSetChanged();
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> b() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(f());
        arrayList.add(g());
        if (this.f5015b != null) {
            arrayList.add(h());
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> c() {
        com.applovin.impl.mediation.debugger.b.a.b bVar = this.f5015b;
        if (bVar == null || bVar.c()) {
            List<com.applovin.impl.mediation.debugger.b.a.b> a2 = this.f5014a.e().a();
            ArrayList arrayList = new ArrayList(a2.size());
            for (com.applovin.impl.mediation.debugger.b.a.b bVar2 : a2) {
                com.applovin.impl.mediation.debugger.b.a.b bVar3 = this.f5015b;
                if (bVar3 == null || bVar3.a().a().equals(bVar2.a().a())) {
                    arrayList.add(new a(bVar2, bVar2.b() != null ? bVar2.b().a() : "", this.f5015b == null));
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> d() {
        com.applovin.impl.mediation.debugger.b.a.b bVar = this.f5015b;
        if (bVar == null || !bVar.c()) {
            List<com.applovin.impl.mediation.debugger.b.a.b> b2 = this.f5014a.e().b();
            ArrayList arrayList = new ArrayList(b2.size());
            for (com.applovin.impl.mediation.debugger.b.a.b bVar2 : b2) {
                com.applovin.impl.mediation.debugger.b.a.b bVar3 = this.f5015b;
                if (bVar3 == null || bVar3.a().a().equals(bVar2.a().a())) {
                    arrayList.add(new a(bVar2, null, this.f5015b == null));
                    for (e eVar : bVar2.d()) {
                        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.p().a(eVar.a()).b(eVar.b()).b(true).a());
                    }
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c f() {
        return com.applovin.impl.mediation.debugger.ui.d.c.p().a("ID").b(this.f5014a.a()).a();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c g() {
        return com.applovin.impl.mediation.debugger.ui.d.c.p().a("Ad Format").b(this.f5014a.c()).a();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c h() {
        return com.applovin.impl.mediation.debugger.ui.d.c.p().a("Selected Network").b(this.f5015b.a().b()).a();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int a(int i) {
        return (i == EnumC0073b.INFO.ordinal() ? this.f5016d : i == EnumC0073b.BIDDERS.ordinal() ? this.f5017e : this.f5018f).size();
    }

    public String a() {
        return this.f5014a.b();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected com.applovin.impl.mediation.debugger.ui.d.c b(int i) {
        return i == EnumC0073b.INFO.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("INFO") : i == EnumC0073b.BIDDERS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("BIDDERS") : new com.applovin.impl.mediation.debugger.ui.d.e("WATERFALL");
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected List<com.applovin.impl.mediation.debugger.ui.d.c> c(int i) {
        return i == EnumC0073b.INFO.ordinal() ? this.f5016d : i == EnumC0073b.BIDDERS.ordinal() ? this.f5017e : this.f5018f;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int e() {
        return EnumC0073b.COUNT.ordinal();
    }
}
