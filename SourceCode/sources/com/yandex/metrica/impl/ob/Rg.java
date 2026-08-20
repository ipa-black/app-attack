package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import com.yandex.metrica.impl.ob.C1918v3;
import com.yandex.metrica.networktasks.api.IParamsAppender;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Rg implements IParamsAppender<Mg> {

    /* renamed from: a  reason: collision with root package name */
    private final Kg f13824a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1660kd f13825b;

    public Rg(Kg kg, InterfaceC1660kd interfaceC1660kd) {
        this.f13824a = kg;
        this.f13825b = interfaceC1660kd;
    }

    private void a(Uri.Builder builder, C1902ub c1902ub, String str) {
        if (!c1902ub.a()) {
            builder.appendQueryParameter(this.f13824a.a(str), "");
        } else {
            builder.appendQueryParameter(this.f13824a.a(str), c1902ub.f15814a.f15758b);
        }
    }

    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    public void appendParams(Uri.Builder builder, Object obj) {
        int i;
        C1489dg a2;
        Mg mg = (Mg) obj;
        builder.path("analytics/startup");
        builder.appendQueryParameter(this.f13824a.a("deviceid"), mg.g());
        C1845s2 u = F0.g().u();
        C2022zb a3 = mg.a();
        if (u.c()) {
            builder.appendQueryParameter(this.f13824a.a("adv_id"), "");
            builder.appendQueryParameter(this.f13824a.a("oaid"), "");
            builder.appendQueryParameter(this.f13824a.a("yandex_adv_id"), "");
        } else {
            a(builder, a3.a(), "adv_id");
            a(builder, a3.b(), "oaid");
            a(builder, a3.c(), "yandex_adv_id");
        }
        builder.appendQueryParameter(this.f13824a.a("app_set_id"), mg.d());
        builder.appendQueryParameter(this.f13824a.a("app_set_id_scope"), mg.e());
        builder.appendQueryParameter(this.f13824a.a("app_platform"), MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        builder.appendQueryParameter(this.f13824a.a("protocol_version"), "2");
        builder.appendQueryParameter(this.f13824a.a("analytics_sdk_version_name"), "5.3.0");
        builder.appendQueryParameter(this.f13824a.a("model"), mg.m());
        builder.appendQueryParameter(this.f13824a.a("manufacturer"), mg.l());
        builder.appendQueryParameter(this.f13824a.a("os_version"), mg.o());
        builder.appendQueryParameter(this.f13824a.a("screen_width"), String.valueOf(mg.u()));
        builder.appendQueryParameter(this.f13824a.a("screen_height"), String.valueOf(mg.t()));
        builder.appendQueryParameter(this.f13824a.a("screen_dpi"), String.valueOf(mg.s()));
        builder.appendQueryParameter(this.f13824a.a("scalefactor"), String.valueOf(mg.r()));
        builder.appendQueryParameter(this.f13824a.a("locale"), mg.k());
        builder.appendQueryParameter(this.f13824a.a(OSOutcomeConstants.DEVICE_TYPE), mg.i());
        builder.appendQueryParameter(this.f13824a.a("queries"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("query_hosts"), String.valueOf(2));
        String a4 = this.f13824a.a("features");
        List<String> b2 = this.f13825b.b();
        String[] strArr = {this.f13824a.a("easy_collecting"), this.f13824a.a("egress"), this.f13824a.a("package_info"), this.f13824a.a("socket"), this.f13824a.a("permissions_collecting"), this.f13824a.a("features_collecting"), this.f13824a.a("location_collecting"), this.f13824a.a("lbs_collecting"), this.f13824a.a("google_aid"), this.f13824a.a("huawei_oaid"), this.f13824a.a("throttling"), this.f13824a.a("wifi_around"), this.f13824a.a("wifi_connected"), this.f13824a.a("cells_around"), this.f13824a.a("sim_info"), this.f13824a.a("sdk_list"), this.f13824a.a("identity_light_collecting"), this.f13824a.a("gpl_collecting"), this.f13824a.a("ui_parsing"), this.f13824a.a("ui_collecting_for_bridge"), this.f13824a.a("ui_event_sending"), this.f13824a.a("ui_raw_event_sending"), this.f13824a.a("cell_additional_info"), this.f13824a.a("cell_additional_info_connected_only"), this.f13824a.a("ssl_pinning")};
        ArrayList arrayList = new ArrayList(b2);
        arrayList.addAll(Arrays.asList(strArr));
        builder.appendQueryParameter(a4, TextUtils.join(",", (String[]) arrayList.toArray(new String[0])));
        builder.appendQueryParameter(this.f13824a.a("socket"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a(OSOutcomeConstants.APP_ID), mg.p());
        builder.appendQueryParameter(this.f13824a.a("location_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("app_debuggable"), mg.z());
        builder.appendQueryParameter(this.f13824a.a("sdk_list"), String.valueOf(1));
        if (mg.L()) {
            String D = mg.D();
            if (!TextUtils.isEmpty(D)) {
                builder.appendQueryParameter(this.f13824a.a("country_init"), D);
            }
            i = 1;
        } else {
            i = 1;
            builder.appendQueryParameter(this.f13824a.a("detect_locale"), String.valueOf(1));
        }
        C1918v3.a B = mg.B();
        if (!A2.b(B.b())) {
            builder.appendQueryParameter(this.f13824a.a("distribution_customization"), String.valueOf(i));
            builder.appendQueryParameter(this.f13824a.a("clids_set"), Tl.c(B.b()));
            int ordinal = B.a().ordinal();
            builder.appendQueryParameter(this.f13824a.a("clids_set_source"), ordinal != i ? ordinal != 2 ? ordinal != 3 ? "" : "retail" : "satellite" : "api");
            String E = mg.E();
            String F = mg.F();
            if (TextUtils.isEmpty(E) && (a2 = mg.H().a()) != null) {
                E = a2.f14597a;
                F = a2.f14600d.f14605a;
            }
            if (!TextUtils.isEmpty(E)) {
                builder.appendQueryParameter(this.f13824a.a("install_referrer"), E);
                if (F == null) {
                    F = "null";
                }
                builder.appendQueryParameter(this.f13824a.a("install_referrer_source"), F);
            }
        }
        String w = mg.w();
        if (!TextUtils.isEmpty(w)) {
            builder.appendQueryParameter(this.f13824a.a(Constants.UUID), w);
        }
        builder.appendQueryParameter(this.f13824a.a("time"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("requests"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("stat_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("permissions"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("identity_light_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("ui_parsing"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("ui_collecting_for_bridge"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("ui_event_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("ui_raw_event_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("retry_policy"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("throttling"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("cache_control"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("mediascope_api_keys"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("diagnostics"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("permissions_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("app_system_flag"), mg.A());
        builder.appendQueryParameter(this.f13824a.a("auto_inapp_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("attribution"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("easy_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("egress"), String.valueOf(1));
        builder.appendQueryParameter(this.f13824a.a("startup_update"), String.valueOf(1));
        Map<String, Integer> a5 = this.f13825b.a();
        for (String str : a5.keySet()) {
            builder.appendQueryParameter(str, String.valueOf(a5.get(str)));
        }
    }
}
