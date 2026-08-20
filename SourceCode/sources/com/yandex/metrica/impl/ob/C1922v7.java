package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ac.CrashpadServiceHelper;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.v7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1922v7 implements InterfaceC1530f7<C1826r7> {

    /* renamed from: a  reason: collision with root package name */
    private final L1 f15898a;

    /* renamed from: com.yandex.metrica.impl.ob.v7$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1744nm<String, C1448c0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1826r7 f15899a;

        a(C1922v7 c1922v7, C1826r7 c1826r7) {
            this.f15899a = c1826r7;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public C1448c0 a(String str) {
            return C2011z0.a(str, Ul.b(this.f15899a.f15622b.a())).c(this.f15899a.f15623c.f12973a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.v7$b */
    /* loaded from: classes5.dex */
    class b implements InterfaceC1744nm<String, C1448c0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1826r7 f15900a;

        b(C1922v7 c1922v7, C1826r7 c1826r7) {
            this.f15900a = c1826r7;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public C1448c0 a(String str) {
            return C2011z0.b(str, Ul.b(this.f15900a.f15622b.a())).c(this.f15900a.f15623c.f12973a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.v7$c */
    /* loaded from: classes5.dex */
    public static class c implements InterfaceC1719mm<File> {

        /* renamed from: a  reason: collision with root package name */
        private final String f15901a;

        public c(String str) {
            this.f15901a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(File file) {
            CrashpadServiceHelper.a(this.f15901a);
        }
    }

    public C1922v7(L1 l1) {
        this.f15898a = l1;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1530f7
    public void a(C1826r7 c1826r7) {
        C1826r7 c1826r72 = c1826r7;
        this.f15898a.a(c1826r72, new b(this, c1826r72));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1530f7
    public void b(C1826r7 c1826r7) {
        C1826r7 c1826r72 = c1826r7;
        this.f15898a.a(c1826r72, new a(this, c1826r72));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void a2(C1826r7 c1826r7) {
        this.f15898a.a(c1826r7, new a(this, c1826r7));
    }

    /* renamed from: b  reason: avoid collision after fix types in other method */
    public void b2(C1826r7 c1826r7) {
        this.f15898a.a(c1826r7, new b(this, c1826r7));
    }
}
