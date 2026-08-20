package com.applovin.impl.mediation.debugger.ui.d;

import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public TextView f5108a;

    /* renamed from: b  reason: collision with root package name */
    public TextView f5109b;

    /* renamed from: c  reason: collision with root package name */
    public ImageView f5110c;

    /* renamed from: d  reason: collision with root package name */
    public ImageView f5111d;

    /* renamed from: e  reason: collision with root package name */
    private c f5112e;

    /* renamed from: f  reason: collision with root package name */
    private int f5113f;

    public int a() {
        return this.f5113f;
    }

    public void a(int i) {
        this.f5113f = i;
    }

    public void a(c cVar) {
        this.f5112e = cVar;
        this.f5108a.setText(cVar.k());
        this.f5108a.setTextColor(cVar.n());
        if (this.f5109b != null) {
            if (TextUtils.isEmpty(cVar.i_())) {
                this.f5109b.setVisibility(8);
            } else {
                this.f5109b.setTypeface(null, 0);
                this.f5109b.setVisibility(0);
                this.f5109b.setText(cVar.i_());
                this.f5109b.setTextColor(cVar.e());
                if (cVar.j_()) {
                    this.f5109b.setTypeface(null, 1);
                }
            }
        }
        if (this.f5110c != null) {
            if (cVar.g() > 0) {
                this.f5110c.setImageResource(cVar.g());
                this.f5110c.setColorFilter(cVar.o());
                this.f5110c.setVisibility(0);
            } else {
                this.f5110c.setVisibility(8);
            }
        }
        if (this.f5111d != null) {
            if (cVar.a() <= 0) {
                this.f5111d.setVisibility(8);
                return;
            }
            this.f5111d.setImageResource(cVar.a());
            this.f5111d.setColorFilter(cVar.b());
            this.f5111d.setVisibility(0);
        }
    }

    public c b() {
        return this.f5112e;
    }
}
