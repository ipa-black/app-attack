package com.appnext.ads.interstitial;

import android.graphics.Color;
import com.appnext.core.Configuration;
import com.appnext.core.p;
import java.io.Serializable;
/* loaded from: classes.dex */
public class InterstitialConfig extends Configuration implements Serializable {
    private static final long serialVersionUID = 1;
    public Boolean autoPlay;
    public String creativeType = Interstitial.TYPE_MANAGED;
    public String skipText = "";
    public String buttonColor = "";
    protected boolean cm = false;

    @Override // com.appnext.core.Configuration
    @Deprecated
    public void setOrientation(String str) {
    }

    public void setCreativeType(String str) {
        if (str.equals(Interstitial.TYPE_MANAGED) || str.equals("static") || str.equals("video")) {
            this.creativeType = str;
            return;
        }
        throw new IllegalArgumentException("Wrong creative type");
    }

    public String getCreativeType() {
        return this.creativeType;
    }

    @Override // com.appnext.core.Configuration
    protected final p l() {
        return c.K();
    }

    public boolean isAutoPlay() {
        Boolean bool = this.autoPlay;
        return bool == null ? Boolean.parseBoolean(c.K().get("auto_play")) : bool.booleanValue();
    }

    public void setAutoPlay(boolean z) {
        this.autoPlay = Boolean.valueOf(z);
    }

    public void setSkipText(String str) {
        if (str == null) {
            str = "";
        }
        this.skipText = str;
    }

    public String getSkipText() {
        return this.skipText;
    }

    protected final boolean t() {
        return this.mute != null;
    }

    protected final boolean H() {
        return this.autoPlay != null;
    }

    protected final boolean I() {
        return this.backButtonCanClose != null;
    }

    public void setButtonColor(String str) {
        if (str == null) {
            this.buttonColor = "";
            return;
        }
        if (!str.startsWith("#")) {
            str = "#" + str;
        }
        Color.parseColor(str);
        this.buttonColor = str;
        this.cm = true;
    }

    public String getButtonColor() {
        return this.buttonColor;
    }

    @Deprecated
    public void setBackButtonCanClose(boolean z) {
        this.backButtonCanClose = Boolean.valueOf(z);
    }
}
