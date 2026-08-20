package com.appodeal.ads;

import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import com.appodeal.ads.c1;
import com.appodeal.ads.d1;
/* loaded from: classes.dex */
public final class a1 implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LinearLayout f6426a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ c1.a f6427b;

    public a1(LinearLayout linearLayout, d1.a.C0124a c0124a) {
        this.f6426a = linearLayout;
        this.f6427b = c0124a;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.widget.Adapter] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f6426a.getWindowToken(), 0);
        ((ViewGroup) this.f6426a.getParent()).removeView(this.f6426a);
        com.appodeal.ads.utils.k kVar = (com.appodeal.ads.utils.k) adapterView.getAdapter().getItem(i);
        c1.a aVar = this.f6427b;
        if (aVar != null) {
            int i2 = kVar.f7783g;
            boolean z = kVar.f7782f;
            d1.a aVar2 = d1.a.this;
            aVar2.f6623c.a((u) aVar2.f6622b, i2, z, true);
        }
    }
}
