package com.yandex.metrica.impl.ob;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.re  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1833re {

    /* renamed from: h  reason: collision with root package name */
    private static Map<D0, Integer> f15632h;
    private static final C1833re i;

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC2001ye f15633a;

    /* renamed from: b  reason: collision with root package name */
    private final Ge f15634b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1761oe f15635c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1857se f15636d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1977xe f15637e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC2025ze f15638f;

    /* renamed from: g  reason: collision with root package name */
    private final C1881te f15639g;

    /* renamed from: com.yandex.metrica.impl.ob.re$b */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private InterfaceC2001ye f15640a;

        /* renamed from: b  reason: collision with root package name */
        private Ge f15641b;

        /* renamed from: c  reason: collision with root package name */
        private InterfaceC1761oe f15642c;

        /* renamed from: d  reason: collision with root package name */
        private InterfaceC1857se f15643d;

        /* renamed from: e  reason: collision with root package name */
        private InterfaceC1977xe f15644e;

        /* renamed from: f  reason: collision with root package name */
        private InterfaceC2025ze f15645f;

        /* renamed from: g  reason: collision with root package name */
        private C1881te f15646g;

        private b(C1833re c1833re) {
            this.f15640a = c1833re.f15633a;
            this.f15641b = c1833re.f15634b;
            this.f15642c = c1833re.f15635c;
            this.f15643d = c1833re.f15636d;
            this.f15644e = c1833re.f15637e;
            this.f15645f = c1833re.f15638f;
            this.f15646g = c1833re.f15639g;
        }

        public b a(InterfaceC2001ye interfaceC2001ye) {
            this.f15640a = interfaceC2001ye;
            return this;
        }

        public b a(Ge ge) {
            this.f15641b = ge;
            return this;
        }

        public b a(InterfaceC1761oe interfaceC1761oe) {
            this.f15642c = interfaceC1761oe;
            return this;
        }

        public b a(InterfaceC1857se interfaceC1857se) {
            this.f15643d = interfaceC1857se;
            return this;
        }

        public b a(InterfaceC1977xe interfaceC1977xe) {
            this.f15644e = interfaceC1977xe;
            return this;
        }

        public b a(InterfaceC2025ze interfaceC2025ze) {
            this.f15645f = interfaceC2025ze;
            return this;
        }

        public C1833re a() {
            return new C1833re(this);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(D0.FIRST_OCCURRENCE, 1);
        hashMap.put(D0.NON_FIRST_OCCURENCE, 0);
        hashMap.put(D0.UNKNOWN, -1);
        f15632h = Collections.unmodifiableMap(hashMap);
        i = new C1833re(new De(), new Ee(), new Ae(), new Ce(), new C1905ue(), new C1929ve(), new C1881te());
    }

    private C1833re(b bVar) {
        this(bVar.f15640a, bVar.f15641b, bVar.f15642c, bVar.f15643d, bVar.f15644e, bVar.f15645f, bVar.f15646g);
    }

    public static C1833re b() {
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.yandex.metrica.impl.ob.C1811qf.d.a a(com.yandex.metrica.impl.ob.C1810qe r8, com.yandex.metrica.impl.ob.Lg r9) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1833re.a(com.yandex.metrica.impl.ob.qe, com.yandex.metrica.impl.ob.Lg):com.yandex.metrica.impl.ob.qf$d$a");
    }

    private C1833re(InterfaceC2001ye interfaceC2001ye, Ge ge, InterfaceC1761oe interfaceC1761oe, InterfaceC1857se interfaceC1857se, InterfaceC1977xe interfaceC1977xe, InterfaceC2025ze interfaceC2025ze, C1881te c1881te) {
        this.f15633a = interfaceC2001ye;
        this.f15634b = ge;
        this.f15635c = interfaceC1761oe;
        this.f15636d = interfaceC1857se;
        this.f15637e = interfaceC1977xe;
        this.f15638f = interfaceC2025ze;
        this.f15639g = c1881te;
    }

    public static b a() {
        return new b();
    }
}
