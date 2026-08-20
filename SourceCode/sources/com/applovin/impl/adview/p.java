package com.applovin.impl.adview;

import android.content.Context;
import com.applovin.impl.adview.i;
/* loaded from: classes.dex */
public final class p extends i {
    public p(Context context) {
        super(context);
    }

    @Override // com.applovin.impl.adview.i
    public void a(int i) {
        setViewScale(i / 30.0f);
    }

    @Override // com.applovin.impl.adview.i
    public i.a getStyle() {
        return i.a.INVISIBLE;
    }
}
