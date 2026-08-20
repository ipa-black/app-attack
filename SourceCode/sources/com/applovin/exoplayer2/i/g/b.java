package com.applovin.exoplayer2.i.g;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.a.w;
import com.applovin.exoplayer2.common.base.Ascii;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f3350d = Pattern.compile("\\s+");

    /* renamed from: e  reason: collision with root package name */
    private static final w<String> f3351e = w.a("auto", "none");

    /* renamed from: f  reason: collision with root package name */
    private static final w<String> f3352f = w.a(TtmlNode.TEXT_EMPHASIS_MARK_DOT, TtmlNode.TEXT_EMPHASIS_MARK_SESAME, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);

    /* renamed from: g  reason: collision with root package name */
    private static final w<String> f3353g = w.a(TtmlNode.TEXT_EMPHASIS_MARK_FILLED, TtmlNode.TEXT_EMPHASIS_MARK_OPEN);

    /* renamed from: h  reason: collision with root package name */
    private static final w<String> f3354h = w.a(TtmlNode.ANNOTATION_POSITION_AFTER, TtmlNode.ANNOTATION_POSITION_BEFORE, TtmlNode.ANNOTATION_POSITION_OUTSIDE);

    /* renamed from: a  reason: collision with root package name */
    public final int f3355a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3356b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3357c;

    private b(int i, int i2, int i3) {
        this.f3355a = i;
        this.f3356b = i2;
        this.f3357c = i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ed, code lost:
        if (r9.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TEXT_EMPHASIS_MARK_DOT) != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.applovin.exoplayer2.i.g.b a(com.applovin.exoplayer2.common.a.w<java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.b.a(com.applovin.exoplayer2.common.a.w):com.applovin.exoplayer2.i.g.b");
    }

    public static b a(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = Ascii.toLowerCase(str.trim());
        if (lowerCase.isEmpty()) {
            return null;
        }
        return a(w.a((Object[]) TextUtils.split(lowerCase, f3350d)));
    }
}
