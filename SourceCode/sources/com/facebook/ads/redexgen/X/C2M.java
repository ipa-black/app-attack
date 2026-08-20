package com.facebook.ads.redexgen.X;

import android.os.Build;
import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.2M  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class C2M extends E9 {
    public C2M(C1203Xc c1203Xc) {
        super(c1203Xc);
        setCarouselLayoutManager(c1203Xc);
    }

    @Nullable
    public C1051Rc getFullscreenCarouselRecyclerViewAdapter() {
        if (getAdapter() instanceof C1051Rc) {
            return (C1051Rc) getAdapter();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.E9
    public C1231Ye getLayoutManager() {
        return (C1231Ye) super.getLayoutManager();
    }

    public AbstractC04974e getOnScrollListener() {
        return new TG(this);
    }

    private void setCarouselLayoutManager(C1203Xc c1203Xc) {
        C1231Ye c1231Ye = new C1231Ye(c1203Xc, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            c1231Ye.A1V(true);
        }
        super.setLayoutManager(c1231Ye);
    }

    @Override // com.facebook.ads.redexgen.X.E9
    public void setLayoutManager(C4Z c4z) {
    }
}
