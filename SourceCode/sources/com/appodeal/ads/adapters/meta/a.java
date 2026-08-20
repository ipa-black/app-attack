package com.appodeal.ads.adapters.meta;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.appodeal.ads.adapters.meta.MetaNetwork;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
import com.facebook.ads.AudienceNetworkAds;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList f6509a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f6510b = false;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6511c = false;

    /* renamed from: com.appodeal.ads.adapters.meta.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0115a {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, AudienceNetworkAds.InitResult initResult) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            InterfaceC0115a interfaceC0115a = (InterfaceC0115a) it.next();
            if (initResult.isSuccess()) {
                interfaceC0115a.b();
            } else {
                interfaceC0115a.a();
            }
        }
        synchronized (a.class) {
            this.f6509a.removeAll(list);
        }
    }

    public final void a(final Context context, String str, MetaNetwork.a aVar) {
        synchronized (a.class) {
            if (this.f6511c) {
                aVar.b();
            } else {
                if (this.f6509a == null) {
                    this.f6509a = new ArrayList();
                }
                this.f6509a.add(aVar);
            }
        }
        if (this.f6510b) {
            return;
        }
        this.f6510b = true;
        AudienceNetworkAds.InitSettingsBuilder buildInitSettings = AudienceNetworkAds.buildInitSettings(context);
        if (!TextUtils.isEmpty(str)) {
            buildInitSettings.withMediationService(str);
        }
        buildInitSettings.withInitListener(new AudienceNetworkAds.InitListener() { // from class: com.appodeal.ads.adapters.meta.a$$ExternalSyntheticLambda0
            @Override // com.facebook.ads.AudienceNetworkAds.InitListener
            public final void onInitialized(AudienceNetworkAds.InitResult initResult) {
                a.this.a(context, initResult);
            }
        }).initialize();
    }

    public final boolean a() {
        return this.f6511c;
    }

    /* renamed from: b */
    public final void a(Context context, final AudienceNetworkAds.InitResult initResult) {
        final ArrayList arrayList;
        Log.log(LogConstants.KEY_NETWORK, "Log", String.format("Meta %s", initResult.getMessage()));
        this.f6511c = initResult.isSuccess();
        this.f6510b = false;
        if (this.f6509a != null) {
            synchronized (a.class) {
                arrayList = new ArrayList(this.f6509a);
            }
            new Handler(context.getMainLooper()).post(new Runnable() { // from class: com.appodeal.ads.adapters.meta.a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a(arrayList, initResult);
                }
            });
        }
    }
}
