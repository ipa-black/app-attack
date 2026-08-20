package com.explorestack.iab.vast;

import com.explorestack.iab.utils.IabElementStyle;
import com.explorestack.iab.vast.tags.PostBannerTag;
/* loaded from: classes2.dex */
public interface a {
    Integer getAssetsBackgroundColor();

    Integer getAssetsColor();

    IabElementStyle getCloseStyle();

    Float getCloseTimeSec();

    IabElementStyle getCountDownStyle();

    IabElementStyle getCtaStyle();

    Integer getForceOrientation();

    IabElementStyle getLoadingStyle();

    IabElementStyle getMuteStyle();

    PostBannerTag getPostBannerTag();

    IabElementStyle getProgressStyle();

    IabElementStyle getRepeatStyle();

    IabElementStyle getVideoStyle();

    Boolean isAutoRotate();

    boolean isR1();

    boolean isR2();

    boolean isVideoClickable();
}
