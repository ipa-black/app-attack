package com.applovin.exoplayer2.i.i;

import android.text.TextUtils;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class g extends com.applovin.exoplayer2.i.d {

    /* renamed from: a  reason: collision with root package name */
    private final y f3450a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3451b;

    public g() {
        super("WebvttDecoder");
        this.f3450a = new y();
        this.f3451b = new c();
    }

    private static int a(y yVar) {
        int i = -1;
        int i2 = 0;
        while (i == -1) {
            i2 = yVar.c();
            String C = yVar.C();
            i = C == null ? 0 : "STYLE".equals(C) ? 2 : C.startsWith("NOTE") ? 1 : 3;
        }
        yVar.d(i2);
        return i;
    }

    private static void b(y yVar) {
        do {
        } while (!TextUtils.isEmpty(yVar.C()));
    }

    @Override // com.applovin.exoplayer2.i.d
    protected com.applovin.exoplayer2.i.f a(byte[] bArr, int i, boolean z) throws com.applovin.exoplayer2.i.h {
        e a2;
        this.f3450a.a(bArr, i);
        ArrayList arrayList = new ArrayList();
        try {
            h.a(this.f3450a);
            do {
            } while (!TextUtils.isEmpty(this.f3450a.C()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int a3 = a(this.f3450a);
                if (a3 == 0) {
                    return new i(arrayList2);
                }
                if (a3 == 1) {
                    b(this.f3450a);
                } else if (a3 == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new com.applovin.exoplayer2.i.h("A style block was found after the first cue.");
                    }
                    this.f3450a.C();
                    arrayList.addAll(this.f3451b.a(this.f3450a));
                } else if (a3 == 3 && (a2 = f.a(this.f3450a, arrayList)) != null) {
                    arrayList2.add(a2);
                }
            }
        } catch (ai e2) {
            throw new com.applovin.exoplayer2.i.h(e2);
        }
    }
}
