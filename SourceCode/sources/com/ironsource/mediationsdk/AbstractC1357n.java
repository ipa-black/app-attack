package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.impressionData.ImpressionData;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.n  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1357n {

    /* renamed from: a  reason: collision with root package name */
    protected com.ironsource.mediationsdk.utils.a f11310a;

    /* renamed from: b  reason: collision with root package name */
    protected IronSourceSegment f11311b;

    /* renamed from: c  reason: collision with root package name */
    private HashSet<ImpressionDataListener> f11312c;

    public AbstractC1357n(HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        new HashSet();
        this.f11312c = hashSet;
        this.f11310a = new com.ironsource.mediationsdk.utils.a();
        this.f11311b = ironSourceSegment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String c() {
        return "fallback_" + System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(IronSource.AD_UNIT ad_unit) {
        this.f11310a.a(ad_unit, false);
    }

    public final void a(IronSourceSegment ironSourceSegment) {
        this.f11311b = ironSourceSegment;
    }

    public final void a(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.f11312c.add(impressionDataListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(com.ironsource.mediationsdk.server.b bVar, String str) {
        if (bVar == null) {
            IronLog.INTERNAL.verbose("no auctionResponseItem or listener");
            return;
        }
        ImpressionData a2 = bVar.a(str);
        if (a2 != null) {
            Iterator<ImpressionDataListener> it = this.f11312c.iterator();
            while (it.hasNext()) {
                ImpressionDataListener next = it.next();
                IronLog.CALLBACK.info("onImpressionSuccess " + next.getClass().getSimpleName() + ": " + a2);
                next.onImpressionSuccess(a2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(JSONObject jSONObject, IronSource.AD_UNIT ad_unit) {
        this.f11310a.a(ad_unit, jSONObject != null ? jSONObject.optBoolean("isAdUnitCapped", false) : false);
    }

    public final void b() {
        synchronized (this) {
            this.f11312c.clear();
        }
    }

    public final void b(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.f11312c.remove(impressionDataListener);
        }
    }
}
