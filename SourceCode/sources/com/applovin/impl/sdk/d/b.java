package com.applovin.impl.sdk.d;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class b {
    public static final b A;
    public static final b B;
    public static final b C;
    private static final Set<String> F = new HashSet(32);

    /* renamed from: a  reason: collision with root package name */
    public static final b f5632a;

    /* renamed from: b  reason: collision with root package name */
    public static final b f5633b;

    /* renamed from: c  reason: collision with root package name */
    public static final b f5634c;

    /* renamed from: d  reason: collision with root package name */
    public static final b f5635d;

    /* renamed from: e  reason: collision with root package name */
    public static final b f5636e;

    /* renamed from: f  reason: collision with root package name */
    public static final b f5637f;

    /* renamed from: g  reason: collision with root package name */
    public static final b f5638g;

    /* renamed from: h  reason: collision with root package name */
    public static final b f5639h;
    public static final b i;
    public static final b j;
    public static final b k;
    public static final b l;
    public static final b m;
    public static final b n;
    public static final b o;
    public static final b p;
    public static final b q;
    public static final b r;
    public static final b s;
    public static final b t;
    public static final b u;
    public static final b v;
    public static final b w;
    public static final b x;
    public static final b y;
    public static final b z;
    private final String D;
    private final String E;

    static {
        a("sisw", "IS_STREAMING_WEBKIT");
        a("surw", "UNABLE_TO_RETRIEVE_WEBKIT_HTML_STRING");
        a("surp", "UNABLE_TO_PERSIST_WEBKIT_HTML_PLACEMENT_REPLACED_STRING");
        a("swhp", "SUCCESSFULLY_PERSISTED_WEBKIT_HTML_STRING");
        a("skr", "STOREKIT_REDIRECTED");
        a("sklf", "STOREKIT_LOAD_FAILURE");
        a("skps", "STOREKIT_PRELOAD_SKIPPED");
        f5632a = a("sas", "AD_SOURCE");
        f5633b = a("srt", "AD_RENDER_TIME");
        f5634c = a("sft", "AD_FETCH_TIME");
        f5635d = a("sfs", "AD_FETCH_SIZE");
        f5636e = a("sadb", "AD_DOWNLOADED_BYTES");
        f5637f = a("sacb", "AD_CACHED_BYTES");
        f5638g = a("stdl", "TIME_TO_DISPLAY_FROM_LOAD");
        f5639h = a("stdi", "TIME_TO_DISPLAY_FROM_INIT");
        i = a("snas", "AD_NUMBER_IN_SESSION");
        j = a("snat", "AD_NUMBER_TOTAL");
        k = a("stah", "TIME_AD_HIDDEN_FROM_SHOW");
        l = a("stas", "TIME_TO_SKIP_FROM_SHOW");
        m = a("stac", "TIME_TO_CLICK_FROM_SHOW");
        n = a("stbe", "TIME_TO_EXPAND_FROM_SHOW");
        o = a("stbc", "TIME_TO_CONTRACT_FROM_SHOW");
        p = a("suvs", "INTERSTITIAL_USED_VIDEO_STREAM");
        q = a("sugs", "AD_USED_GRAPHIC_STREAM");
        r = a("svpv", "INTERSTITIAL_VIDEO_PERCENT_VIEWED");
        s = a("stpd", "INTERSTITIAL_PAUSED_DURATION");
        t = a("shsc", "HTML_RESOURCE_CACHE_SUCCESS_COUNT");
        u = a("shfc", "HTML_RESOURCE_CACHE_FAILURE_COUNT");
        v = a("schc", "AD_CANCELLED_HTML_CACHING");
        w = a("smwm", "AD_SHOWN_IN_MULTIWINDOW_MODE");
        x = a("vssc", "VIDEO_STREAM_STALLED_COUNT");
        y = a("wvem", "WEB_VIEW_ERROR_MESSAGES");
        z = a("wvhec", "WEB_VIEW_HTTP_ERROR_COUNT");
        A = a("wvrec", "WEB_VIEW_RENDER_ERROR_COUNT");
        B = a("wvsem", "WEB_VIEW_SSL_ERROR_MESSAGES");
        C = a("wvruc", "WEB_VIEW_RENDERER_UNRESPONSIVE_COUNT");
    }

    private b(String str, String str2) {
        this.D = str;
        this.E = str2;
    }

    private static b a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No key name specified");
        }
        Set<String> set = F;
        if (set.contains(str)) {
            throw new IllegalArgumentException("Key has already been used: " + str);
        }
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("No debug name specified");
        }
        set.add(str);
        return new b(str, str2);
    }
}
