package com.applovin.impl.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.network.h;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onesignal.outcomes.OSOutcomeConstants;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class j implements AppLovinCommunicatorPublisher, AppLovinCommunicatorSubscriber {

    /* renamed from: a  reason: collision with root package name */
    private final n f5817a;

    /* renamed from: b  reason: collision with root package name */
    private final AppLovinCommunicator f5818b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(n nVar) {
        this.f5817a = nVar;
        AppLovinCommunicator appLovinCommunicator = AppLovinCommunicator.getInstance(nVar.P());
        this.f5818b = appLovinCommunicator;
        if (nVar.e() || !((Boolean) nVar.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            return;
        }
        appLovinCommunicator.a(nVar);
        appLovinCommunicator.subscribe(this, com.applovin.impl.communicator.c.f4615a);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.os.Bundle b(com.applovin.impl.mediation.a.a r4) {
        /*
            r3 = this;
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            java.lang.String r1 = "id"
            java.lang.String r2 = r4.f()
            r0.putString(r1, r2)
            java.lang.String r1 = "network_name"
            java.lang.String r2 = r4.S()
            r0.putString(r1, r2)
            java.lang.String r1 = "max_ad_unit_id"
            java.lang.String r2 = r4.getAdUnitId()
            r0.putString(r1, r2)
            java.lang.String r1 = "third_party_ad_placement_id"
            java.lang.String r2 = r4.p()
            r0.putString(r1, r2)
            com.applovin.mediation.MaxAdFormat r1 = r4.getFormat()
            java.lang.String r1 = r1.getLabel()
            java.lang.String r2 = "ad_format"
            r0.putString(r2, r1)
            java.lang.String r1 = r4.getCreativeId()
            boolean r1 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r1)
            if (r1 == 0) goto L49
            java.lang.String r1 = "creative_id"
            java.lang.String r2 = r4.getCreativeId()
            r0.putString(r1, r2)
        L49:
            java.lang.String r1 = r4.getDspName()
            boolean r1 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r1)
            if (r1 == 0) goto L5c
            java.lang.String r1 = "dsp_name"
            java.lang.String r2 = r4.getDspName()
            r0.putString(r1, r2)
        L5c:
            com.applovin.mediation.MaxAdFormat r1 = r4.m()
            if (r1 == 0) goto L7d
            com.applovin.mediation.MaxAdFormat r1 = r4.m()
            java.lang.String r1 = r1.getLabel()
            boolean r1 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r1)
            if (r1 == 0) goto L7d
            com.applovin.mediation.MaxAdFormat r1 = r4.m()
            java.lang.String r1 = r1.getLabel()
            java.lang.String r2 = "hybrid_ad_format"
            r0.putString(r2, r1)
        L7d:
            boolean r1 = r4.l()
            if (r1 == 0) goto L8d
            java.lang.String r1 = "custom_js_network_name"
        L85:
            java.lang.String r2 = r4.getNetworkName()
            r0.putString(r1, r2)
            goto L9c
        L8d:
            java.lang.String r1 = "CUSTOM_NETWORK_SDK"
            java.lang.String r2 = r4.S()
            boolean r1 = r1.equalsIgnoreCase(r2)
            if (r1 == 0) goto L9c
            java.lang.String r1 = "custom_sdk_network_name"
            goto L85
        L9c:
            org.json.JSONObject r1 = r4.b()
            android.os.Bundle r1 = com.applovin.impl.sdk.utils.JsonUtils.toBundle(r1)
            r0.putAll(r1)
            boolean r1 = r4 instanceof com.applovin.impl.mediation.a.b
            if (r1 == 0) goto Le2
            com.applovin.impl.mediation.a.b r4 = (com.applovin.impl.mediation.a.b) r4
            android.view.View r4 = r4.o()
            if (r4 == 0) goto Ldb
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.Class r2 = r4.getClass()
            java.lang.String r2 = r2.getName()
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = 64
            java.lang.StringBuilder r1 = r1.append(r2)
            int r4 = r4.hashCode()
            java.lang.String r4 = java.lang.Integer.toHexString(r4)
            java.lang.StringBuilder r4 = r1.append(r4)
            java.lang.String r4 = r4.toString()
            goto Ldd
        Ldb:
            java.lang.String r4 = "N/A"
        Ldd:
            java.lang.String r1 = "ad_view"
            r0.putString(r1, r4)
        Le2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.j.b(com.applovin.impl.mediation.a.a):android.os.Bundle");
    }

    public void a() {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            a(new Bundle(), "privacy_setting_updated");
        }
    }

    public void a(Bundle bundle, String str) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue() && !this.f5817a.e()) {
            this.f5818b.getMessagingService().publish(CommunicatorMessageImpl.create(bundle, str, this));
        }
    }

    public void a(com.applovin.impl.mediation.a.a aVar) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue() && this.f5818b.hasSubscriber("max_revenue_events")) {
            Bundle b2 = b(aVar);
            b2.putAll(JsonUtils.toBundle(aVar.c()));
            b2.putString("country_code", this.f5817a.t().getCountryCode());
            BundleUtils.putStringIfValid("user_segment", this.f5817a.r().getName(), b2);
            a(b2, "max_revenue_events");
        }
    }

    public void a(com.applovin.impl.mediation.a.a aVar, String str) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue() && this.f5818b.hasSubscriber("max_ad_events")) {
            Bundle b2 = b(aVar);
            b2.putString(SessionDescription.ATTR_TYPE, str);
            this.f5817a.D();
            if (v.a()) {
                this.f5817a.D().b("CommunicatorService", "Sending \"max_ad_events\" message: " + b2);
            }
            a(b2, "max_ad_events");
        }
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str);
            bundle.putInt("init_status", initializationStatus.getCode());
            a(bundle, "adapter_initialization_status");
        }
    }

    public void a(String str) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            if (TextUtils.isEmpty(str)) {
                a(Bundle.EMPTY, "live_network_updated");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("live_network", str);
            a(bundle, "live_network_updated");
        }
    }

    public void a(String str, String str2) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str2);
            bundle.putString("sdk_version", str);
            a(bundle, "network_sdk_version_updated");
        }
    }

    public void a(String str, String str2, int i, Object obj, String str3, boolean z) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            bundle.putString("url", str2);
            bundle.putInt("code", i);
            bundle.putBundle(TtmlNode.TAG_BODY, JsonUtils.toBundle(obj));
            bundle.putBoolean(FirebaseAnalytics.Param.SUCCESS, z);
            BundleUtils.putString("error_message", str3, bundle);
            a(bundle, "receive_http_response");
        }
    }

    public void a(String str, String str2, String str3) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            String maybeConvertToIndentedString = JsonUtils.maybeConvertToIndentedString(str3, 2);
            String maybeConvertToIndentedString2 = JsonUtils.maybeConvertToIndentedString(str, 2);
            Bundle bundle = new Bundle();
            bundle.putString("request_url", str2);
            bundle.putString("request_body", maybeConvertToIndentedString);
            bundle.putString("response", maybeConvertToIndentedString2);
            a(bundle, "responses");
        }
    }

    public void a(JSONObject jSONObject, boolean z) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5817a.C());
            bundle.putString("applovin_random_token", this.f5817a.p());
            bundle.putString("compass_random_token", this.f5817a.o());
            bundle.putString(OSOutcomeConstants.DEVICE_TYPE, AppLovinSdkUtils.isTablet(this.f5817a.P()) ? "tablet" : "phone");
            bundle.putString("init_success", String.valueOf(z));
            bundle.putParcelableArrayList("installed_mediation_adapters", JsonUtils.toBundle(com.applovin.impl.mediation.c.c.a(this.f5817a)));
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "communicator_settings", (JSONObject) null);
            Bundle bundle2 = (Bundle) bundle.clone();
            bundle2.putString("user_id", this.f5817a.n());
            bundle2.putBundle(com.appnext.core.a.b.hW, JsonUtils.toBundle(JsonUtils.getJSONObject(jSONObject2, "safedk_settings")));
            this.f5817a.D();
            if (v.a()) {
                this.f5817a.D().b("CommunicatorService", "Sending \"safedk_init\" message: " + bundle);
            }
            a(bundle2, "safedk_init");
        }
    }

    public void b(com.applovin.impl.mediation.a.a aVar, String str) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue() && this.f5818b.hasSubscriber("ad_callback_blocked_after_hidden")) {
            Bundle b2 = b(aVar);
            b2.putString("callback_name", str);
            a(b2, "ad_callback_blocked_after_hidden");
        }
    }

    public void b(String str) {
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            if (TextUtils.isEmpty(str)) {
                a(Bundle.EMPTY, "test_mode_network_updated");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("test_mode_network", str);
            a(bundle, "test_mode_network_updated");
        }
    }

    public boolean c(String str) {
        return com.applovin.impl.communicator.c.f4615a.contains(str);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "applovin_sdk";
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        Map<String, Object> map;
        int i;
        if (((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.fu)).booleanValue()) {
            if ("send_http_request".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                Bundle messageData = appLovinCommunicatorMessage.getMessageData();
                Map<String, String> stringMap = BundleUtils.toStringMap(messageData.getBundle("query_params"));
                Map<String, Object> map2 = BundleUtils.toMap(messageData.getBundle("post_body"));
                Map<String, String> stringMap2 = BundleUtils.toStringMap(messageData.getBundle("headers"));
                String string = messageData.getString("id", "");
                if (!map2.containsKey(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY)) {
                    map2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5817a.C());
                }
                this.f5817a.X().a(new h.a().c(messageData.getString("url")).d(messageData.getString("backup_url")).a(stringMap).c(map2).b(stringMap2).a(((Boolean) this.f5817a.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()).a(string).a());
            } else if (!"send_http_request_v2".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                if ("set_ad_request_query_params".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                    this.f5817a.v().addCustomQueryParams(Utils.stringifyObjectMap(BundleUtils.toMap(appLovinCommunicatorMessage.getMessageData())));
                } else if ("set_ad_request_post_body".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                    this.f5817a.v().setCustomPostBody(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
                } else if ("set_mediate_request_post_body_data".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
                    this.f5817a.H().setCustomPostBodyData(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
                }
            } else {
                Bundle messageData2 = appLovinCommunicatorMessage.getMessageData();
                String string2 = messageData2.getString("http_method", ShareTarget.METHOD_POST);
                long millis = messageData2.containsKey("timeout_sec") ? TimeUnit.SECONDS.toMillis(messageData2.getLong("timeout_sec")) : ((Long) this.f5817a.a(com.applovin.impl.sdk.c.b.f0do)).longValue();
                int i2 = messageData2.getInt("retry_count", ((Integer) this.f5817a.a(com.applovin.impl.sdk.c.b.dp)).intValue());
                long millis2 = messageData2.containsKey("retry_delay_sec") ? TimeUnit.SECONDS.toMillis(messageData2.getLong("retry_delay_sec")) : ((Long) this.f5817a.a(com.applovin.impl.sdk.c.b.dq)).longValue();
                Map<String, String> stringMap3 = BundleUtils.toStringMap(messageData2.getBundle("query_params"));
                long j = millis2;
                if (ShareTarget.METHOD_GET.equalsIgnoreCase(string2)) {
                    if (messageData2.getBoolean("include_data_collector_info", true)) {
                        stringMap3.putAll(BundleUtils.toStringMap(CollectionUtils.toBundle(this.f5817a.Y().a(null, false, false))));
                    }
                    i = i2;
                    map = null;
                } else {
                    map = BundleUtils.toMap(messageData2.getBundle("post_body"));
                    if (messageData2.getBoolean("include_data_collector_info", true)) {
                        Map<String, Object> h2 = this.f5817a.Y().h();
                        Map<String, Object> d2 = this.f5817a.Y().d();
                        if (d2.containsKey("idfv") && d2.containsKey("idfv_scope")) {
                            i = i2;
                            String str = (String) d2.get("idfv");
                            int intValue = ((Integer) d2.get("idfv_scope")).intValue();
                            d2.remove("idfv");
                            d2.remove("idfv_scope");
                            h2.put("idfv", str);
                            h2.put("idfv_scope", Integer.valueOf(intValue));
                        } else {
                            i = i2;
                        }
                        h2.put("server_installed_at", this.f5817a.a(com.applovin.impl.sdk.c.b.ai));
                        h2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5817a.C());
                        map.put("app", h2);
                        map.put("device", d2);
                    } else {
                        i = i2;
                    }
                }
                this.f5817a.V().a(new com.applovin.impl.sdk.network.a(appLovinCommunicatorMessage.getPublisherId(), com.applovin.impl.sdk.network.c.a(this.f5817a).a(messageData2.getString("url")).c(messageData2.getString("backup_url")).a(stringMap3).b(string2).b(BundleUtils.toStringMap(messageData2.getBundle("headers"))).a(map != null ? new JSONObject(map) : null).b((int) millis).a(i).c((int) j).a((c.a) new JSONObject()).c(messageData2.getBoolean("is_encoding_enabled", false)).a(), this.f5817a), o.a.MAIN);
            }
        }
    }
}
