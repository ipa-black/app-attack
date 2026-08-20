package com.applovin.impl.sdk.e;

import android.net.Uri;
import android.webkit.URLUtil;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.b.a;
import com.applovin.impl.b.i;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Collections;
/* loaded from: classes.dex */
class e extends c {

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.b.a f5694e;

    public e(com.applovin.impl.b.a aVar, com.applovin.impl.sdk.n nVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheVastAd", aVar, nVar, appLovinAdLoadListener);
        this.f5694e = aVar;
    }

    private void j() {
        com.applovin.impl.sdk.v vVar;
        String str;
        String str2;
        com.applovin.impl.sdk.v vVar2;
        String str3;
        String str4;
        com.applovin.impl.sdk.v vVar3;
        String str5;
        String str6;
        if (b()) {
            return;
        }
        if (this.f5694e.aU()) {
            com.applovin.impl.b.d aO = this.f5694e.aO();
            if (aO != null) {
                com.applovin.impl.b.i b2 = aO.b();
                if (b2 != null) {
                    Uri b3 = b2.b();
                    String uri = b3 != null ? b3.toString() : "";
                    String c2 = b2.c();
                    if (!URLUtil.isValidUrl(uri) && !StringUtils.isValidString(c2)) {
                        com.applovin.impl.sdk.v vVar4 = this.f5676d;
                        if (com.applovin.impl.sdk.v.a()) {
                            this.f5676d.d(this.f5675c, "Companion ad does not have any resources attached. Skipping...");
                            return;
                        }
                        return;
                    }
                    if (b2.a() == i.a.STATIC) {
                        com.applovin.impl.sdk.v vVar5 = this.f5676d;
                        if (com.applovin.impl.sdk.v.a()) {
                            this.f5676d.b(this.f5675c, "Caching static companion ad at " + uri + APSSharedUtil.TRUNCATE_SEPARATOR);
                        }
                        Uri c3 = c(uri, Collections.emptyList(), false);
                        if (c3 != null) {
                            b2.a(c3);
                        } else {
                            com.applovin.impl.sdk.v vVar6 = this.f5676d;
                            if (!com.applovin.impl.sdk.v.a()) {
                                return;
                            }
                            vVar2 = this.f5676d;
                            str3 = this.f5675c;
                            str4 = "Failed to cache static companion ad";
                        }
                    } else if (b2.a() == i.a.HTML) {
                        if (StringUtils.isValidString(uri)) {
                            com.applovin.impl.sdk.v vVar7 = this.f5676d;
                            if (com.applovin.impl.sdk.v.a()) {
                                this.f5676d.b(this.f5675c, "Begin caching HTML companion ad. Fetching from " + uri + APSSharedUtil.TRUNCATE_SEPARATOR);
                            }
                            c2 = b(uri);
                            if (!StringUtils.isValidString(c2)) {
                                com.applovin.impl.sdk.v vVar8 = this.f5676d;
                                if (com.applovin.impl.sdk.v.a()) {
                                    this.f5676d.e(this.f5675c, "Unable to load companion ad resources from " + uri);
                                    return;
                                }
                                return;
                            }
                            com.applovin.impl.sdk.v vVar9 = this.f5676d;
                            if (com.applovin.impl.sdk.v.a()) {
                                vVar3 = this.f5676d;
                                str5 = this.f5675c;
                                str6 = "HTML fetched. Caching HTML now...";
                                vVar3.b(str5, str6);
                            }
                            b2.a(a(c2, Collections.emptyList(), this.f5694e));
                        } else {
                            com.applovin.impl.sdk.v vVar10 = this.f5676d;
                            if (com.applovin.impl.sdk.v.a()) {
                                vVar3 = this.f5676d;
                                str5 = this.f5675c;
                                str6 = "Caching provided HTML for companion ad. No fetch required. HTML: " + c2;
                                vVar3.b(str5, str6);
                            }
                            b2.a(a(c2, Collections.emptyList(), this.f5694e));
                        }
                    } else if (b2.a() != i.a.IFRAME) {
                        return;
                    } else {
                        com.applovin.impl.sdk.v vVar11 = this.f5676d;
                        if (!com.applovin.impl.sdk.v.a()) {
                            return;
                        }
                        vVar = this.f5676d;
                        str = this.f5675c;
                        str2 = "Skip caching of iFrame resource...";
                    }
                    this.f5694e.a(true);
                    return;
                }
                com.applovin.impl.sdk.v vVar12 = this.f5676d;
                if (!com.applovin.impl.sdk.v.a()) {
                    return;
                }
                vVar2 = this.f5676d;
                str3 = this.f5675c;
                str4 = "Failed to retrieve non-video resources from companion ad. Skipping...";
                vVar2.e(str3, str4);
                return;
            }
            com.applovin.impl.sdk.v vVar13 = this.f5676d;
            if (!com.applovin.impl.sdk.v.a()) {
                return;
            }
            vVar = this.f5676d;
            str = this.f5675c;
            str2 = "No companion ad provided. Skipping...";
        } else {
            com.applovin.impl.sdk.v vVar14 = this.f5676d;
            if (!com.applovin.impl.sdk.v.a()) {
                return;
            }
            vVar = this.f5676d;
            str = this.f5675c;
            str2 = "Companion ad caching disabled. Skipping...";
        }
        vVar.b(str, str2);
    }

    private void k() {
        com.applovin.impl.b.o aN;
        Uri b2;
        if (b()) {
            return;
        }
        if (!this.f5694e.aV()) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Video caching disabled. Skipping...");
            }
        } else if (this.f5694e.aM() == null || (aN = this.f5694e.aN()) == null || (b2 = aN.b()) == null) {
        } else {
            Uri a2 = a(b2.toString(), Collections.emptyList(), false);
            if (a2 != null) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Video file successfully cached into: " + a2);
                }
                aN.a(a2);
                return;
            }
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.e(this.f5675c, "Failed to cache video file: " + aN);
            }
        }
    }

    private void l() {
        String aS;
        com.applovin.impl.sdk.v vVar;
        String str;
        String str2;
        if (b()) {
            return;
        }
        if (this.f5694e.aT() != null) {
            com.applovin.impl.sdk.v vVar2 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Begin caching HTML template. Fetching from " + this.f5694e.aT() + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            aS = e(this.f5694e.aT().toString(), this.f5694e.I(), this.f5694e.shouldUrlEncodeResourcePath());
        } else {
            aS = this.f5694e.aS();
        }
        if (StringUtils.isValidString(aS)) {
            String a2 = a(aS, this.f5694e.I(), this.f5682a);
            if (this.f5694e.q() && this.f5694e.isOpenMeasurementEnabled()) {
                a2 = this.f5674b.ao().a(a2);
            }
            this.f5694e.a(a2);
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (!com.applovin.impl.sdk.v.a()) {
                return;
            }
            vVar = this.f5676d;
            str = this.f5675c;
            str2 = "Finish caching HTML template " + this.f5694e.aS() + " for ad #" + this.f5694e.getAdIdNumber();
        } else {
            com.applovin.impl.sdk.v vVar4 = this.f5676d;
            if (!com.applovin.impl.sdk.v.a()) {
                return;
            }
            vVar = this.f5676d;
            str = this.f5675c;
            str2 = "Unable to load HTML template";
        }
        vVar.b(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.impl.sdk.e.c
    public void h() {
        this.f5694e.o().e();
        super.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.impl.sdk.e.c
    public void i() {
        this.f5694e.o().c();
        super.i();
    }

    @Override // com.applovin.impl.sdk.e.c, java.lang.Runnable
    public void run() {
        super.run();
        if (this.f5694e.f()) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Begin caching for VAST streaming ad #" + this.f5682a.getAdIdNumber() + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            c();
            if (this.f5694e.m()) {
                i();
            }
            if (this.f5694e.l() == a.b.COMPANION_AD) {
                j();
                l();
            } else {
                k();
            }
            if (!this.f5694e.m()) {
                i();
            }
            if (this.f5694e.l() == a.b.COMPANION_AD) {
                k();
            } else {
                j();
                l();
            }
        } else {
            com.applovin.impl.sdk.v vVar2 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Begin caching for VAST ad #" + this.f5682a.getAdIdNumber() + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            c();
            j();
            k();
            l();
            i();
        }
        com.applovin.impl.sdk.v vVar3 = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Finished caching VAST ad #" + this.f5694e.getAdIdNumber());
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f5694e.getCreatedAtMillis();
        com.applovin.impl.sdk.d.d.a(this.f5694e, this.f5674b);
        com.applovin.impl.sdk.d.d.a(currentTimeMillis, this.f5694e, this.f5674b);
        a(this.f5694e);
        this.f5694e.b();
        a();
    }
}
