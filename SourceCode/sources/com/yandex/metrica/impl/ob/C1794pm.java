package com.yandex.metrica.impl.ob;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.pm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1794pm<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<K, V> f15414a;

    /* renamed from: b  reason: collision with root package name */
    private int f15415b;

    /* renamed from: c  reason: collision with root package name */
    private int f15416c;

    /* renamed from: d  reason: collision with root package name */
    private int f15417d;

    /* renamed from: e  reason: collision with root package name */
    private int f15418e;

    /* renamed from: f  reason: collision with root package name */
    private int f15419f;

    /* renamed from: g  reason: collision with root package name */
    private int f15420g;

    public C1794pm(int i) {
        if (i > 0) {
            this.f15416c = i;
            this.f15414a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int b(K k, V v) {
        Pair pair = (Pair) v;
        int length = C1422b.b(((C1959wk) k).f15996b).length + 12;
        if (length >= 0) {
            return length;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public final synchronized V a(K k) {
        V v = this.f15414a.get(k);
        if (v != null) {
            this.f15419f++;
            return v;
        }
        this.f15420g++;
        return null;
    }

    public final synchronized String toString() {
        int i;
        int i2;
        i = this.f15419f;
        i2 = this.f15420g + i;
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f15416c), Integer.valueOf(this.f15419f), Integer.valueOf(this.f15420g), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }

    public final synchronized V a(K k, V v) {
        V put;
        this.f15417d++;
        this.f15415b += b(k, v);
        put = this.f15414a.put(k, v);
        if (put != null) {
            this.f15415b -= b(k, put);
        }
        a(this.f15416c);
        return put;
    }

    private void a(int i) {
        Map.Entry<K, V> next;
        while (this.f15415b > i && !this.f15414a.isEmpty() && (next = this.f15414a.entrySet().iterator().next()) != null) {
            K key = next.getKey();
            V value = next.getValue();
            this.f15414a.remove(key);
            this.f15415b -= b(key, value);
            this.f15418e++;
        }
        if (this.f15415b < 0 || (this.f15414a.isEmpty() && this.f15415b != 0)) {
            throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
        }
    }

    public final synchronized void a() {
        a(-1);
    }
}
