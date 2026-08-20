package com.yandex.metrica.impl.ob;

import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.yandex.metrica.impl.ob.w  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1938w implements InterfaceC1674l2 {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Integer> f15939a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final Set<Integer> f15940b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private volatile a f15941c = a.UNKNOWN;

    /* renamed from: d  reason: collision with root package name */
    private final Set<b> f15942d = new CopyOnWriteArraySet();

    /* renamed from: com.yandex.metrica.impl.ob.w$a */
    /* loaded from: classes5.dex */
    public enum a {
        UNKNOWN("unknown"),
        BACKGROUND("background"),
        VISIBLE("visible");

        a(String str) {
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.w$b */
    /* loaded from: classes5.dex */
    public interface b {
        void a(a aVar);
    }

    private void d() {
        a aVar = a.UNKNOWN;
        if (!this.f15939a.isEmpty()) {
            aVar = a.VISIBLE;
        } else if (!this.f15940b.isEmpty()) {
            aVar = a.BACKGROUND;
        }
        if (this.f15941c != aVar) {
            this.f15941c = aVar;
            for (b bVar : this.f15942d) {
                bVar.a(this.f15941c);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public void a() {
        d();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public void b() {
        if (this.f15941c == a.VISIBLE) {
            this.f15941c = a.BACKGROUND;
        }
    }

    public a c() {
        return this.f15941c;
    }

    public a a(b bVar) {
        this.f15942d.add(bVar);
        return this.f15941c;
    }

    public void c(int i) {
        this.f15939a.add(Integer.valueOf(i));
        this.f15940b.remove(Integer.valueOf(i));
        d();
    }

    public void b(int i) {
        this.f15940b.add(Integer.valueOf(i));
        this.f15939a.remove(Integer.valueOf(i));
        d();
    }

    public void a(int i) {
        this.f15939a.remove(Integer.valueOf(i));
        d();
    }
}
