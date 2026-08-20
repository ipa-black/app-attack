package com.applovin.impl.b;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.s;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f4537c = Arrays.asList(MimeTypes.VIDEO_MP4, "video/webm", MimeTypes.VIDEO_H263, MimeTypes.VIDEO_MATROSKA);

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f4539b;

    /* renamed from: d  reason: collision with root package name */
    private final JSONObject f4540d;

    /* renamed from: e  reason: collision with root package name */
    private final JSONObject f4541e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.b f4542f;

    /* renamed from: a  reason: collision with root package name */
    protected List<s> f4538a = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private final long f4543g = System.currentTimeMillis();

    public e(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.n nVar) {
        this.f4539b = nVar;
        this.f4540d = jSONObject;
        this.f4541e = jSONObject2;
        this.f4542f = bVar;
    }

    public int a() {
        return this.f4538a.size();
    }

    public List<s> b() {
        return this.f4538a;
    }

    public JSONObject c() {
        return this.f4540d;
    }

    public JSONObject d() {
        return this.f4541e;
    }

    public com.applovin.impl.sdk.ad.b e() {
        return this.f4542f;
    }

    public long f() {
        return this.f4543g;
    }

    public List<String> g() {
        List<String> explode = CollectionUtils.explode(JsonUtils.getString(this.f4540d, "vast_preferred_video_types", null));
        return !explode.isEmpty() ? explode : f4537c;
    }

    public int h() {
        return Utils.getVideoCompletionPercent(this.f4540d);
    }
}
