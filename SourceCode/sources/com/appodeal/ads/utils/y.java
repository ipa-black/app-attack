package com.appodeal.ads.utils;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.appodeal.ads.AdNetwork;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.n5;
import com.google.android.exoplayer2.C;
import java.util.EnumMap;
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumMap<AdType, Pair<Handler, Runnable>> f7857a = new EnumMap<>(AdType.class);

    public static void a(AdType adType) {
        EnumMap<AdType, Pair<Handler, Runnable>> enumMap = f7857a;
        Pair<Handler, Runnable> pair = enumMap.get(adType);
        if (pair != null) {
            ((Handler) pair.first).removeCallbacks((Runnable) pair.second);
            enumMap.remove(adType);
        }
    }

    public static void a(final AdType adType, final AdNetwork<?> adNetwork) {
        Handler handler = new Handler(Looper.getMainLooper());
        Runnable runnable = new Runnable() { // from class: com.appodeal.ads.utils.y$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                y.b(AdType.this, adNetwork);
            }
        };
        handler.postDelayed(runnable, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        f7857a.put((EnumMap<AdType, Pair<Handler, Runnable>>) adType, (AdType) new Pair<>(handler, runnable));
    }

    public static void b(AdType adType, AdNetwork adNetwork) {
        Log.log(new com.appodeal.ads.utils.exception_handler.a(String.format("%s %s was not shown", n5.a(adNetwork.getName()), adType.getDisplayName())));
        f7857a.remove(adType);
    }
}
