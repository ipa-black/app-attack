package com.applovin.exoplayer2.d;

import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.drm.WidevineUtil;
import java.util.Map;
/* loaded from: classes.dex */
public final class u {
    private static long a(Map<String, String> map, String str) {
        if (map != null) {
            try {
                String str2 = map.get(str);
                return str2 != null ? Long.parseLong(str2) : C.TIME_UNSET;
            } catch (NumberFormatException unused) {
                return C.TIME_UNSET;
            }
        }
        return C.TIME_UNSET;
    }

    public static Pair<Long, Long> a(f fVar) {
        Map<String, String> h2 = fVar.h();
        if (h2 == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(h2, WidevineUtil.PROPERTY_LICENSE_DURATION_REMAINING)), Long.valueOf(a(h2, WidevineUtil.PROPERTY_PLAYBACK_DURATION_REMAINING)));
    }
}
