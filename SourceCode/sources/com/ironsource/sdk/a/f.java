package com.ironsource.sdk.a;

import com.facebook.ads.AdError;
import com.google.android.exoplayer2.PlaybackException;
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static a f11509a = new a(2001, a("initsdk"));

    /* renamed from: b  reason: collision with root package name */
    public static a f11510b = new a(2002, a("createcontrollerweb"));

    /* renamed from: c  reason: collision with root package name */
    public static a f11511c = new a(2003, a("createcontrollernative"));

    /* renamed from: d  reason: collision with root package name */
    public static a f11512d = new a(2004, a("controllerstageready"));

    /* renamed from: e  reason: collision with root package name */
    public static a f11513e = new a(2005, a("loadad"));

    /* renamed from: f  reason: collision with root package name */
    public static a f11514f = new a(2006, a("loadadfailed"));

    /* renamed from: g  reason: collision with root package name */
    public static a f11515g = new a(PlaybackException.ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED, a("initproduct"));

    /* renamed from: h  reason: collision with root package name */
    public static a f11516h = new a(2008, a("initproductfailed"));
    public static a i = new a(AdError.INTERSTITIAL_AD_TIMEOUT, a("loadproduct"));
    public static a j = new a(2010, a("parseadmfailed"));
    public static a k = new a(2011, a("loadadsuccess"));
    public static a l = new a(2013, a("controllerfailed"));
    public static a m;
    public static a n;
    public static a o;
    public static a p;
    public static a q;
    public static a r;
    public static a s;
    public static a t;
    public static a u;

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f11517a;

        /* renamed from: b  reason: collision with root package name */
        int f11518b;

        a(int i, String str) {
            this.f11518b = i;
            this.f11517a = str;
        }
    }

    static {
        new a(2014, a("extractinstalledpackagesfailed"));
        m = new a(2015, a("appendnativefeaturesdatafailed"));
        n = new a(2016, a("adunitcouldnotloadtowebview"));
        o = new a(2017, a("webviewcleanupfailed"));
        p = new a(2018, a("removewebviewfailed"));
        new a(2019, a("adunitcouldnotloadtowebviewbanners"));
        new a(2020, a("banneralreadydestroyed"));
        q = new a(2021, a("fialedregactlifecycle"));
        r = new a(2022, a("loadcontrollerhtml"));
        s = new a(2023, a("controllerhtmlsuccess"));
        t = new a(2024, a("controllerhtmlfailed"));
        u = new a(2025, a("webviewcrashrpg"));
    }

    private static String a(String str) {
        return "n_" + str;
    }
}
