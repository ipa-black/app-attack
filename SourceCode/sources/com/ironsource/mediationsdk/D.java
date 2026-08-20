package com.ironsource.mediationsdk;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.Constants;
import com.ironsource.mediationsdk.adunit.data.DataKeys;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.l;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0016\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/ironsource/mediationsdk/InitServerResponse;", "", "()V", "Companion", "mediationsdk_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class D {

    /* renamed from: a  reason: collision with root package name */
    private static a f10665a = new a((byte) 0);

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\r"}, d2 = {"Lcom/ironsource/mediationsdk/InitServerResponse$Companion;", "", "()V", "getCachedResponse", "Lorg/json/JSONObject;", "context", "Landroid/content/Context;", "isResponseCached", "", "loadFromCache", "Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;", "loadResponseFromCache", "Lcom/ironsource/mediationsdk/CachedResponse;", "mediationsdk_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(byte b2) {
            this();
        }

        private static JSONObject b(Context context) {
            try {
                return new JSONObject(IronSourceUtils.getLastResponse(context));
            } catch (JSONException unused) {
                return new JSONObject();
            }
        }

        @JvmStatic
        public final C1358o a(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            JSONObject b2 = b(context);
            String cachedAppKey = b2.optString(Constants.APP_KEY);
            String cachedUserId = b2.optString(DataKeys.USER_ID);
            String cachedSettings = b2.optString("response");
            Intrinsics.checkNotNullExpressionValue(cachedAppKey, "cachedAppKey");
            Intrinsics.checkNotNullExpressionValue(cachedUserId, "cachedUserId");
            Intrinsics.checkNotNullExpressionValue(cachedSettings, "cachedSettings");
            return new C1358o(cachedAppKey, cachedUserId, cachedSettings);
        }
    }

    @JvmStatic
    public static final com.ironsource.mediationsdk.utils.l a(Context context) {
        a aVar = f10665a;
        Intrinsics.checkNotNullParameter(context, "context");
        C1358o a2 = aVar.a(context);
        if (a2.f11313a.length() <= 0 || a2.f11314b.length() <= 0 || a2.f11315c.length() <= 0) {
            a2 = null;
        }
        if (a2 != null) {
            com.ironsource.mediationsdk.utils.l lVar = new com.ironsource.mediationsdk.utils.l(context, a2.f11313a, a2.f11314b, a2.f11315c);
            lVar.a(l.a.f11456b);
            return lVar;
        }
        return null;
    }

    @JvmStatic
    public static final boolean b(Context context) {
        a aVar = f10665a;
        Intrinsics.checkNotNullParameter(context, "context");
        C1358o a2 = aVar.a(context);
        return a2.f11313a.length() > 0 && a2.f11314b.length() > 0 && a2.f11315c.length() > 0;
    }
}
