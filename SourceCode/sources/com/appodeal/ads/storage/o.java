package com.appodeal.ads.storage;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.r0;
import com.appodeal.ads.storage.b;
import com.appodeal.ads.w4;
import com.appodeal.ads.y4;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.Triple;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class o implements a {

    /* renamed from: b  reason: collision with root package name */
    public static final o f7663b = new o();

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f7664a = m.a();

    public final Object a(r0.a aVar) {
        return this.f7664a.a(aVar);
    }

    @Override // com.appodeal.ads.storage.a
    public final Object a(w4 w4Var) {
        return this.f7664a.a(w4Var);
    }

    @Override // com.appodeal.ads.storage.a
    public final Object a(y4 y4Var) {
        return this.f7664a.a(y4Var);
    }

    @Override // com.appodeal.ads.storage.a
    public final Object a(String str, y4 y4Var) {
        return this.f7664a.a(str, y4Var);
    }

    public final Object a(LinkedHashSet linkedHashSet, r0.b bVar) {
        return this.f7664a.a(linkedHashSet, bVar);
    }

    @Override // com.appodeal.ads.storage.a
    public final Object a(ContinuationImpl continuationImpl) {
        return this.f7664a.a(continuationImpl);
    }

    @Override // com.appodeal.ads.storage.a
    public final String a() {
        return this.f7664a.a();
    }

    @Override // com.appodeal.ads.storage.a
    public final Triple<JSONObject, Long, Integer> a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f7664a.a(key);
    }

    @Override // com.appodeal.ads.storage.a
    public final void a(int i) {
        Intrinsics.checkNotNullParameter("part_of_audience", "key");
        this.f7664a.a(i);
    }

    @Override // com.appodeal.ads.storage.a
    public final void a(int i, long j, String key, String jsonString) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        this.f7664a.a(i, j, key, jsonString);
    }

    public final void a(long j) {
        this.f7664a.c(j);
    }

    public final void a(String campaignId, long j) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        this.f7664a.a(campaignId, j);
    }

    public final void a(String uuid, long j, long j2, long j3, long j4, long j5) {
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        this.f7664a.a(uuid, j, j2, j3, j4, j5);
    }

    public final void a(String campaignId, String campaignData) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        Intrinsics.checkNotNullParameter(campaignData, "campaignData");
        this.f7664a.a(campaignId, campaignData);
    }

    public final void a(JSONObject campaigns) {
        Intrinsics.checkNotNullParameter(campaigns, "campaigns");
        this.f7664a.a(campaigns);
    }

    @Override // com.appodeal.ads.storage.a
    public final int b() {
        Intrinsics.checkNotNullParameter("part_of_audience", "key");
        return this.f7664a.b();
    }

    @Override // com.appodeal.ads.storage.a
    public final void b(String userToken) {
        Intrinsics.checkNotNullParameter(userToken, "userToken");
        this.f7664a.b(userToken);
    }

    public final void b(String sessions, long j) {
        Intrinsics.checkNotNullParameter(sessions, "sessions");
        this.f7664a.b(sessions, j);
    }

    public final void b(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f7664a.b(key, value);
    }

    @Override // com.appodeal.ads.storage.a
    public final String c() {
        return this.f7664a.c();
    }

    @Override // com.appodeal.ads.storage.a
    public final void c(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f7664a.c(key);
    }

    public final void c(String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f7664a.c(key, j);
    }

    public final void c(String key, String string) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(string, "string");
        this.f7664a.c(key, string);
    }

    public final Long d() {
        b bVar = this.f7664a;
        b.a aVar = b.a.Default;
        if (bVar.a(aVar).contains("first_ad_session_launch_time")) {
            return Long.valueOf(bVar.a(aVar).getLong("first_ad_session_launch_time", 0L));
        }
        return null;
    }

    public final void d(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f7664a.d(key);
    }

    public final String e(String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        return this.f7664a.e(campaignId);
    }

    public final Map<String, String> e() {
        return this.f7664a.f();
    }

    public final String f() {
        return this.f7664a.a(b.a.Default).getString(Constants.SESSIONS, null);
    }

    public final String f(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f7664a.f(key);
    }

    public final Long g(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f7664a.g(key);
    }
}
