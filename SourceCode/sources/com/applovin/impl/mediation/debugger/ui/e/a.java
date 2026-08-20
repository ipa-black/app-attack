package com.applovin.impl.mediation.debugger.ui.e;

import android.os.Bundle;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.mediation.debugger.b.a.d;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.mediation.debugger.ui.d.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class a extends com.applovin.impl.mediation.debugger.ui.a {

    /* renamed from: a  reason: collision with root package name */
    private n f5142a;

    /* renamed from: b  reason: collision with root package name */
    private List<d> f5143b;

    /* renamed from: c  reason: collision with root package name */
    private List<d> f5144c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.mediation.debugger.ui.d.d f5145d;

    /* renamed from: e  reason: collision with root package name */
    private List<c> f5146e;

    /* renamed from: f  reason: collision with root package name */
    private List<c> f5147f;

    /* renamed from: g  reason: collision with root package name */
    private ListView f5148g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.impl.mediation.debugger.ui.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0077a {
        BIDDERS,
        WATERFALL,
        COUNT
    }

    public a() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d a(com.applovin.impl.mediation.debugger.ui.d.a aVar) {
        return (aVar.a() == EnumC0077a.BIDDERS.ordinal() ? this.f5143b : this.f5144c).get(aVar.b());
    }

    private List<c> a(List<d> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (final d dVar : list) {
            arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.a(dVar.c(), this) { // from class: com.applovin.impl.mediation.debugger.ui.e.a.3
                @Override // com.applovin.impl.mediation.debugger.ui.b.a.a, com.applovin.impl.mediation.debugger.ui.d.c
                public int a() {
                    if (a.this.f5142a.N().c() == null || !a.this.f5142a.N().c().equals(dVar.a())) {
                        return 0;
                    }
                    return R.drawable.applovin_ic_check_mark_borderless;
                }

                @Override // com.applovin.impl.mediation.debugger.ui.b.a.a, com.applovin.impl.mediation.debugger.ui.d.c
                public int b() {
                    if (a.this.f5142a.N().c() == null || !a.this.f5142a.N().c().equals(dVar.a())) {
                        return super.b();
                    }
                    return -16776961;
                }

                @Override // com.applovin.impl.mediation.debugger.ui.d.c
                public SpannedString k() {
                    return StringUtils.createSpannedString(dVar.b(), c() ? ViewCompat.MEASURED_STATE_MASK : -7829368, 18, 1);
                }
            });
        }
        return arrayList;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected n getSdk() {
        return this.f5142a;
    }

    public void initialize(List<d> list, List<d> list2, final n nVar) {
        this.f5142a = nVar;
        this.f5143b = list;
        this.f5144c = list2;
        this.f5146e = a(list);
        this.f5147f = a(list2);
        com.applovin.impl.mediation.debugger.ui.d.d dVar = new com.applovin.impl.mediation.debugger.ui.d.d(this) { // from class: com.applovin.impl.mediation.debugger.ui.e.a.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int a(int i) {
                return (i == EnumC0077a.BIDDERS.ordinal() ? a.this.f5146e : a.this.f5147f).size();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected c b(int i) {
                return i == EnumC0077a.BIDDERS.ordinal() ? new e("BIDDERS") : new e("WATERFALL");
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected List<c> c(int i) {
                return i == EnumC0077a.BIDDERS.ordinal() ? a.this.f5146e : a.this.f5147f;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int e() {
                return EnumC0077a.COUNT.ordinal();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected c o() {
                return new c.a(c.b.SECTION_CENTERED).a("Select a network to load ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").a();
            }
        };
        this.f5145d = dVar;
        dVar.a(new d.a() { // from class: com.applovin.impl.mediation.debugger.ui.e.a.2
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public void a(com.applovin.impl.mediation.debugger.ui.d.a aVar, c cVar) {
                com.applovin.impl.mediation.debugger.b.a.d a2 = a.this.a(aVar);
                if (StringUtils.isValidString(a2.a()) && StringUtils.isValidString(nVar.N().c()) && a2.a().equals(nVar.N().c())) {
                    nVar.N().a(false);
                    nVar.N().a((String) null);
                    nVar.aj().a((String) null);
                } else {
                    nVar.N().a(true);
                    nVar.N().a(a2.a());
                    nVar.aj().a(a2.b());
                }
                a.this.f5145d.notifyDataSetChanged();
            }
        });
        this.f5145d.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Live Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.f5148g = listView;
        listView.setAdapter((ListAdapter) this.f5145d);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.f5146e = a(this.f5143b);
        this.f5147f = a(this.f5144c);
        this.f5145d.n();
    }
}
