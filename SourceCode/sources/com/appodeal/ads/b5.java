package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.service.ConnectorCallback;
import com.appodeal.ads.modules.common.internal.service.ServiceData;
import com.appodeal.ads.utils.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes.dex */
public final class b5 implements ConnectorCallback {

    /* renamed from: a  reason: collision with root package name */
    public final com.appodeal.ads.services.c f6574a;

    public /* synthetic */ b5() {
        this(com.appodeal.ads.services.g.b());
    }

    public b5(com.appodeal.ads.services.c servicesSolution) {
        Intrinsics.checkNotNullParameter(servicesSolution, "servicesSolution");
        this.f6574a = servicesSolution;
    }

    @Override // com.appodeal.ads.modules.common.internal.service.ConnectorCallback
    public final Map<String, String> getPartnerParams() {
        Object obj;
        Iterator it = this.f6574a.getServicesData().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((ServiceData) obj) instanceof ServiceData.Firebase) {
                break;
            }
        }
        ServiceData.Firebase firebase = obj instanceof ServiceData.Firebase ? (ServiceData.Firebase) obj : null;
        Map mapOf = MapsKt.mapOf(TuplesKt.to("appodeal_framework", Appodeal.getFrameworkName()), TuplesKt.to("appodeal_framework_version", Appodeal.getEngineVersion()), TuplesKt.to("appodeal_plugin_version", Appodeal.getPluginVersion()), TuplesKt.to("appodeal_sdk_version", Appodeal.getVersion()), TuplesKt.to("appodeal_segment_id", Long.valueOf(Appodeal.getSegmentId())), TuplesKt.to("appodeal_session_uuid", q4.m().j()), TuplesKt.to("appodeal_token", x2.f()), TuplesKt.to("firebase_keywords", firebase == null ? null : firebase.getKeywordsAsString()));
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : mapOf.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            Pair pair = value == null ? null : TuplesKt.to(str, value.toString());
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }

    @Override // com.appodeal.ads.modules.common.internal.service.ConnectorCallback
    public final void onServiceDataUpdated(ServiceData serviceData) {
        Intrinsics.checkNotNullParameter(serviceData, "serviceData");
        if (serviceData instanceof ServiceData.Adjust) {
            for (Map.Entry<String, Object> entry : ((ServiceData.Adjust) serviceData).getConversionData().entrySet()) {
                q4.a(entry.getKey(), entry.getValue());
            }
        } else if (serviceData instanceof ServiceData.AppsFlyer) {
            for (Map.Entry<String, Object> entry2 : ((ServiceData.AppsFlyer) serviceData).getConversionData().entrySet()) {
                q4.a(entry2.getKey(), entry2.getValue());
            }
        } else if (!(serviceData instanceof ServiceData.Firebase)) {
            boolean z = serviceData instanceof ServiceData.FacebookAnalytics;
        } else {
            ServiceData.Firebase firebase = (ServiceData.Firebase) serviceData;
            if (StringsKt.isBlank(firebase.getAppInstanceId())) {
                Log.log("FirebaseService", "appInstanceId is null or empty");
            }
            q4.b("keywords", firebase.getKeywordsAsString());
        }
    }
}
