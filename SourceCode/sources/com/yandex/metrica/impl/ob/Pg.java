package com.yandex.metrica.impl.ob;

import android.net.Uri;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import com.yandex.metrica.networktasks.api.IParamsAppender;
import com.yandex.metrica.networktasks.api.NetworkTaskForSendingDataParamsAppender;
import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
/* loaded from: classes5.dex */
public class Pg implements IParamsAppender<C1561gd> {

    /* renamed from: a  reason: collision with root package name */
    private final Ng f13713a;

    /* renamed from: b  reason: collision with root package name */
    private final NetworkTaskForSendingDataParamsAppender f13714b;

    /* renamed from: c  reason: collision with root package name */
    private long f13715c;

    public Pg(RequestBodyEncrypter requestBodyEncrypter) {
        this(new Ng(), new NetworkTaskForSendingDataParamsAppender(requestBodyEncrypter));
    }

    public void a(long j) {
        this.f13715c = j;
    }

    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    public void appendParams(Uri.Builder builder, Object obj) {
        C1561gd c1561gd = (C1561gd) obj;
        this.f13714b.appendEncryptedData(builder);
        NetworkTaskForSendingDataParamsAppender networkTaskForSendingDataParamsAppender = this.f13714b;
        c1561gd.getClass();
        networkTaskForSendingDataParamsAppender.appendCommitHash(builder, "a72bf6f57701ed3c2b8ed570054febbff4e58c12", c1561gd.j());
        builder.appendPath(FirebaseAnalytics.Param.LOCATION);
        builder.appendQueryParameter("deviceid", c1561gd.g());
        builder.appendQueryParameter(OSOutcomeConstants.DEVICE_TYPE, c1561gd.i());
        builder.appendQueryParameter(Constants.UUID, c1561gd.w());
        builder.appendQueryParameter("analytics_sdk_version_name", "5.3.0");
        builder.appendQueryParameter("analytics_sdk_build_number", "45003240");
        builder.appendQueryParameter("analytics_sdk_build_type", c1561gd.j());
        builder.appendQueryParameter("app_version_name", c1561gd.f());
        builder.appendQueryParameter("app_build_number", c1561gd.b());
        builder.appendQueryParameter("os_version", c1561gd.o());
        builder.appendQueryParameter("os_api_level", String.valueOf(c1561gd.n()));
        builder.appendQueryParameter("is_rooted", c1561gd.h());
        builder.appendQueryParameter("app_framework", c1561gd.c());
        builder.appendQueryParameter(OSOutcomeConstants.APP_ID, c1561gd.p());
        builder.appendQueryParameter("app_platform", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        builder.appendQueryParameter("request_id", String.valueOf(this.f13715c));
        builder.appendQueryParameter("app_set_id", c1561gd.d());
        builder.appendQueryParameter("app_set_id_scope", c1561gd.e());
        this.f13713a.appendParams(builder, c1561gd.a());
    }

    Pg(Ng ng, NetworkTaskForSendingDataParamsAppender networkTaskForSendingDataParamsAppender) {
        this.f13713a = ng;
        this.f13714b = networkTaskForSendingDataParamsAppender;
    }
}
