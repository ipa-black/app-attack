package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.yandex.metrica.PreloadInfo;
import com.yandex.metrica.YandexMetricaConfig;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.na  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1732na implements InterfaceC1853sa<YandexMetricaConfig> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1445bm f15248a;

    /* renamed from: b  reason: collision with root package name */
    private final C1997ya f15249b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1732na(InterfaceC1445bm interfaceC1445bm, C1997ya c1997ya) {
        this.f15248a = interfaceC1445bm;
        this.f15249b = c1997ya;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1853sa
    public JSONObject a(YandexMetricaConfig yandexMetricaConfig) {
        JSONArray b2;
        YandexMetricaConfig yandexMetricaConfig2 = yandexMetricaConfig;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (yandexMetricaConfig2 != null) {
                JSONObject putOpt = jSONObject2.put("api_key", yandexMetricaConfig2.apiKey).putOpt("app_version", yandexMetricaConfig2.appVersion).putOpt("session_timeout", yandexMetricaConfig2.sessionTimeout).putOpt("crash_reporting", yandexMetricaConfig2.crashReporting).putOpt("native_crash_reporting", yandexMetricaConfig2.nativeCrashReporting).putOpt(FirebaseAnalytics.Param.LOCATION, a(yandexMetricaConfig2.location)).putOpt("location_tracking", yandexMetricaConfig2.locationTracking).putOpt("logs", yandexMetricaConfig2.logs);
                PreloadInfo preloadInfo = yandexMetricaConfig2.preloadInfo;
                putOpt.putOpt("preload_info", preloadInfo == null ? null : new JSONObject().putOpt("tracking_id", preloadInfo.getTrackingId()).putOpt("additional_parameters", Tl.f(preloadInfo.getAdditionalParams()))).putOpt("first_activation_as_update", yandexMetricaConfig2.firstActivationAsUpdate).putOpt("statistics_sending", yandexMetricaConfig2.statisticsSending).putOpt("max_reports_in_database_count", yandexMetricaConfig2.maxReportsInDatabaseCount).putOpt("error_environment", Tl.f(yandexMetricaConfig2.errorEnvironment)).putOpt("user_profile_id", yandexMetricaConfig2.userProfileID).putOpt("revenue_auto_tracking_enabled", yandexMetricaConfig2.revenueAutoTrackingEnabled).putOpt("sessions_auto_tracking_enabled", yandexMetricaConfig2.sessionsAutoTrackingEnabled).putOpt("app_open_tracking_enabled", yandexMetricaConfig2.appOpenTrackingEnabled);
                if (yandexMetricaConfig2 instanceof com.yandex.metrica.i) {
                    com.yandex.metrica.i iVar = (com.yandex.metrica.i) yandexMetricaConfig2;
                    JSONObject putOpt2 = jSONObject2.putOpt(OSOutcomeConstants.DEVICE_TYPE, iVar.f12560a).putOpt("clids", Tl.f(iVar.f12561b)).putOpt("distribution_referrer", iVar.f12562c);
                    List<String> list = iVar.f12563d;
                    if (list == null) {
                        b2 = null;
                    } else if (list.isEmpty()) {
                        b2 = new JSONArray();
                    } else {
                        b2 = Tl.b((List<?>) list);
                    }
                    JSONObject putOpt3 = putOpt2.putOpt("custom_hosts", b2).putOpt("app_build_number", iVar.f12564e).putOpt("dispatch_period_seconds", iVar.f12565f).putOpt("max_reports_count", iVar.f12566g).putOpt("app_environment", Tl.f(iVar.f12567h)).putOpt("preload_info_auto_tracking", iVar.i).putOpt("permissions_collection", iVar.j).putOpt("anr_monitoring", iVar.k);
                    this.f15249b.getClass();
                    putOpt3.putOpt("pulse_config", null).putOpt("rtm_config", null).put("crash_transformer_set", iVar.l != null);
                }
            }
            jSONObject.putOpt(Constants.CONFIG, jSONObject2).putOpt("process_name", ((Xl) this.f15248a).b());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject a(Location location) throws JSONException {
        if (location == null) {
            return null;
        }
        return new JSONObject().putOpt(IronSourceConstants.EVENTS_PROVIDER, location.getProvider()).put("timestamp", location.getTime()).put("precision", location.getAccuracy()).put("altitude", location.getAltitude()).put("lon", location.getLongitude()).put(com.appnext.base.b.i.fC, location.getLatitude()).put("direction", location.getBearing()).put("speed", location.getSpeed());
    }
}
