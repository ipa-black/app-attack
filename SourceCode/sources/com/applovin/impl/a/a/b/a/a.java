package com.applovin.impl.a.a.b.a;

import android.app.Activity;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.applovin.creative.MaxCreativeDebuggerDisplayedAdActivity;
import com.applovin.impl.a.a.b.a.b;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.sdk.utils.b;
import com.applovin.sdk.R;
/* loaded from: classes.dex */
public class a extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private b f4226a;

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f4227b;

    /* renamed from: c  reason: collision with root package name */
    private ListView f4228c;

    private void a(int i) {
        TextView textView = new TextView(this);
        textView.setGravity(17);
        textView.setTextSize(18.0f);
        textView.setText(i);
        this.f4227b.addView(textView, new FrameLayout.LayoutParams(-1, -1, 17));
        this.f4227b.bringChildToFront(textView);
    }

    public void a(b bVar, final com.applovin.impl.sdk.a aVar) {
        this.f4226a = bVar;
        bVar.a(new d.a() { // from class: com.applovin.impl.a.a.b.a.a.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public void a(final com.applovin.impl.mediation.debugger.ui.d.a aVar2, com.applovin.impl.mediation.debugger.ui.d.c cVar) {
                if (aVar2.a() != b.a.RECENT_ADS.ordinal()) {
                    return;
                }
                com.applovin.impl.sdk.utils.b.a(a.this, MaxCreativeDebuggerDisplayedAdActivity.class, aVar, new b.a<MaxCreativeDebuggerDisplayedAdActivity>() { // from class: com.applovin.impl.a.a.b.a.a.1.1
                    @Override // com.applovin.impl.sdk.utils.b.a
                    public void a(MaxCreativeDebuggerDisplayedAdActivity maxCreativeDebuggerDisplayedAdActivity) {
                        maxCreativeDebuggerDisplayedAdActivity.a(a.this.f4226a.d().get(aVar2.b()), a.this.f4226a.c());
                    }
                });
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Creative Debugger");
        setContentView(R.layout.mediation_debugger_list_view);
        this.f4227b = (FrameLayout) findViewById(16908290);
        this.f4228c = (ListView) findViewById(R.id.listView);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        b bVar = this.f4226a;
        if (bVar != null) {
            bVar.a((d.a) null);
            this.f4226a.a();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        int i;
        super.onStart();
        this.f4228c.setAdapter((ListAdapter) this.f4226a);
        b bVar = this.f4226a;
        if (bVar == null || bVar.c().an().c()) {
            b bVar2 = this.f4226a;
            if (bVar2 == null || !bVar2.b()) {
                return;
            }
            i = R.string.applovin_creative_debugger_no_ads_text;
        } else {
            i = R.string.applovin_creative_debugger_disabled_text;
        }
        a(i);
    }
}
