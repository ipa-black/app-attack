package com.applovin.exoplayer2.i.h;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.TypefaceSpan;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.d;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
import java.util.List;
/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private final y f3402a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3403b;

    /* renamed from: c  reason: collision with root package name */
    private final int f3404c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3405d;

    /* renamed from: e  reason: collision with root package name */
    private final String f3406e;

    /* renamed from: f  reason: collision with root package name */
    private final float f3407f;

    /* renamed from: g  reason: collision with root package name */
    private final int f3408g;

    public a(List<byte[]> list) {
        super("Tx3gDecoder");
        this.f3402a = new y();
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f3404c = 0;
            this.f3405d = -1;
            this.f3406e = C.SANS_SERIF_NAME;
            this.f3403b = false;
            this.f3407f = 0.85f;
            this.f3408g = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.f3404c = bArr[24];
        this.f3405d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f3406e = "Serif".equals(ai.a(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i = bArr[25] * 20;
        this.f3408g = i;
        boolean z = (bArr[0] & 32) != 0;
        this.f3403b = z;
        if (z) {
            this.f3407f = ai.a(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.0f, 0.95f);
        } else {
            this.f3407f = 0.85f;
        }
    }

    private static String a(y yVar) throws h {
        char g2;
        a(yVar.a() >= 2);
        int i = yVar.i();
        if (i == 0) {
            return "";
        }
        return yVar.a(i, (yVar.a() < 2 || !((g2 = yVar.g()) == 65279 || g2 == 65534)) ? Charsets.UTF_8 : Charsets.UTF_16);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(android.text.SpannableStringBuilder r5, int r6, int r7, int r8, int r9, int r10) {
        /*
            if (r6 == r7) goto L4c
            r7 = r10 | 33
            r10 = r6 & 1
            r0 = 0
            r1 = 1
            if (r10 == 0) goto Lc
            r10 = r1
            goto Ld
        Lc:
            r10 = r0
        Ld:
            r2 = r6 & 2
            if (r2 == 0) goto L13
            r2 = r1
            goto L14
        L13:
            r2 = r0
        L14:
            if (r10 == 0) goto L23
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            if (r2 == 0) goto L1f
            r4 = 3
            r3.<init>(r4)
            goto L2b
        L1f:
            r3.<init>(r1)
            goto L2b
        L23:
            if (r2 == 0) goto L2e
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            r4 = 2
            r3.<init>(r4)
        L2b:
            r5.setSpan(r3, r8, r9, r7)
        L2e:
            r6 = r6 & 4
            if (r6 == 0) goto L33
            goto L34
        L33:
            r1 = r0
        L34:
            if (r1 == 0) goto L3e
            android.text.style.UnderlineSpan r6 = new android.text.style.UnderlineSpan
            r6.<init>()
            r5.setSpan(r6, r8, r9, r7)
        L3e:
            if (r1 != 0) goto L4c
            if (r10 != 0) goto L4c
            if (r2 != 0) goto L4c
            android.text.style.StyleSpan r6 = new android.text.style.StyleSpan
            r6.<init>(r0)
            r5.setSpan(r6, r8, r9, r7)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.h.a.a(android.text.SpannableStringBuilder, int, int, int, int, int):void");
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, String str, int i, int i2) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i, i2, 16711713);
        }
    }

    private void a(y yVar, SpannableStringBuilder spannableStringBuilder) throws h {
        a(yVar.a() >= 12);
        int i = yVar.i();
        int i2 = yVar.i();
        yVar.e(2);
        int h2 = yVar.h();
        yVar.e(1);
        int q = yVar.q();
        if (i2 > spannableStringBuilder.length()) {
            q.c("Tx3gDecoder", "Truncating styl end (" + i2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            i2 = spannableStringBuilder.length();
        }
        if (i >= i2) {
            q.c("Tx3gDecoder", "Ignoring styl with start (" + i + ") >= end (" + i2 + ").");
            return;
        }
        int i3 = i2;
        a(spannableStringBuilder, h2, this.f3404c, i, i3, 0);
        b(spannableStringBuilder, q, this.f3405d, i, i3, 0);
    }

    private static void a(boolean z) throws h {
        if (!z) {
            throw new h("Unexpected subtitle format.");
        }
    }

    private static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    @Override // com.applovin.exoplayer2.i.d
    protected f a(byte[] bArr, int i, boolean z) throws h {
        this.f3402a.a(bArr, i);
        String a2 = a(this.f3402a);
        if (a2.isEmpty()) {
            return b.f3409a;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(a2);
        a(spannableStringBuilder, this.f3404c, 0, 0, spannableStringBuilder.length(), 16711680);
        b(spannableStringBuilder, this.f3405d, -1, 0, spannableStringBuilder.length(), 16711680);
        a(spannableStringBuilder, this.f3406e, 0, spannableStringBuilder.length());
        float f2 = this.f3407f;
        while (this.f3402a.a() >= 8) {
            int c2 = this.f3402a.c();
            int q = this.f3402a.q();
            int q2 = this.f3402a.q();
            if (q2 == 1937013100) {
                a(this.f3402a.a() >= 2);
                int i2 = this.f3402a.i();
                for (int i3 = 0; i3 < i2; i3++) {
                    a(this.f3402a, spannableStringBuilder);
                }
            } else if (q2 == 1952608120 && this.f3403b) {
                a(this.f3402a.a() >= 2);
                f2 = ai.a(this.f3402a.i() / this.f3408g, 0.0f, 0.95f);
            }
            this.f3402a.d(c2 + q);
        }
        return new b(new a.C0045a().a(spannableStringBuilder).a(f2, 0).a(0).e());
    }
}
