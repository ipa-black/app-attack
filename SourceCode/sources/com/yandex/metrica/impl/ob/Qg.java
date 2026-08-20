package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import com.yandex.metrica.networktasks.api.IParamsAppender;
import com.yandex.metrica.networktasks.api.NetworkTaskForSendingDataParamsAppender;
import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
/* loaded from: classes5.dex */
public class Qg implements IParamsAppender<Lg> {

    /* renamed from: a  reason: collision with root package name */
    private final Ng f13760a;

    /* renamed from: b  reason: collision with root package name */
    private final NetworkTaskForSendingDataParamsAppender f13761b;

    /* renamed from: c  reason: collision with root package name */
    private Ig f13762c;

    /* renamed from: d  reason: collision with root package name */
    private long f13763d;

    public Qg(RequestBodyEncrypter requestBodyEncrypter) {
        this(new Ng(), new NetworkTaskForSendingDataParamsAppender(requestBodyEncrypter));
    }

    public void a(Ig ig) {
        this.f13762c = ig;
    }

    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    public void appendParams(Uri.Builder builder, Object obj) {
        Lg lg = (Lg) obj;
        builder.path("report");
        this.f13761b.appendEncryptedData(builder);
        Ig ig = this.f13762c;
        if (ig != null) {
            this.f13761b.appendCommitHash(builder, ig.p, ig.f13199f);
            builder.appendQueryParameter("deviceid", C1422b.a(this.f13762c.f13194a, lg.g()));
            builder.appendQueryParameter(Constants.UUID, C1422b.a(this.f13762c.f13195b, lg.w()));
            a(builder, "analytics_sdk_version", this.f13762c.f13196c);
            a(builder, "analytics_sdk_version_name", this.f13762c.f13197d);
            builder.appendQueryParameter("app_version_name", C1422b.a(this.f13762c.f13200g, lg.f()));
            builder.appendQueryParameter("app_build_number", C1422b.a(this.f13762c.i, lg.b()));
            builder.appendQueryParameter("os_version", C1422b.a(this.f13762c.j, lg.o()));
            a(builder, "os_api_level", this.f13762c.k);
            a(builder, "analytics_sdk_build_number", this.f13762c.f13198e);
            a(builder, "analytics_sdk_build_type", this.f13762c.f13199f);
            a(builder, "app_debuggable", this.f13762c.f13201h);
            builder.appendQueryParameter("locale", C1422b.a(this.f13762c.l, lg.k()));
            builder.appendQueryParameter("is_rooted", C1422b.a(this.f13762c.m, lg.h()));
            builder.appendQueryParameter("app_framework", C1422b.a(this.f13762c.n, lg.c()));
            a(builder, "attribution_id", this.f13762c.o);
        }
        builder.appendQueryParameter("api_key_128", lg.B());
        builder.appendQueryParameter(OSOutcomeConstants.APP_ID, lg.p());
        builder.appendQueryParameter("app_platform", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        builder.appendQueryParameter("model", lg.m());
        builder.appendQueryParameter("manufacturer", lg.l());
        builder.appendQueryParameter("screen_width", String.valueOf(lg.u()));
        builder.appendQueryParameter("screen_height", String.valueOf(lg.t()));
        builder.appendQueryParameter("screen_dpi", String.valueOf(lg.s()));
        builder.appendQueryParameter("scalefactor", String.valueOf(lg.r()));
        builder.appendQueryParameter(OSOutcomeConstants.DEVICE_TYPE, lg.i());
        a(builder, "clids_set", lg.E());
        builder.appendQueryParameter("app_set_id", lg.d());
        builder.appendQueryParameter("app_set_id_scope", lg.e());
        this.f13760a.appendParams(builder, lg.a());
        builder.appendQueryParameter("request_id", String.valueOf(this.f13763d));
    }

    Qg(Ng ng, NetworkTaskForSendingDataParamsAppender networkTaskForSendingDataParamsAppender) {
        this.f13760a = ng;
        this.f13761b = networkTaskForSendingDataParamsAppender;
    }

    public void a(long j) {
        this.f13763d = j;
    }

    private void a(Uri.Builder builder, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }
}
