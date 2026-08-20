package com.applovin.impl.sdk.nativeAd;

import android.net.Uri;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import java.io.File;
import java.util.Collections;
/* loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.d.e f5876a;

    /* renamed from: e  reason: collision with root package name */
    private final AppLovinNativeAdImpl f5877e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC0082a f5878f;

    /* renamed from: com.applovin.impl.sdk.nativeAd.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0082a {
        void a(AppLovinNativeAdImpl appLovinNativeAdImpl);
    }

    public a(AppLovinNativeAdImpl appLovinNativeAdImpl, n nVar, InterfaceC0082a interfaceC0082a) {
        super("TaskCacheNativeAd", nVar);
        this.f5876a = new com.applovin.impl.sdk.d.e();
        this.f5877e = appLovinNativeAdImpl;
        this.f5878f = interfaceC0082a;
    }

    private Uri a(Uri uri) {
        if (uri == null) {
            return null;
        }
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Attempting to cache resource: " + uri);
        }
        String a2 = this.f5674b.ad() != null ? this.f5674b.ad().a(f(), uri.toString(), this.f5877e.getCachePrefix(), Collections.emptyList(), false, true, this.f5876a) : this.f5674b.ae().a(f(), uri.toString(), this.f5877e.getCachePrefix(), Collections.emptyList(), false, true, this.f5876a);
        if (StringUtils.isValidString(a2)) {
            File a3 = this.f5674b.ad() != null ? this.f5674b.ad().a(a2, f()) : this.f5674b.ae().a(a2, f());
            if (a3 != null) {
                Uri fromFile = Uri.fromFile(a3);
                if (fromFile != null) {
                    return fromFile;
                }
                v vVar2 = this.f5676d;
                if (v.a()) {
                    this.f5676d.e(this.f5675c, "Unable to extract Uri from image file");
                }
            } else {
                v vVar3 = this.f5676d;
                if (v.a()) {
                    this.f5676d.e(this.f5675c, "Unable to retrieve File from cached image filename = " + a2);
                }
            }
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Begin caching ad #" + this.f5877e.getAdIdNumber() + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        Uri a2 = a(this.f5877e.getIconUri());
        if (a2 != null) {
            this.f5877e.setIconUri(a2);
        }
        Uri a3 = a(this.f5877e.getMainImageUri());
        if (a3 != null) {
            this.f5877e.setMainImageUri(a3);
        }
        Uri a4 = a(this.f5877e.getPrivacyIconUri());
        if (a4 != null) {
            this.f5877e.setPrivacyIconUri(a4);
        }
        v vVar2 = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Finished caching ad #" + this.f5877e.getAdIdNumber());
        }
        this.f5878f.a(this.f5877e);
    }
}
