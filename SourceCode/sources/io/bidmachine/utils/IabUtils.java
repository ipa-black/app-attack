package io.bidmachine.utils;

import com.explorestack.iab.CacheControl;
import io.bidmachine.protobuf.CreativeLoadingMethod;
/* loaded from: classes5.dex */
public class IabUtils {
    private static final CacheControl DEFAULT_CACHE_CONTROL = CacheControl.FullLoad;
    public static final String KEY_CACHE_CONTROL = "cacheControl";
    public static final String KEY_CLICK_URL = "clickUrl";
    public static final String KEY_CLOSABLE_VIEW_STYLE = "closeable_view_style";
    public static final String KEY_COMPANION_SKIP_OFFSET = "companionSkipOffset";
    public static final String KEY_COUNTDOWN_STYLE = "countdown_style";
    public static final String KEY_CREATIVE_ADM = "creativeAdm";
    public static final String KEY_CREATIVE_ID = "creativeId";
    public static final String KEY_CTA = "cta";
    public static final String KEY_DESCRIPTION = "description";
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_ICON_URL = "iconUrl";
    public static final String KEY_IMAGE_URL = "imageUrl";
    public static final String KEY_OM_SDK_ENABLED = "omsdk_enabled";
    public static final String KEY_PLACEHOLDER_TIMEOUT_SEC = "placeholderTimeoutSec";
    public static final String KEY_PROGRESS_DURATION = "progress_duration";
    public static final String KEY_PROGRESS_STYLE = "progress_style";
    public static final String KEY_R1 = "r1";
    public static final String KEY_R2 = "r2";
    public static final String KEY_RATING = "rating";
    public static final String KEY_SKIP_OFFSET = "skipOffset";
    public static final String KEY_STORE_URL = "store_url";
    public static final String KEY_TITLE = "title";
    public static final String KEY_USE_NATIVE_CLOSE = "useNativeClose";
    public static final String KEY_VIDEO_ADM = "videoAdm";
    public static final String KEY_VIDEO_URL = "videoUrl";
    public static final String KEY_WIDTH = "width";

    public static CacheControl toCacheControl(Object obj) {
        CreativeLoadingMethod valueOf;
        if (obj == null) {
            return DEFAULT_CACHE_CONTROL;
        }
        if (obj instanceof CacheControl) {
            return (CacheControl) obj;
        }
        if (obj instanceof CreativeLoadingMethod) {
            valueOf = (CreativeLoadingMethod) obj;
        } else {
            if (obj instanceof String) {
                try {
                    valueOf = CreativeLoadingMethod.valueOf((String) obj);
                } catch (IllegalArgumentException unused) {
                }
            }
            valueOf = null;
        }
        if (valueOf != null) {
            int i = AnonymousClass1.$SwitchMap$io$bidmachine$protobuf$CreativeLoadingMethod[valueOf.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return CacheControl.PartialLoad;
                }
                return DEFAULT_CACHE_CONTROL;
            }
            return CacheControl.Stream;
        }
        return DEFAULT_CACHE_CONTROL;
    }

    /* renamed from: io.bidmachine.utils.IabUtils$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$CreativeLoadingMethod;

        static {
            int[] iArr = new int[CreativeLoadingMethod.values().length];
            $SwitchMap$io$bidmachine$protobuf$CreativeLoadingMethod = iArr;
            try {
                iArr[CreativeLoadingMethod.Stream.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$CreativeLoadingMethod[CreativeLoadingMethod.PartialLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
