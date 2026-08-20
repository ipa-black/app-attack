package com.ironsource.sdk.controller;

import android.text.TextUtils;
import java.util.HashSet;
/* loaded from: classes3.dex */
public class u {

    /* renamed from: c  reason: collision with root package name */
    private String f11786c;

    /* renamed from: d  reason: collision with root package name */
    private String f11787d;

    /* renamed from: f  reason: collision with root package name */
    private int f11789f;

    /* renamed from: b  reason: collision with root package name */
    private HashSet<String> f11785b = new HashSet<>();

    /* renamed from: a  reason: collision with root package name */
    private boolean f11784a = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f11788e = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11790g = true;

    public HashSet<String> a() {
        return this.f11785b;
    }

    public void a(int i) {
        this.f11789f = i;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f11785b.add(str);
    }

    public void a(boolean z) {
        this.f11784a = z;
    }

    public void b(String str) {
        this.f11786c = str;
    }

    public void b(boolean z) {
        this.f11788e = z;
    }

    public boolean b() {
        return this.f11784a;
    }

    public String c() {
        return this.f11786c;
    }

    public void c(String str) {
        this.f11787d = str;
    }

    public void c(boolean z) {
        this.f11790g = z;
    }

    public String d() {
        return this.f11787d;
    }

    public boolean e() {
        return this.f11788e;
    }

    public int f() {
        return this.f11789f;
    }

    public boolean g() {
        return this.f11790g;
    }
}
