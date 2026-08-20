package com.appodeal.ads;

import android.app.Activity;
import com.appodeal.ads.l;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.libs.network.NetworkStatus;
import com.appodeal.ads.q;
import com.appodeal.ads.r;
/* loaded from: classes.dex */
public abstract class p<AdRequestType extends r<AdObjectType>, AdObjectType extends l, RendererParams extends q> {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f7275b = new a(LogConstants.MSG_NOT_INITIALIZED);

        /* renamed from: c  reason: collision with root package name */
        public static final a f7276c = new a(LogConstants.EVENT_NETWORK_CONNECTION);

        /* renamed from: d  reason: collision with root package name */
        public static final a f7277d = new a(LogConstants.EVENT_PAUSE);

        /* renamed from: e  reason: collision with root package name */
        public static final a f7278e = new a(LogConstants.MSG_AD_TYPE_DISABLED);

        /* renamed from: f  reason: collision with root package name */
        public static final a f7279f = new a(LogConstants.MSG_AD_TYPE_DISABLED_BY_SEGMENT);

        /* renamed from: a  reason: collision with root package name */
        public final String f7280a;

        public a(String str) {
            this.f7280a = str;
        }
    }

    public void a(Activity activity, RendererParams rendererparams, u<AdObjectType, AdRequestType, ?> uVar, a aVar) {
        uVar.a(LogConstants.EVENT_SHOW_FAILED, aVar.f7280a);
    }

    public abstract boolean a(Activity activity, RendererParams rendererparams, u<AdObjectType, AdRequestType, ?> uVar);

    public boolean b(Activity activity, RendererParams rendererparams, u<AdObjectType, AdRequestType, ?> uVar) {
        a aVar;
        if (uVar.o()) {
            uVar.a(rendererparams.f7287a);
            if (uVar.m()) {
                aVar = a.f7278e;
            } else if (uVar.n()) {
                aVar = a.f7279f;
            } else if (com.appodeal.ads.context.b.f6583b.getTopActivityFlow().getValue() == null) {
                aVar = a.f7277d;
            } else if (NetworkStatus.INSTANCE.isConnected()) {
                return a(activity, rendererparams, uVar);
            } else {
                aVar = a.f7276c;
            }
        } else {
            aVar = a.f7275b;
        }
        a(activity, rendererparams, uVar, aVar);
        return false;
    }
}
