package com.appodeal.ads;

import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
/* loaded from: classes.dex */
public final class i1 {

    /* renamed from: a  reason: collision with root package name */
    public final String f6736a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6737b;

    public i1(String str, String str2) {
        this.f6736a = str;
        this.f6737b = str2;
    }

    public final void a() {
        a(null);
    }

    public final void a(String str) {
        Log.log(LogConstants.KEY_SDK_PUBLIC, this.f6736a, TextUtils.isEmpty(str) ? this.f6737b : String.format("%s. %s", this.f6737b, str), Log.LogLevel.verbose);
    }

    public final void b(String str) {
        Log.log(LogConstants.KEY_SDK_PUBLIC, this.f6736a, String.format("%s. Error during executing method - %s", this.f6737b, str), Log.LogLevel.verbose);
    }
}
