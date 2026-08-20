package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import io.bidmachine.utils.IabUtils;
import java.util.Locale;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private Uri f4591a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f4592b;

    /* renamed from: c  reason: collision with root package name */
    private a f4593c;

    /* renamed from: d  reason: collision with root package name */
    private String f4594d;

    /* renamed from: e  reason: collision with root package name */
    private int f4595e;

    /* renamed from: f  reason: collision with root package name */
    private int f4596f;

    /* renamed from: g  reason: collision with root package name */
    private int f4597g;

    /* loaded from: classes.dex */
    public enum a {
        Progressive,
        Streaming
    }

    private o() {
    }

    private static a a(String str) {
        if (StringUtils.isValidString(str)) {
            if ("progressive".equalsIgnoreCase(str)) {
                return a.Progressive;
            }
            if ("streaming".equalsIgnoreCase(str)) {
                return a.Streaming;
            }
        }
        return a.Progressive;
    }

    public static o a(s sVar, com.applovin.impl.sdk.n nVar) {
        if (sVar != null) {
            if (nVar != null) {
                try {
                    String c2 = sVar.c();
                    if (!URLUtil.isValidUrl(c2)) {
                        nVar.D();
                        if (v.a()) {
                            nVar.D().e("VastVideoFile", "Unable to create video file. Could not find URL.");
                            return null;
                        }
                        return null;
                    }
                    Uri parse = Uri.parse(c2);
                    o oVar = new o();
                    oVar.f4591a = parse;
                    oVar.f4592b = parse;
                    oVar.f4597g = StringUtils.parseInt(sVar.b().get("bitrate"));
                    oVar.f4593c = a(sVar.b().get("delivery"));
                    oVar.f4596f = StringUtils.parseInt(sVar.b().get(IabUtils.KEY_HEIGHT));
                    oVar.f4595e = StringUtils.parseInt(sVar.b().get(IabUtils.KEY_WIDTH));
                    oVar.f4594d = sVar.b().get(SessionDescription.ATTR_TYPE).toLowerCase(Locale.ENGLISH);
                    return oVar;
                } catch (Throwable th) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().b("VastVideoFile", "Error occurred while initializing", th);
                        return null;
                    }
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Uri a() {
        return this.f4591a;
    }

    public void a(Uri uri) {
        this.f4592b = uri;
    }

    public Uri b() {
        return this.f4592b;
    }

    public String c() {
        return this.f4594d;
    }

    public int d() {
        return this.f4597g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.f4595e == oVar.f4595e && this.f4596f == oVar.f4596f && this.f4597g == oVar.f4597g) {
                Uri uri = this.f4591a;
                if (uri == null ? oVar.f4591a == null : uri.equals(oVar.f4591a)) {
                    Uri uri2 = this.f4592b;
                    if (uri2 == null ? oVar.f4592b == null : uri2.equals(oVar.f4592b)) {
                        if (this.f4593c != oVar.f4593c) {
                            return false;
                        }
                        String str = this.f4594d;
                        String str2 = oVar.f4594d;
                        return str != null ? str.equals(str2) : str2 == null;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        Uri uri = this.f4591a;
        int hashCode = (uri != null ? uri.hashCode() : 0) * 31;
        Uri uri2 = this.f4592b;
        int hashCode2 = (hashCode + (uri2 != null ? uri2.hashCode() : 0)) * 31;
        a aVar = this.f4593c;
        int hashCode3 = (hashCode2 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        String str = this.f4594d;
        return ((((((hashCode3 + (str != null ? str.hashCode() : 0)) * 31) + this.f4595e) * 31) + this.f4596f) * 31) + this.f4597g;
    }

    public String toString() {
        return "VastVideoFile{sourceVideoUri=" + this.f4591a + ", videoUri=" + this.f4592b + ", deliveryType=" + this.f4593c + ", fileType='" + this.f4594d + "', width=" + this.f4595e + ", height=" + this.f4596f + ", bitrate=" + this.f4597g + '}';
    }
}
