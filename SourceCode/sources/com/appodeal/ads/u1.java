package com.appodeal.ads;

import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class u1 {

    /* renamed from: a  reason: collision with root package name */
    public final UnifiedAdCallbackClickTrackListener f7705a;

    public u1(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
        this.f7705a = unifiedAdCallbackClickTrackListener;
    }

    public static final void a(u1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener = this$0.f7705a;
        if (unifiedAdCallbackClickTrackListener == null) {
            return;
        }
        unifiedAdCallbackClickTrackListener.onTrackError();
    }

    public static final void a(u1 this$0, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener = this$0.f7705a;
        if (unifiedAdCallbackClickTrackListener == null) {
            return;
        }
        unifiedAdCallbackClickTrackListener.onTrackSuccess(jSONObject);
    }

    public final void a() {
        h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.u1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                u1.a(u1.this);
            }
        });
    }

    public final void a(final JSONObject jSONObject) {
        h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.u1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                u1.a(u1.this, jSONObject);
            }
        });
    }
}
