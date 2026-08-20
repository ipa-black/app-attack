package com.applovin.exoplayer2.i.i;

import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes.dex */
public final class a extends com.applovin.exoplayer2.i.d {

    /* renamed from: a  reason: collision with root package name */
    private final y f3412a;

    public a() {
        super("Mp4WebvttDecoder");
        this.f3412a = new y();
    }

    private static com.applovin.exoplayer2.i.a a(y yVar, int i) throws com.applovin.exoplayer2.i.h {
        CharSequence charSequence = null;
        a.C0045a c0045a = null;
        while (i > 0) {
            if (i < 8) {
                throw new com.applovin.exoplayer2.i.h("Incomplete vtt cue box header found.");
            }
            int q = yVar.q();
            int q2 = yVar.q();
            int i2 = q - 8;
            String a2 = ai.a(yVar.d(), yVar.c(), i2);
            yVar.e(i2);
            i = (i - 8) - i2;
            if (q2 == 1937011815) {
                c0045a = f.a(a2);
            } else if (q2 == 1885436268) {
                charSequence = f.a((String) null, a2.trim(), Collections.emptyList());
            }
        }
        if (charSequence == null) {
            charSequence = "";
        }
        return c0045a != null ? c0045a.a(charSequence).e() : f.a(charSequence);
    }

    @Override // com.applovin.exoplayer2.i.d
    protected com.applovin.exoplayer2.i.f a(byte[] bArr, int i, boolean z) throws com.applovin.exoplayer2.i.h {
        this.f3412a.a(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.f3412a.a() > 0) {
            if (this.f3412a.a() < 8) {
                throw new com.applovin.exoplayer2.i.h("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int q = this.f3412a.q();
            if (this.f3412a.q() == 1987343459) {
                arrayList.add(a(this.f3412a, q - 8));
            } else {
                this.f3412a.e(q - 8);
            }
        }
        return new b(arrayList);
    }
}
