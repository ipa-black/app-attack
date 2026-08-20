package com.applovin.exoplayer2.e.g;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.common.base.Splitter;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.f.c;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Splitter f2310a = Splitter.on(':');

    /* renamed from: b  reason: collision with root package name */
    private static final Splitter f2311b = Splitter.on('*');

    /* renamed from: c  reason: collision with root package name */
    private final List<a> f2312c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private int f2313d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f2314e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2315a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2316b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2317c;

        public a(int i, long j, int i2) {
            this.f2315a = i;
            this.f2316b = j;
            this.f2317c = i2;
        }
    }

    private static int a(String str) throws ai {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals("SlowMotion_Data")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1332107749:
                if (str.equals("Super_SlowMotion_Edit_Data")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1251387154:
                if (str.equals("Super_SlowMotion_Data")) {
                    c2 = 2;
                    break;
                }
                break;
            case -830665521:
                if (str.equals("Super_SlowMotion_Deflickering_On")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1760745220:
                if (str.equals("Super_SlowMotion_BGM")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 2192;
            case 1:
                return 2819;
            case 2:
                return 2816;
            case 3:
                return 2820;
            case 4:
                return 2817;
            default:
                throw ai.b("Invalid SEF name", null);
        }
    }

    private static com.applovin.exoplayer2.g.f.c a(y yVar, int i) throws ai {
        ArrayList arrayList = new ArrayList();
        List<String> splitToList = f2311b.splitToList(yVar.f(i));
        for (int i2 = 0; i2 < splitToList.size(); i2++) {
            List<String> splitToList2 = f2310a.splitToList(splitToList.get(i2));
            if (splitToList2.size() != 3) {
                throw ai.b(null, null);
            }
            try {
                arrayList.add(new c.a(Long.parseLong(splitToList2.get(0)), Long.parseLong(splitToList2.get(1)), 1 << (Integer.parseInt(splitToList2.get(2)) - 1)));
            } catch (NumberFormatException e2) {
                throw ai.b(null, e2);
            }
        }
        return new com.applovin.exoplayer2.g.f.c(arrayList);
    }

    private void a(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        y yVar = new y(8);
        iVar.b(yVar.d(), 0, 8);
        this.f2314e = yVar.r() + 8;
        if (yVar.q() != 1397048916) {
            uVar.f2707a = 0L;
            return;
        }
        uVar.f2707a = iVar.c() - (this.f2314e - 12);
        this.f2313d = 2;
    }

    private void a(com.applovin.exoplayer2.e.i iVar, List<a.InterfaceC0042a> list) throws IOException {
        long c2 = iVar.c();
        int d2 = (int) ((iVar.d() - iVar.c()) - this.f2314e);
        y yVar = new y(d2);
        iVar.b(yVar.d(), 0, d2);
        for (int i = 0; i < this.f2312c.size(); i++) {
            a aVar = this.f2312c.get(i);
            yVar.d((int) (aVar.f2316b - c2));
            yVar.e(4);
            int r = yVar.r();
            int a2 = a(yVar.f(r));
            int i2 = aVar.f2317c - (r + 8);
            if (a2 == 2192) {
                list.add(a(yVar, i2));
            } else if (a2 != 2816 && a2 != 2817 && a2 != 2819 && a2 != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    private void b(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        long j;
        long d2 = iVar.d();
        int i = this.f2314e - 20;
        y yVar = new y(i);
        iVar.b(yVar.d(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            yVar.e(2);
            short l = yVar.l();
            if (l == 2192 || l == 2816 || l == 2817 || l == 2819 || l == 2820) {
                this.f2312c.add(new a(l, (d2 - this.f2314e) - yVar.r(), yVar.r()));
            } else {
                yVar.e(8);
            }
        }
        if (this.f2312c.isEmpty()) {
            j = 0;
        } else {
            this.f2313d = 3;
            j = this.f2312c.get(0).f2316b;
        }
        uVar.f2707a = j;
    }

    public int a(com.applovin.exoplayer2.e.i iVar, u uVar, List<a.InterfaceC0042a> list) throws IOException {
        int i = this.f2313d;
        long j = 0;
        if (i == 0) {
            long d2 = iVar.d();
            if (d2 != -1 && d2 >= 8) {
                j = d2 - 8;
            }
            uVar.f2707a = j;
            this.f2313d = 1;
        } else if (i == 1) {
            a(iVar, uVar);
        } else if (i == 2) {
            b(iVar, uVar);
        } else if (i != 3) {
            throw new IllegalStateException();
        } else {
            a(iVar, list);
            uVar.f2707a = 0L;
        }
        return 1;
    }

    public void a() {
        this.f2312c.clear();
        this.f2313d = 0;
    }
}
