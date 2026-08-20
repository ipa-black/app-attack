package com.applovin.exoplayer2.m;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.l.v;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f3877a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3878b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3879c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3880d;

    /* renamed from: e  reason: collision with root package name */
    public final float f3881e;

    /* renamed from: f  reason: collision with root package name */
    public final String f3882f;

    private a(List<byte[]> list, int i, int i2, int i3, float f2, String str) {
        this.f3877a = list;
        this.f3878b = i;
        this.f3879c = i2;
        this.f3880d = i3;
        this.f3881e = f2;
        this.f3882f = str;
    }

    public static a a(y yVar) throws ai {
        int i;
        int i2;
        float f2;
        String str;
        try {
            yVar.e(4);
            int h2 = (yVar.h() & 3) + 1;
            if (h2 != 3) {
                ArrayList arrayList = new ArrayList();
                int h3 = yVar.h() & 31;
                for (int i3 = 0; i3 < h3; i3++) {
                    arrayList.add(b(yVar));
                }
                int h4 = yVar.h();
                for (int i4 = 0; i4 < h4; i4++) {
                    arrayList.add(b(yVar));
                }
                if (h3 > 0) {
                    v.b a2 = v.a((byte[]) arrayList.get(0), h2, ((byte[]) arrayList.get(0)).length);
                    int i5 = a2.f3848e;
                    int i6 = a2.f3849f;
                    float f3 = a2.f3850g;
                    str = com.applovin.exoplayer2.l.e.a(a2.f3844a, a2.f3845b, a2.f3846c);
                    i = i5;
                    i2 = i6;
                    f2 = f3;
                } else {
                    i = -1;
                    i2 = -1;
                    f2 = 1.0f;
                    str = null;
                }
                return new a(arrayList, h2, i, i2, f2, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw ai.b("Error parsing AVC config", e2);
        }
    }

    private static byte[] b(y yVar) {
        int i = yVar.i();
        int c2 = yVar.c();
        yVar.e(i);
        return com.applovin.exoplayer2.l.e.a(yVar.d(), c2, i);
    }
}
