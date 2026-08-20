package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ui  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1909ui {

    /* renamed from: a  reason: collision with root package name */
    public final a f15857a;

    /* renamed from: b  reason: collision with root package name */
    public final a f15858b;

    /* renamed from: com.yandex.metrica.impl.ob.ui$a */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f15859a;

        /* renamed from: b  reason: collision with root package name */
        public final long f15860b;

        public a(int i, long j) {
            this.f15859a = i;
            this.f15860b = j;
        }

        public String toString() {
            return "Item{refreshEventCount=" + this.f15859a + ", refreshPeriodSeconds=" + this.f15860b + '}';
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.ui$b */
    /* loaded from: classes5.dex */
    public enum b {
        WIFI,
        CELL
    }

    public C1909ui(a aVar, a aVar2) {
        this.f15857a = aVar;
        this.f15858b = aVar2;
    }

    public String toString() {
        return "ThrottlingConfig{cell=" + this.f15857a + ", wifi=" + this.f15858b + '}';
    }
}
