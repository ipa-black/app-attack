package com.ironsource.mediationsdk;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.ironsource.mediationsdk.a  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1344a {

    /* renamed from: b  reason: collision with root package name */
    int f10896b;

    /* renamed from: d  reason: collision with root package name */
    AbstractC1345b f10898d;

    /* renamed from: e  reason: collision with root package name */
    AbstractC1345b f10899e;

    /* renamed from: f  reason: collision with root package name */
    String f10900f;

    /* renamed from: g  reason: collision with root package name */
    String f10901g;
    Boolean j;
    boolean k;
    private String m = IronSourceConstants.EVENTS_ERROR_REASON;
    private String n = "status";
    private String o = IronSourceConstants.EVENTS_PLACEMENT_NAME;
    private String p = IronSourceConstants.EVENTS_REWARD_NAME;
    private String q = IronSourceConstants.EVENTS_REWARD_AMOUNT;
    private String r = "providerPriority";
    boolean i = false;
    boolean l = true;

    /* renamed from: c  reason: collision with root package name */
    final CopyOnWriteArrayList<AbstractC1345b> f10897c = new CopyOnWriteArrayList<>();

    /* renamed from: h  reason: collision with root package name */
    IronSourceLoggerManager f10902h = IronSourceLoggerManager.getLogger();

    /* renamed from: a  reason: collision with root package name */
    com.ironsource.mediationsdk.utils.e f10895a = null;

    abstract void a(Context context, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AbstractC1345b abstractC1345b) {
        this.f10897c.add(abstractC1345b);
        com.ironsource.mediationsdk.utils.e eVar = this.f10895a;
        if (eVar != null) {
            synchronized (eVar) {
                try {
                    if (abstractC1345b.m != 99) {
                        eVar.f11412a.put(eVar.d(abstractC1345b), Integer.valueOf(abstractC1345b.m));
                    }
                } catch (Exception e2) {
                    eVar.f11414c.logException(IronSourceLogger.IronSourceTag.INTERNAL, "addSmash", e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean a() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        this.l = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(AbstractC1345b abstractC1345b) {
        try {
            String str = H.a().l;
            if (!TextUtils.isEmpty(str) && abstractC1345b.f11075b != null) {
                abstractC1345b.q.log(IronSourceLogger.IronSourceTag.ADAPTER_API, abstractC1345b.j() + ":setMediationSegment(segment:" + str + ")", 1);
                abstractC1345b.f11075b.setMediationSegment(str);
            }
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (TextUtils.isEmpty(pluginType)) {
                return;
            }
            String pluginFrameworkVersion = ConfigFile.getConfigFile().getPluginFrameworkVersion();
            if (abstractC1345b.f11075b != null) {
                abstractC1345b.f11075b.setPluginData(pluginType, pluginFrameworkVersion);
            }
        } catch (Exception e2) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, ":setCustomParams():" + e2.toString(), 3);
        }
    }
}
