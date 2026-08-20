package com.appodeal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.appodeal.ads.utils.Log;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\n"}, d2 = {"Lcom/appodeal/ads/AppodealPackageAddedReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "register", "apd_core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AppodealPackageAddedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        List split$default;
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            if (q4.o() || !Intrinsics.areEqual(intent.getAction(), "android.intent.action.PACKAGE_ADDED")) {
                return;
            }
            String dataString = intent.getDataString();
            if (dataString != null && (split$default = StringsKt.split$default((CharSequence) dataString, new String[]{":"}, false, 0, 6, (Object) null)) != null) {
                str = (String) CollectionsKt.getOrNull(split$default, 1);
                if (str == null && com.appodeal.ads.utils.r.a(context, str)) {
                    k0 k0Var = k0.f6758a;
                    k0.a(str);
                }
                return;
            }
            str = null;
            if (str == null) {
                return;
            }
            k0 k0Var2 = k0.f6758a;
            k0.a(str);
        } catch (Throwable th) {
            Log.log(th);
        }
    }

    public final void register(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            context.registerReceiver(this, intentFilter);
        } catch (Throwable th) {
            Log.log(th);
        }
    }
}
