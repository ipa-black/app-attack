package com.ironsource.a;

import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    String f10472a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f10473b;

    /* renamed from: c  reason: collision with root package name */
    String f10474c;

    /* renamed from: d  reason: collision with root package name */
    d f10475d;

    /* renamed from: e  reason: collision with root package name */
    boolean f10476e;

    /* renamed from: f  reason: collision with root package name */
    ArrayList<Pair<String, String>> f10477f;

    /* renamed from: com.ironsource.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0316a {

        /* renamed from: a  reason: collision with root package name */
        String f10478a;

        /* renamed from: d  reason: collision with root package name */
        public d f10481d;

        /* renamed from: b  reason: collision with root package name */
        public boolean f10479b = false;

        /* renamed from: c  reason: collision with root package name */
        public String f10480c = ShareTarget.METHOD_POST;

        /* renamed from: e  reason: collision with root package name */
        public boolean f10482e = false;

        /* renamed from: f  reason: collision with root package name */
        public ArrayList<Pair<String, String>> f10483f = new ArrayList<>();

        public C0316a(String str) {
            this.f10478a = "";
            if (str == null || str.isEmpty()) {
                return;
            }
            this.f10478a = str;
        }
    }

    public a(C0316a c0316a) {
        this.f10476e = false;
        this.f10472a = c0316a.f10478a;
        this.f10473b = c0316a.f10479b;
        this.f10474c = c0316a.f10480c;
        this.f10475d = c0316a.f10481d;
        this.f10476e = c0316a.f10482e;
        if (c0316a.f10483f != null) {
            this.f10477f = new ArrayList<>(c0316a.f10483f);
        }
    }
}
