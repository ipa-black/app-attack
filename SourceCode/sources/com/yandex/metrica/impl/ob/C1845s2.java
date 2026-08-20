package com.yandex.metrica.impl.ob;

import java.util.HashSet;
/* renamed from: com.yandex.metrica.impl.ob.s2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1845s2 {

    /* renamed from: a  reason: collision with root package name */
    private final a f15702a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f15703b;

    /* renamed from: c  reason: collision with root package name */
    private final HashSet<String> f15704c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<String> f15705d = new HashSet<>();

    /* renamed from: com.yandex.metrica.impl.ob.s2$a */
    /* loaded from: classes5.dex */
    public interface a {
    }

    /* renamed from: com.yandex.metrica.impl.ob.s2$b */
    /* loaded from: classes5.dex */
    public static class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final C1507e9 f15706a;

        public b(C1507e9 c1507e9) {
            this.f15706a = c1507e9;
        }

        public void a(boolean z) {
            this.f15706a.b(z).d();
        }

        public Boolean a() {
            return this.f15706a.f();
        }
    }

    public C1845s2(a aVar) {
        this.f15702a = aVar;
        this.f15703b = ((b) aVar).a();
    }

    private boolean b() {
        Boolean bool = this.f15703b;
        if (bool == null) {
            return !this.f15704c.isEmpty() || this.f15705d.isEmpty();
        }
        return bool.booleanValue();
    }

    public synchronized void a(Boolean bool) {
        if (A2.a(bool) || this.f15703b == null) {
            Boolean valueOf = Boolean.valueOf(Boolean.FALSE.equals(bool));
            this.f15703b = valueOf;
            ((b) this.f15702a).a(valueOf.booleanValue());
        }
    }

    public synchronized boolean c() {
        boolean booleanValue;
        Boolean bool = this.f15703b;
        if (bool == null) {
            booleanValue = this.f15705d.isEmpty() && this.f15704c.isEmpty();
        } else {
            booleanValue = bool.booleanValue();
        }
        return booleanValue;
    }

    public synchronized boolean d() {
        return b();
    }

    public synchronized boolean e() {
        return b();
    }

    public synchronized void a(String str, Boolean bool) {
        if (A2.a(bool) || (!this.f15705d.contains(str) && !this.f15704c.contains(str))) {
            Boolean bool2 = Boolean.TRUE;
            if (bool == null) {
                bool = bool2;
            }
            if (bool.booleanValue()) {
                this.f15705d.add(str);
                this.f15704c.remove(str);
            } else {
                this.f15704c.add(str);
                this.f15705d.remove(str);
            }
        }
    }

    public synchronized boolean a() {
        Boolean bool;
        bool = this.f15703b;
        return bool == null ? this.f15705d.isEmpty() : bool.booleanValue();
    }
}
