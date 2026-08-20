package com.appnext.core;

import com.google.android.exoplayer2.C;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
/* loaded from: classes.dex */
public abstract class Configuration implements Serializable {
    private static final long serialVersionUID = 1;
    public Boolean backButtonCanClose;
    public Boolean mute;
    public String categories = "";
    public String postback = "";
    public int maxVideoLength = 0;
    public int minVideoLength = 0;
    public String orientation = Ad.ORIENTATION_DEFAULT;
    public String language = "";

    protected abstract p l();

    public void setCategories(String str) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        try {
            if (str.equals(URLDecoder.decode(str, C.UTF8_NAME))) {
                str = URLEncoder.encode(str, C.UTF8_NAME);
            }
            str2 = str;
        } catch (Throwable unused) {
        }
        this.categories = str2;
    }

    public void setPostback(String str) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        try {
            if (str.equals(URLDecoder.decode(str, C.UTF8_NAME))) {
                str = URLEncoder.encode(str, C.UTF8_NAME);
            }
            str2 = str;
        } catch (UnsupportedEncodingException unused) {
        }
        this.postback = str2;
    }

    public void setMute(boolean z) {
        this.mute = Boolean.valueOf(z);
    }

    public String getCategories() {
        return this.categories;
    }

    public String getPostback() {
        return this.postback;
    }

    public boolean getMute() {
        Boolean bool = this.mute;
        return bool == null ? Boolean.parseBoolean(l().get("mute")) : bool.booleanValue();
    }

    public String getOrientation() {
        return this.orientation;
    }

    public void setOrientation(String str) {
        if (str == null) {
            throw new IllegalArgumentException("orientation type");
        }
        if (str.equals(Ad.ORIENTATION_AUTO) || str.equals(Ad.ORIENTATION_DEFAULT) || str.equals("landscape") || str.equals("portrait")) {
            this.orientation = str;
            return;
        }
        throw new IllegalArgumentException("Wrong orientation type");
    }

    public int getMaxVideoLength() {
        return this.maxVideoLength;
    }

    public void setMaxVideoLength(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Max Length must be higher than 0");
        }
        if (i > 0 && getMinVideoLength() > 0 && i < getMinVideoLength()) {
            throw new IllegalArgumentException("Max Length cannot be lower than min length");
        }
        this.maxVideoLength = i;
    }

    public int getMinVideoLength() {
        return this.minVideoLength;
    }

    public void setMinVideoLength(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Min Length must be higher than 0");
        }
        if (i > 0 && getMaxVideoLength() > 0 && i > getMaxVideoLength()) {
            throw new IllegalArgumentException("Min Length cannot be higher than max length");
        }
        this.minVideoLength = i;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    @Deprecated
    public boolean isBackButtonCanClose() {
        Boolean bool = this.backButtonCanClose;
        return bool == null ? Boolean.parseBoolean(l().get("can_close")) : bool.booleanValue();
    }
}
