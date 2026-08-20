package com.bytedance.sdk.component.adexpress.dynamic.ac;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* compiled from: DynamicLayoutBrick.java */
/* loaded from: classes2.dex */
public class Tgh {
    public static final Map<String, Integer> Qhi;
    private ROR CJ;
    private String Tgh;
    private String ac;
    private String cJ;
    private ROR fl;

    static {
        HashMap hashMap = new HashMap();
        Qhi = hashMap;
        hashMap.put("root", 8);
        hashMap.put("footer", 6);
        hashMap.put("empty", 6);
        hashMap.put("title", 0);
        hashMap.put("subtitle", 0);
        hashMap.put("source", 0);
        hashMap.put("score-count", 0);
        hashMap.put("text_star", 0);
        hashMap.put("text", 0);
        hashMap.put("tag-group", 17);
        hashMap.put("app-version", 0);
        hashMap.put("development-name", 0);
        hashMap.put("privacy-detail", 23);
        hashMap.put("image", 1);
        hashMap.put("image-wide", 1);
        hashMap.put("image-square", 1);
        hashMap.put("image-long", 1);
        hashMap.put("image-splash", 1);
        hashMap.put("image-cover", 1);
        hashMap.put("app-icon", 1);
        hashMap.put("icon-download", 1);
        hashMap.put("logoad", 4);
        hashMap.put("logounion", 5);
        hashMap.put("logo-union", 9);
        hashMap.put("dislike", 3);
        hashMap.put("close", 3);
        hashMap.put("close-fill", 3);
        hashMap.put("webview-close", 22);
        hashMap.put("feedback-dislike", 12);
        hashMap.put("button", 2);
        hashMap.put("downloadWithIcon", 2);
        hashMap.put("downloadButton", 2);
        hashMap.put("fillButton", 2);
        hashMap.put("laceButton", 2);
        hashMap.put("cardButton", 2);
        hashMap.put("colourMixtureButton", 2);
        hashMap.put("arrowButton", 1);
        hashMap.put("download-progress-button", 2);
        hashMap.put("vessel", 6);
        hashMap.put("image-group", 6);
        hashMap.put("custom-component-vessel", 6);
        hashMap.put("carousel", 24);
        hashMap.put("carousel-vessel", 26);
        hashMap.put("leisure-interact", 25);
        hashMap.put("video-hd", 7);
        hashMap.put("video", 7);
        hashMap.put("video-vd", 7);
        hashMap.put("video-sq", 7);
        hashMap.put("muted", 10);
        hashMap.put("star", 11);
        hashMap.put("skip-countdowns", 19);
        hashMap.put("skip-with-countdowns-skip-btn", 21);
        hashMap.put("skip-with-countdowns-video-countdown", 13);
        hashMap.put("skip-with-countdowns-skip-countdown", 20);
        hashMap.put("skip-with-time", 14);
        hashMap.put("skip-with-time-countdown", 13);
        hashMap.put("skip-with-time-skip-btn", 15);
        hashMap.put("skip", 27);
        hashMap.put("timedown", 13);
        hashMap.put("icon", 16);
        hashMap.put("scoreCountWithIcon", 6);
        hashMap.put("split-line", 18);
        hashMap.put("creative-playable-bait", 0);
        hashMap.put("score-count-type-2", 0);
        hashMap.put("lottie", 28);
    }

    public int Qhi() {
        if (TextUtils.isEmpty(this.cJ)) {
            return 0;
        }
        if (this.cJ.equals("logo")) {
            String str = this.cJ + this.ac;
            this.cJ = str;
            if (str.contains("logoad")) {
                return 4;
            }
            if (this.cJ.contains("logounion")) {
                return 5;
            }
        }
        Map<String, Integer> map = Qhi;
        if (map.get(this.cJ) != null) {
            return map.get(this.cJ).intValue();
        }
        return -1;
    }

    public String cJ() {
        return this.cJ;
    }

    public void Qhi(String str) {
        this.cJ = str;
    }

    public String ac() {
        return this.ac;
    }

    public void cJ(String str) {
        this.ac = str;
    }

    public void ac(String str) {
        this.Tgh = str;
    }

    public String CJ() {
        return this.Tgh;
    }

    public ROR fl() {
        return this.CJ;
    }

    public int Tgh() {
        return this.CJ.et();
    }

    public void Qhi(ROR ror) {
        this.CJ = ror;
    }

    public void cJ(ROR ror) {
        this.fl = ror;
    }

    public ROR ROR() {
        return this.fl;
    }

    public String toString() {
        return "DynamicLayoutBrick{type='" + this.cJ + "', data='" + this.ac + "', value=" + this.CJ + ", themeValue=" + this.fl + ", dataExtraInfo='" + this.Tgh + "'}";
    }
}
