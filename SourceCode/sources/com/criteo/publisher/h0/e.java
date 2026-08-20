package com.criteo.publisher.h0;

import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.model.s;
import com.criteo.publisher.n0.o;
import com.criteo.publisher.n0.p;
import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* compiled from: MoPubHeaderBidding.java */
/* loaded from: classes2.dex */
public class e implements d {

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f8861b = Arrays.asList("crt_cpm", "crt_displayUrl", "crt_size", "crt_format");

    /* renamed from: a  reason: collision with root package name */
    public final g f8862a = h.b(getClass());

    @Override // com.criteo.publisher.h0.d
    public boolean b(Object obj) {
        return p.b(obj, "com.mopub.mobileads.MoPubView") || p.b(obj, "com.mopub.mobileads.MoPubInterstitial") || p.b(obj, "com.mopub.mobileads.MoPubRewardedAdManager$RequestParameters");
    }

    @Override // com.criteo.publisher.h0.d
    public com.criteo.publisher.i0.a a() {
        return com.criteo.publisher.i0.a.MOPUB_APP_BIDDING;
    }

    @Override // com.criteo.publisher.h0.d
    public void a(Object obj) {
        String c2;
        if (b(obj) && (c2 = c(obj)) != null) {
            a(obj, b(c2));
        }
    }

    private String b(String str) {
        String[] split;
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split(",")) {
            if (!a(str2)) {
                sb.append(str2).append(",");
            }
        }
        return sb.toString().replaceAll(",$", "");
    }

    private boolean a(String str) {
        Iterator<String> it = f8861b.iterator();
        while (it.hasNext()) {
            if (str.startsWith(it.next() + ":")) {
                return true;
            }
        }
        return false;
    }

    @Override // com.criteo.publisher.h0.d
    public void a(Object obj, com.criteo.publisher.n0.a aVar, s sVar) {
        String sb;
        if (b(obj)) {
            String d2 = sVar.d();
            if (sVar.p()) {
                d2 = c(d2);
            }
            StringBuilder sb2 = new StringBuilder("crt_cpm:");
            sb2.append(sVar.a());
            sb2.append(",crt_displayUrl:");
            sb2.append(d2);
            if (aVar == com.criteo.publisher.n0.a.CRITEO_BANNER) {
                sb2.append(",crt_size:");
                sb2.append(sVar.k()).append("x").append(sVar.e());
            }
            if (sVar.p()) {
                sb2.append(",crt_format:video");
            }
            String c2 = c(obj);
            if (c2 != null) {
                sb = c2 + "," + ((Object) sb2);
            } else {
                sb = sb2.toString();
            }
            a(obj, sb);
            this.f8862a.a(a.a(a(), sb2.toString()));
        }
    }

    String c(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, Charset.forName(C.UTF8_NAME).name());
        } catch (UnsupportedEncodingException e2) {
            o.a((Throwable) e2);
            return null;
        }
    }

    private String c(Object obj) {
        if (p.b(obj, "com.mopub.mobileads.MoPubView") || p.b(obj, "com.mopub.mobileads.MoPubInterstitial")) {
            return (String) p.a(obj, "getKeywords", new Object[0]);
        }
        if (p.b(obj, "com.mopub.mobileads.MoPubRewardedAdManager$RequestParameters")) {
            return (String) p.a(obj, "mKeywords");
        }
        throw new UnsupportedOperationException("Unsupported object " + obj);
    }

    private void a(Object obj, String str) {
        if (p.b(obj, "com.mopub.mobileads.MoPubView") || p.b(obj, "com.mopub.mobileads.MoPubInterstitial")) {
            p.a(obj, "setKeywords", str);
        } else if (p.b(obj, "com.mopub.mobileads.MoPubRewardedAdManager$RequestParameters")) {
            p.a(obj, "mKeywords", str);
        } else {
            throw new UnsupportedOperationException("Unsupported object " + obj);
        }
    }
}
