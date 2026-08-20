package com.facebook.ads.redexgen.X;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: assets/audience_network.dex */
public abstract class YQ extends C4V {
    public static String[] A01 = {"ufm8s7LRmOM7", "sIBwdoM05ajejE", "0NxvrnR7UZDHrBy4xVhLU5lsqzWJ5R3x", "FsILnIqpIa8iE3wffvJrO4tNlZdDmpUd", "wKnqjXSh8f61FKWyknAGi8xlXXoDdiLA", "lpMPMGmveEx5YZPPZgDkriuB4nzdouJK", "fQPzW90JHWOApVaaQbndX59CGXgCnXlm", "Pp9SKBa6RS3IfLIGXA9e4oeVKGHa5CsE"};
    public boolean A00 = true;

    public abstract boolean A0R(AbstractC05094r abstractC05094r);

    public abstract boolean A0S(AbstractC05094r abstractC05094r);

    public abstract boolean A0T(AbstractC05094r abstractC05094r, int i, int i2, int i3, int i4);

    public abstract boolean A0U(AbstractC05094r abstractC05094r, AbstractC05094r abstractC05094r2, int i, int i2, int i3, int i4);

    @Override // com.facebook.ads.redexgen.X.C4V
    public final boolean A0D(@NonNull AbstractC05094r abstractC05094r) {
        return !this.A00 || abstractC05094r.A0b();
    }

    @Override // com.facebook.ads.redexgen.X.C4V
    public final boolean A0E(@NonNull AbstractC05094r abstractC05094r, @Nullable C4U c4u, @NonNull C4U c4u2) {
        if (c4u != null && (c4u.A01 != c4u2.A01 || c4u.A03 != c4u2.A03)) {
            return A0T(abstractC05094r, c4u.A01, c4u.A03, c4u2.A01, c4u2.A03);
        }
        return A0R(abstractC05094r);
    }

    @Override // com.facebook.ads.redexgen.X.C4V
    public final boolean A0F(@NonNull AbstractC05094r abstractC05094r, @NonNull C4U c4u, @Nullable C4U c4u2) {
        int i = c4u.A01;
        int i2 = c4u.A03;
        View view = abstractC05094r.A0H;
        int oldLeft = c4u2 == null ? view.getLeft() : c4u2.A01;
        int oldTop = c4u2 == null ? view.getTop() : c4u2.A03;
        if (!abstractC05094r.A0c() && (i != oldLeft || i2 != oldTop)) {
            view.layout(oldLeft, oldTop, view.getWidth() + oldLeft, view.getHeight() + oldTop);
            return A0T(abstractC05094r, i, i2, oldLeft, oldTop);
        }
        return A0S(abstractC05094r);
    }

    @Override // com.facebook.ads.redexgen.X.C4V
    public final boolean A0G(@NonNull AbstractC05094r abstractC05094r, @NonNull C4U c4u, @NonNull C4U c4u2) {
        if (c4u.A01 != c4u2.A01 || c4u.A03 != c4u2.A03) {
            return A0T(abstractC05094r, c4u.A01, c4u.A03, c4u2.A01, c4u2.A03);
        }
        A0O(abstractC05094r);
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C4V
    public final boolean A0H(@NonNull AbstractC05094r abstractC05094r, @NonNull AbstractC05094r abstractC05094r2, @NonNull C4U c4u, @NonNull C4U c4u2) {
        int fromTop;
        int toLeft;
        int i = c4u.A01;
        int fromLeft = c4u.A03;
        if (abstractC05094r2.A0h()) {
            fromTop = c4u.A01;
            toLeft = c4u.A03;
        } else {
            fromTop = c4u2.A01;
            toLeft = c4u2.A03;
        }
        int toTop = A01[1].length();
        if (toTop != 14) {
            throw new RuntimeException();
        }
        A01[1] = "7F8ns227Orjao7";
        return A0U(abstractC05094r, abstractC05094r2, i, fromLeft, fromTop, toLeft);
    }

    public final void A0N(AbstractC05094r abstractC05094r) {
        A0C(abstractC05094r);
    }

    public final void A0O(AbstractC05094r abstractC05094r) {
        A0C(abstractC05094r);
    }

    public final void A0P(AbstractC05094r abstractC05094r) {
        A0C(abstractC05094r);
    }

    public final void A0Q(AbstractC05094r abstractC05094r, boolean z) {
        A0C(abstractC05094r);
    }
}
