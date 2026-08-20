package com.applovin.exoplayer2.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import com.applovin.exoplayer2.common.base.Predicate;
import com.applovin.exoplayer2.i.a;
/* loaded from: classes.dex */
final class j {
    public static float a(int i, float f2, int i2, int i3) {
        float f3;
        if (f2 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i == 0) {
            f3 = i3;
        } else if (i != 1) {
            if (i != 2) {
                return -3.4028235E38f;
            }
            return f2;
        } else {
            f3 = i2;
        }
        return f2 * f3;
    }

    private static void a(Spannable spannable, Predicate<Object> predicate) {
        Object[] spans;
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (predicate.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }

    public static void a(a.C0045a c0045a) {
        c0045a.d();
        if (c0045a.a() instanceof Spanned) {
            if (!(c0045a.a() instanceof Spannable)) {
                c0045a.a(SpannableString.valueOf(c0045a.a()));
            }
            a((Spannable) com.applovin.exoplayer2.l.a.b(c0045a.a()), new Predicate() { // from class: com.applovin.exoplayer2.ui.j$$ExternalSyntheticLambda1
                @Override // com.applovin.exoplayer2.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean b2;
                    b2 = j.b(obj);
                    return b2;
                }
            });
        }
        b(c0045a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    public static void b(a.C0045a c0045a) {
        c0045a.b(-3.4028235E38f, Integer.MIN_VALUE);
        if (c0045a.a() instanceof Spanned) {
            if (!(c0045a.a() instanceof Spannable)) {
                c0045a.a(SpannableString.valueOf(c0045a.a()));
            }
            a((Spannable) com.applovin.exoplayer2.l.a.b(c0045a.a()), new Predicate() { // from class: com.applovin.exoplayer2.ui.j$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean a2;
                    a2 = j.a(obj);
                    return a2;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(Object obj) {
        return !(obj instanceof com.applovin.exoplayer2.i.d.b);
    }
}
