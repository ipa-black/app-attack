package com.applovin.impl.sdk.e;

import android.net.Uri;
import android.os.Bundle;
import androidx.browser.trusted.sharing.ShareTarget;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.mediation.h;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public abstract class c extends a implements h.a {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.ad.e f5682a;

    /* renamed from: e  reason: collision with root package name */
    private AppLovinAdLoadListener f5683e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.impl.sdk.r f5684f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.s f5685g;

    /* renamed from: h  reason: collision with root package name */
    private final Collection<Character> f5686h;
    private final com.applovin.impl.sdk.d.e i;
    private boolean j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.n nVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super(str, nVar);
        if (eVar == null) {
            throw new IllegalArgumentException("No ad specified.");
        }
        this.f5682a = eVar;
        this.f5683e = appLovinAdLoadListener;
        this.f5684f = nVar.ae();
        this.f5685g = nVar.ad();
        this.f5686h = j();
        this.i = new com.applovin.impl.sdk.d.e();
    }

    private Uri a(Uri uri, String str) {
        com.applovin.impl.sdk.v vVar;
        String str2;
        StringBuilder append;
        String str3;
        if (uri != null) {
            String uri2 = uri.toString();
            if (StringUtils.isValidString(uri2)) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Caching " + str + " image...");
                }
                return c(uri2);
            }
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (!com.applovin.impl.sdk.v.a()) {
                return null;
            }
            vVar = this.f5676d;
            str2 = this.f5675c;
            append = new StringBuilder("Failed to cache ").append(str);
            str3 = " image";
        } else {
            com.applovin.impl.sdk.v vVar4 = this.f5676d;
            if (!com.applovin.impl.sdk.v.a()) {
                return null;
            }
            vVar = this.f5676d;
            str2 = this.f5675c;
            append = new StringBuilder("No ").append(str);
            str3 = " image to cache";
        }
        vVar.b(str2, append.append(str3).toString());
        return null;
    }

    private Uri a(String str, String str2) {
        StringBuilder sb;
        if (this.f5685g != null) {
            return b(str, str2);
        }
        String replace = str2.replace("/", "_");
        String L = this.f5682a.L();
        if (StringUtils.isValidString(L)) {
            replace = L + replace;
        }
        File a2 = this.f5684f.a(replace, this.f5674b.P());
        if (a2 == null) {
            return null;
        }
        if (a2.exists()) {
            this.i.b(a2.length());
            sb = new StringBuilder("file://");
        } else if (!this.f5684f.a(a2, str + str2, Arrays.asList(str), this.i)) {
            return null;
        } else {
            sb = new StringBuilder("file://");
        }
        return Uri.parse(sb.append(a2.getAbsolutePath()).toString());
    }

    private Uri b(String str, String str2) {
        StringBuilder sb;
        String replace = str2.replace("/", "_");
        String L = this.f5682a.L();
        if (StringUtils.isValidString(L)) {
            replace = L + replace;
        }
        File a2 = this.f5685g.a(replace, this.f5674b.P());
        if (a2 == null) {
            return null;
        }
        if (a2.exists()) {
            this.i.b(a2.length());
            sb = new StringBuilder("file://");
        } else if (!this.f5685g.a(a2, str + str2, Arrays.asList(str), this.i)) {
            return null;
        } else {
            sb = new StringBuilder("file://");
        }
        return Uri.parse(sb.append(a2.getAbsolutePath()).toString());
    }

    private Uri c(String str) {
        return c(str, this.f5682a.I(), true);
    }

    private Collection<Character> j() {
        HashSet hashSet = new HashSet();
        for (char c2 : ((String) this.f5674b.a(com.applovin.impl.sdk.c.b.bv)).toCharArray()) {
            hashSet.add(Character.valueOf(c2));
        }
        hashSet.add(Character.valueOf(Typography.quote));
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Uri a(String str) {
        return a(str, this.f5682a.I(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Uri a(String str, List<String> list, boolean z) {
        if (this.f5685g != null) {
            return b(str, list, z);
        }
        if (StringUtils.isValidString(str)) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Caching video " + str + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            String a2 = this.f5684f.a(f(), str, this.f5682a.L(), list, z, this.f5682a.shouldUrlEncodeResourcePath(), this.i);
            if (!StringUtils.isValidString(a2)) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "Failed to cache video");
                }
                h();
                return null;
            }
            File a3 = this.f5684f.a(a2, f());
            if (a3 == null) {
                com.applovin.impl.sdk.v vVar3 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "Unable to cache video = " + str + "Video file was missing or null");
                    return null;
                }
                return null;
            }
            Uri fromFile = Uri.fromFile(a3);
            if (fromFile != null) {
                com.applovin.impl.sdk.v vVar4 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Finish caching video for ad #" + this.f5682a.getAdIdNumber() + ". Updating ad with cachedVideoFilename = " + a2);
                }
                return fromFile;
            }
            com.applovin.impl.sdk.v vVar5 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.e(this.f5675c, "Unable to create URI from cached video file = " + a3);
                return null;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x003e, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r13, java.util.List<java.lang.String> r14, com.applovin.impl.sdk.ad.e r15) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.e.c.a(java.lang.String, java.util.List, com.applovin.impl.sdk.ad.e):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.f5674b.L().b(this);
    }

    @Override // com.applovin.impl.mediation.h.a
    public void a(com.applovin.impl.mediation.a.a aVar) {
        if (aVar.f().equalsIgnoreCase(this.f5682a.N())) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.e(this.f5675c, "Updating flag for timeout...");
            }
            this.j = true;
        }
        this.f5674b.L().b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinAdBase appLovinAdBase) {
        com.applovin.impl.sdk.d.d.a(this.i, appLovinAdBase, this.f5674b);
    }

    Uri b(String str, List<String> list, boolean z) {
        if (StringUtils.isValidString(str)) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Caching video " + str + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            String a2 = this.f5685g.a(f(), str, this.f5682a.L(), list, z, this.f5682a.shouldUrlEncodeResourcePath(), this.i);
            if (!StringUtils.isValidString(a2)) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "Failed to cache video");
                }
                h();
                Bundle bundle = new Bundle();
                bundle.putLong("ad_id", this.f5682a.getAdIdNumber());
                bundle.putInt("load_response_code", this.i.e());
                Exception d2 = this.i.d();
                if (d2 != null) {
                    bundle.putString("load_exception_message", d2.getMessage());
                }
                this.f5674b.aj().a(bundle, "video_caching_failed");
                return null;
            }
            File a3 = this.f5685g.a(a2, f());
            if (a3 == null) {
                com.applovin.impl.sdk.v vVar3 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "Unable to cache video = " + str + "Video file was missing or null");
                    return null;
                }
                return null;
            }
            Uri fromFile = Uri.fromFile(a3);
            if (fromFile != null) {
                com.applovin.impl.sdk.v vVar4 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Finish caching video for ad #" + this.f5682a.getAdIdNumber() + ". Updating ad with cachedVideoFilename = " + a2);
                }
                return fromFile;
            }
            com.applovin.impl.sdk.v vVar5 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.e(this.f5675c, "Unable to create URI from cached video file = " + a3);
                return null;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b(final String str) {
        if (StringUtils.isValidString(str)) {
            com.applovin.impl.sdk.network.c a2 = com.applovin.impl.sdk.network.c.a(this.f5674b).a(str).b(ShareTarget.METHOD_GET).a((c.a) "").a(0).a();
            final AtomicReference atomicReference = new AtomicReference(null);
            this.f5674b.U().a(a2, new b.a(), new b.c<String>() { // from class: com.applovin.impl.sdk.e.c.1
                @Override // com.applovin.impl.sdk.network.b.c
                public void a(int i, String str2, String str3) {
                    com.applovin.impl.sdk.v vVar = c.this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        c.this.f5676d.e(c.this.f5675c, "Failed to load resource from '" + str + "'");
                    }
                }

                @Override // com.applovin.impl.sdk.network.b.c
                public void a(String str2, int i) {
                    atomicReference.set(str2);
                }
            });
            String str2 = (String) atomicReference.get();
            if (str2 != null) {
                this.i.a(str2.length());
            }
            return str2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Uri c(String str, List<String> list, boolean z) {
        if (this.f5685g != null) {
            return d(str, list, z);
        }
        try {
            String a2 = this.f5684f.a(f(), str, this.f5682a.L(), list, z, this.f5682a.shouldUrlEncodeResourcePath(), this.i);
            if (StringUtils.isValidString(a2)) {
                File a3 = this.f5684f.a(a2, f());
                if (a3 != null) {
                    Uri fromFile = Uri.fromFile(a3);
                    if (fromFile != null) {
                        return fromFile;
                    }
                    com.applovin.impl.sdk.v vVar = this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        this.f5676d.e(this.f5675c, "Unable to extract Uri from image file");
                    }
                } else {
                    com.applovin.impl.sdk.v vVar2 = this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        this.f5676d.e(this.f5675c, "Unable to retrieve File from cached image filename = " + a2);
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Failed to cache image at url = " + str, th);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Caching mute images...");
        }
        Uri a2 = a(this.f5682a.aC(), "mute");
        if (a2 != null) {
            this.f5682a.c(a2);
        }
        Uri a3 = a(this.f5682a.aD(), "unmute");
        if (a3 != null) {
            this.f5682a.d(a3);
        }
        com.applovin.impl.sdk.v vVar2 = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Ad updated with muteImageFilename = " + this.f5682a.aC() + ", unmuteImageFilename = " + this.f5682a.aD());
        }
    }

    Uri d(String str, List<String> list, boolean z) {
        try {
            String a2 = this.f5685g.a(f(), str, this.f5682a.L(), list, z, this.f5682a.shouldUrlEncodeResourcePath(), this.i);
            if (StringUtils.isValidString(a2)) {
                File a3 = this.f5685g.a(a2, f());
                if (a3 != null) {
                    Uri fromFile = Uri.fromFile(a3);
                    if (fromFile != null) {
                        return fromFile;
                    }
                    com.applovin.impl.sdk.v vVar = this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        this.f5676d.e(this.f5675c, "Unable to extract Uri from image file");
                    }
                } else {
                    com.applovin.impl.sdk.v vVar2 = this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        this.f5676d.e(this.f5675c, "Unable to retrieve File from cached image filename = " + a2);
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Failed to cache image at url = " + str, th);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e(String str, List<String> list, boolean z) {
        InputStream inputStream;
        if (this.f5685g != null) {
            return f(str, list, z);
        }
        if (StringUtils.isValidString(str)) {
            Uri parse = Uri.parse(str);
            if (parse == null) {
                com.applovin.impl.sdk.v vVar = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Nothing to cache, skipping...");
                }
                return null;
            }
            String fileName = ((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.fe)).booleanValue() ? Utils.getFileName(parse) : parse.getLastPathSegment();
            if (z) {
                fileName = StringUtils.encodeUriString(fileName, this.f5674b);
            }
            if (StringUtils.isValidString(this.f5682a.L())) {
                fileName = this.f5682a.L() + fileName;
            }
            try {
                File a2 = this.f5684f.a(fileName, f());
                if (a2 != null && a2.exists()) {
                    return this.f5684f.a(a2);
                }
                try {
                    inputStream = this.f5684f.a(str, list, true, this.i);
                    if (inputStream != null) {
                        try {
                            this.f5684f.b(inputStream, a2);
                        } catch (Throwable th) {
                            th = th;
                            Utils.close(inputStream, this.f5674b);
                            throw th;
                        }
                    }
                    Utils.close(inputStream, this.f5674b);
                    return this.f5684f.a(a2);
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                }
            } catch (Throwable th3) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Resource at " + str + " failed to load.", th3);
                }
            }
        }
        return null;
    }

    String f(String str, List<String> list, boolean z) {
        if (StringUtils.isValidString(str)) {
            Uri parse = Uri.parse(str);
            if (parse == null) {
                com.applovin.impl.sdk.v vVar = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Nothing to cache, skipping...");
                }
                return null;
            }
            String fileName = ((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.fe)).booleanValue() ? Utils.getFileName(parse) : parse.getLastPathSegment();
            if (z) {
                fileName = StringUtils.encodeUriString(fileName, this.f5674b);
            }
            if (StringUtils.isValidString(this.f5682a.L())) {
                fileName = this.f5682a.L() + fileName;
            }
            File a2 = this.f5685g.a(fileName, f());
            ByteArrayOutputStream a3 = (a2 == null || !a2.exists()) ? null : this.f5685g.a(a2);
            if (a3 == null) {
                a3 = this.f5685g.a(str, list, true, this.i);
                if (a3 != null) {
                    this.f5685g.a(a3, a2);
                    this.i.a(a3.size());
                }
            } else {
                this.i.b(a3.size());
            }
            try {
                return a3.toString(C.UTF8_NAME);
            } catch (UnsupportedEncodingException e2) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "UTF-8 encoding not supported.", e2);
                }
            } catch (Throwable th) {
                com.applovin.impl.sdk.v vVar3 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "String resource at " + str + " failed to load.", th);
                }
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f5683e;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            this.f5683e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Rendered new ad:" + this.f5682a);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e.c.2
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.f5683e != null) {
                    c.this.f5683e.adReceived(c.this.f5682a);
                    c.this.f5683e = null;
                }
            }
        });
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f5682a.M()) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Subscribing to timeout events...");
            }
            this.f5674b.L().a(this);
        }
    }
}
