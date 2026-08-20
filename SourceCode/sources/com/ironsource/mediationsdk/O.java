package com.ironsource.mediationsdk;

import android.text.TextUtils;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class O implements com.ironsource.mediationsdk.sdk.f {

    /* renamed from: a  reason: collision with root package name */
    com.ironsource.mediationsdk.sdk.j f10781a;

    /* renamed from: b  reason: collision with root package name */
    com.ironsource.mediationsdk.sdk.f f10782b;

    /* renamed from: g  reason: collision with root package name */
    private com.ironsource.mediationsdk.utils.l f10787g;

    /* renamed from: h  reason: collision with root package name */
    private NetworkSettings f10788h;
    private String i;

    /* renamed from: c  reason: collision with root package name */
    private final String f10783c = getClass().getName();

    /* renamed from: e  reason: collision with root package name */
    private AtomicBoolean f10785e = new AtomicBoolean(true);

    /* renamed from: f  reason: collision with root package name */
    private AtomicBoolean f10786f = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private IronSourceLoggerManager f10784d = IronSourceLoggerManager.getLogger();

    private synchronized void a(IronSourceError ironSourceError) {
        AtomicBoolean atomicBoolean = this.f10786f;
        if (atomicBoolean != null) {
            atomicBoolean.set(false);
        }
        AtomicBoolean atomicBoolean2 = this.f10785e;
        if (atomicBoolean2 != null) {
            atomicBoolean2.set(true);
        }
        com.ironsource.mediationsdk.sdk.f fVar = this.f10782b;
        if (fVar != null) {
            fVar.a(false, ironSourceError);
        }
    }

    private AbstractAdapter b(String str) {
        try {
            H a2 = H.a();
            AbstractAdapter b2 = a2.b(str);
            if (b2 == null) {
                Class<?> cls = Class.forName("com.ironsource.adapters." + str.toLowerCase(Locale.ENGLISH) + "." + str + "Adapter");
                b2 = (AbstractAdapter) cls.getMethod(IronSourceConstants.START_ADAPTER, String.class).invoke(cls, str);
                if (b2 == null) {
                    return null;
                }
            }
            a2.a(b2);
            return b2;
        } catch (Throwable th) {
            this.f10784d.log(IronSourceLogger.IronSourceTag.API, str + " initialization failed - please verify that required dependencies are in you build path.", 2);
            this.f10784d.logException(IronSourceLogger.IronSourceTag.API, this.f10783c + ":startOfferwallAdapter", th);
            return null;
        }
    }

    public final void a(String str) {
        com.ironsource.mediationsdk.sdk.j jVar;
        String str2 = "OWManager:showOfferwall(" + str + ")";
        try {
            if (!IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getCurrentActiveActivity())) {
                this.f10782b.onOfferwallShowFailed(ErrorBuilder.buildNoInternetConnectionShowFailError(IronSourceConstants.OFFERWALL_AD_UNIT));
                return;
            }
            this.i = str;
            com.ironsource.mediationsdk.model.j a2 = this.f10787g.f11449c.f11256c.a(str);
            if (a2 == null) {
                this.f10784d.log(IronSourceLogger.IronSourceTag.INTERNAL, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
                a2 = this.f10787g.f11449c.f11256c.a();
                if (a2 == null) {
                    this.f10784d.log(IronSourceLogger.IronSourceTag.INTERNAL, "Default placement was not found, please make sure you are using the right placements.", 3);
                    return;
                }
            }
            this.f10784d.log(IronSourceLogger.IronSourceTag.INTERNAL, str2, 1);
            AtomicBoolean atomicBoolean = this.f10786f;
            if (atomicBoolean == null || !atomicBoolean.get() || (jVar = this.f10781a) == null) {
                return;
            }
            jVar.showOfferwall(String.valueOf(a2.f11271a), this.f10788h.getRewardedVideoSettings());
        } catch (Exception e2) {
            this.f10784d.logException(IronSourceLogger.IronSourceTag.INTERNAL, str2, e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0060 A[Catch: all -> 0x0103, TRY_LEAVE, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x003c, B:7:0x0040, B:9:0x0046, B:12:0x0051, B:14:0x005c, B:16:0x0060, B:19:0x006d, B:21:0x0077, B:24:0x0084, B:26:0x008a, B:29:0x0097, B:31:0x009f, B:32:0x00a2, B:34:0x00aa, B:38:0x00ea, B:37:0x00cf), top: B:46:0x0001, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006d A[Catch: all -> 0x0103, TRY_ENTER, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x003c, B:7:0x0040, B:9:0x0046, B:12:0x0051, B:14:0x005c, B:16:0x0060, B:19:0x006d, B:21:0x0077, B:24:0x0084, B:26:0x008a, B:29:0x0097, B:31:0x009f, B:32:0x00a2, B:34:0x00aa, B:38:0x00ea, B:37:0x00cf), top: B:46:0x0001, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.O.a(java.lang.String, java.lang.String):void");
    }

    @Override // com.ironsource.mediationsdk.sdk.f
    public final void a(boolean z, IronSourceError ironSourceError) {
        this.f10784d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallAvailable(isAvailable: " + z + ")", 1);
        if (!z) {
            a(ironSourceError);
            return;
        }
        this.f10786f.set(true);
        com.ironsource.mediationsdk.sdk.f fVar = this.f10782b;
        if (fVar != null) {
            fVar.onOfferwallAvailable(true);
        }
    }

    public final synchronized boolean a() {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.f10786f;
        return atomicBoolean != null ? atomicBoolean.get() : false;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onGetOfferwallCreditsFailed(IronSourceError ironSourceError) {
        this.f10784d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onGetOfferwallCreditsFailed(" + ironSourceError + ")", 1);
        com.ironsource.mediationsdk.sdk.f fVar = this.f10782b;
        if (fVar != null) {
            fVar.onGetOfferwallCreditsFailed(ironSourceError);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final boolean onOfferwallAdCredited(int i, int i2, boolean z) {
        this.f10784d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallAdCredited()", 1);
        com.ironsource.mediationsdk.sdk.f fVar = this.f10782b;
        if (fVar != null) {
            return fVar.onOfferwallAdCredited(i, i2, z);
        }
        return false;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onOfferwallAvailable(boolean z) {
        a(z, (IronSourceError) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onOfferwallClosed() {
        this.f10784d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallClosed()", 1);
        com.ironsource.mediationsdk.sdk.f fVar = this.f10782b;
        if (fVar != null) {
            fVar.onOfferwallClosed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onOfferwallOpened() {
        this.f10784d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallOpened()", 1);
        int b2 = com.ironsource.mediationsdk.utils.o.a().b(0);
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            if (!TextUtils.isEmpty(this.i)) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.i);
            }
            mediationAdditionalData.put(IronSourceConstants.KEY_SESSION_DEPTH, b2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(305, mediationAdditionalData));
        com.ironsource.mediationsdk.utils.o.a().a(0);
        com.ironsource.mediationsdk.sdk.f fVar = this.f10782b;
        if (fVar != null) {
            fVar.onOfferwallOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onOfferwallShowFailed(IronSourceError ironSourceError) {
        this.f10784d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallShowFailed(" + ironSourceError + ")", 1);
        com.ironsource.mediationsdk.sdk.f fVar = this.f10782b;
        if (fVar != null) {
            fVar.onOfferwallShowFailed(ironSourceError);
        }
    }
}
