package com.applovin.exoplayer2.i.i;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: f  reason: collision with root package name */
    private int f3423f;

    /* renamed from: h  reason: collision with root package name */
    private int f3425h;
    private float o;

    /* renamed from: a  reason: collision with root package name */
    private String f3418a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f3419b = "";

    /* renamed from: c  reason: collision with root package name */
    private Set<String> f3420c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    private String f3421d = "";

    /* renamed from: e  reason: collision with root package name */
    private String f3422e = null;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3424g = false;
    private boolean i = false;
    private int j = -1;
    private int k = -1;
    private int l = -1;
    private int m = -1;
    private int n = -1;
    private int p = -1;
    private boolean q = false;

    private static int a(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (str.equals(str2)) {
            return i + i2;
        }
        return -1;
    }

    public int a() {
        int i = this.l;
        if (i == -1 && this.m == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.m == 1 ? 2 : 0);
    }

    public int a(String str, String str2, Set<String> set, String str3) {
        if (this.f3418a.isEmpty() && this.f3419b.isEmpty() && this.f3420c.isEmpty() && this.f3421d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int a2 = a(a(a(0, this.f3418a, str, 1073741824), this.f3419b, str2, 2), this.f3421d, str3, 4);
        if (a2 == -1 || !set.containsAll(this.f3420c)) {
            return 0;
        }
        return a2 + (this.f3420c.size() * 4);
    }

    public d a(float f2) {
        this.o = f2;
        return this;
    }

    public d a(int i) {
        this.f3423f = i;
        this.f3424g = true;
        return this;
    }

    public d a(boolean z) {
        this.k = z ? 1 : 0;
        return this;
    }

    public void a(String str) {
        this.f3418a = str;
    }

    public void a(String[] strArr) {
        this.f3420c = new HashSet(Arrays.asList(strArr));
    }

    public d b(int i) {
        this.f3425h = i;
        this.i = true;
        return this;
    }

    public d b(boolean z) {
        this.l = z ? 1 : 0;
        return this;
    }

    public void b(String str) {
        this.f3419b = str;
    }

    public boolean b() {
        return this.j == 1;
    }

    public d c(int i) {
        this.n = i;
        return this;
    }

    public d c(boolean z) {
        this.m = z ? 1 : 0;
        return this;
    }

    public void c(String str) {
        this.f3421d = str;
    }

    public boolean c() {
        return this.k == 1;
    }

    public d d(int i) {
        this.p = i;
        return this;
    }

    public d d(String str) {
        this.f3422e = str == null ? null : Ascii.toLowerCase(str);
        return this;
    }

    public d d(boolean z) {
        this.q = z;
        return this;
    }

    public String d() {
        return this.f3422e;
    }

    public int e() {
        if (this.f3424g) {
            return this.f3423f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public boolean f() {
        return this.f3424g;
    }

    public int g() {
        if (this.i) {
            return this.f3425h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean h() {
        return this.i;
    }

    public int i() {
        return this.n;
    }

    public float j() {
        return this.o;
    }

    public int k() {
        return this.p;
    }

    public boolean l() {
        return this.q;
    }
}
