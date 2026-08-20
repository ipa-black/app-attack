package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private a f4560a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f4561b;

    /* renamed from: c  reason: collision with root package name */
    private String f4562c;

    /* loaded from: classes.dex */
    public enum a {
        UNSPECIFIED,
        STATIC,
        IFRAME,
        HTML
    }

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(s sVar, i iVar, com.applovin.impl.sdk.n nVar) {
        if (sVar != null) {
            if (nVar != null) {
                if (iVar == null) {
                    try {
                        iVar = new i();
                    } catch (Throwable th) {
                        nVar.D();
                        if (v.a()) {
                            nVar.D().b("VastNonVideoResource", "Error occurred while initializing", th);
                            return null;
                        }
                        return null;
                    }
                }
                if (iVar.f4561b == null && !StringUtils.isValidString(iVar.f4562c)) {
                    String a2 = a(sVar, "StaticResource");
                    if (URLUtil.isValidUrl(a2)) {
                        iVar.f4561b = Uri.parse(a2);
                        iVar.f4560a = a.STATIC;
                        return iVar;
                    }
                    String a3 = a(sVar, "IFrameResource");
                    if (StringUtils.isValidString(a3)) {
                        iVar.f4560a = a.IFRAME;
                        if (URLUtil.isValidUrl(a3)) {
                            iVar.f4561b = Uri.parse(a3);
                        } else {
                            iVar.f4562c = a3;
                        }
                        return iVar;
                    }
                    String a4 = a(sVar, "HTMLResource");
                    if (StringUtils.isValidString(a4)) {
                        iVar.f4560a = a.HTML;
                        if (URLUtil.isValidUrl(a4)) {
                            iVar.f4561b = Uri.parse(a4);
                        } else {
                            iVar.f4562c = a4;
                        }
                    }
                }
                return iVar;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    private static String a(s sVar, String str) {
        s b2 = sVar.b(str);
        if (b2 != null) {
            return b2.c();
        }
        return null;
    }

    public a a() {
        return this.f4560a;
    }

    public void a(Uri uri) {
        this.f4561b = uri;
    }

    public void a(String str) {
        this.f4562c = str;
    }

    public Uri b() {
        return this.f4561b;
    }

    public String c() {
        return this.f4562c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.f4560a != iVar.f4560a) {
                return false;
            }
            Uri uri = this.f4561b;
            if (uri == null ? iVar.f4561b == null : uri.equals(iVar.f4561b)) {
                String str = this.f4562c;
                String str2 = iVar.f4562c;
                return str != null ? str.equals(str2) : str2 == null;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        a aVar = this.f4560a;
        int hashCode = (aVar != null ? aVar.hashCode() : 0) * 31;
        Uri uri = this.f4561b;
        int hashCode2 = (hashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        String str = this.f4562c;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "VastNonVideoResource{type=" + this.f4560a + ", resourceUri=" + this.f4561b + ", resourceContents='" + this.f4562c + "'}";
    }
}
