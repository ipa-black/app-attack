package com.appodeal.ads.utils.tracker;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import com.appodeal.ads.utils.Log;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
/* loaded from: classes2.dex */
public final class c implements com.appodeal.ads.utils.tracker.a {

    /* loaded from: classes2.dex */
    public static final class a implements ComponentCallbacks2 {
        public a() {
        }

        @Override // android.content.ComponentCallbacks
        public final void onConfigurationChanged(Configuration newConfig) {
            Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        }

        @Override // android.content.ComponentCallbacks
        public final void onLowMemory() {
            c.this.getClass();
            Log.log("Warning", "onLowMemory");
        }

        @Override // android.content.ComponentCallbacks2
        public final void onTrimMemory(int i) {
            c.a(c.this, i);
        }
    }

    public static final void a(c cVar, int i) {
        cVar.getClass();
        if (i == 10 || i == 15) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("Level [%s]: %s", Arrays.copyOf(new Object[]{Integer.valueOf(i), "Critical lack of memory"}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            Log.log("Warning", "onTrimMemory", format);
        }
    }

    @Override // com.appodeal.ads.utils.tracker.a
    public final void a(Application application) {
        Intrinsics.checkNotNullParameter(application, "application");
        application.registerComponentCallbacks(new a());
    }
}
