package com.bytedance.sdk.openadsdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.Tgh.cJ;
import com.bytedance.sdk.component.utils.ABk;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdSlot {
    public static final int TYPE_BANNER = 1;
    public static final int TYPE_CACHED_SPLASH = 4;
    public static final int TYPE_FEED = 5;
    public static final int TYPE_FULL_SCREEN_VIDEO = 8;
    public static final int TYPE_INTERACTION_AD = 2;
    public static final int TYPE_OPEN_AD = 3;
    public static final int TYPE_REWARD_VIDEO = 7;
    private boolean ABk;
    private float CJ;
    private Bundle CQU;
    private JSONArray Dww;
    private int EBS;
    private Map<String, Object> Eh;
    private String Gm;
    private String HzH;
    private int MQ;
    private String Qhi;
    private boolean ROR;
    private String Sf;
    private int Tgh;
    private String WAv;
    private int ac;
    private int bxS;
    private int cJ;
    private float fl;
    private int hm;
    private String hpZ;
    private boolean iMK;
    private String kYc;
    private String pA;
    private String pM;
    private int qMt;
    private String tP;
    private int zc;

    public static int getPosition(int i) {
        if (i != 1) {
            if (i != 2) {
                return (i == 3 || i == 4 || i == 7 || i == 8) ? 5 : 3;
            }
            return 4;
        }
        return 2;
    }

    private AdSlot() {
        this.ABk = true;
        this.iMK = false;
        this.MQ = 0;
        this.qMt = 0;
        this.EBS = 0;
    }

    public void setUserData(String str) {
        this.tP = str;
    }

    public String getUserData() {
        return this.tP;
    }

    public String getCodeId() {
        return this.Qhi;
    }

    public boolean isAutoPlay() {
        return this.ABk;
    }

    public boolean isExpressAd() {
        return this.iMK;
    }

    public String getBidAdm() {
        return this.pA;
    }

    public int getImgAcceptedWidth() {
        return this.cJ;
    }

    public int getImgAcceptedHeight() {
        return this.ac;
    }

    public float getExpressViewAcceptedWidth() {
        return this.CJ;
    }

    public float getExpressViewAcceptedHeight() {
        return this.fl;
    }

    public boolean isSupportDeepLink() {
        return this.ROR;
    }

    public int getAdCount() {
        return this.Tgh;
    }

    public void setAdCount(int i) {
        this.Tgh = i;
    }

    @Deprecated
    public String getRewardName() {
        return this.Sf;
    }

    @Deprecated
    public int getRewardAmount() {
        return this.hm;
    }

    public String getMediaExtra() {
        return this.WAv;
    }

    public String getUserID() {
        return this.Gm;
    }

    public int getNativeAdType() {
        return this.zc;
    }

    public void setNativeAdType(int i) {
        this.zc = i;
    }

    public String getAdId() {
        return this.hpZ;
    }

    public String getCreativeId() {
        return this.HzH;
    }

    public String getExt() {
        return this.kYc;
    }

    public int getIsRotateBanner() {
        return this.MQ;
    }

    public void setIsRotateBanner(int i) {
        this.MQ = i;
    }

    public int getRotateTime() {
        return this.qMt;
    }

    public void setRotateTime(int i) {
        this.qMt = i;
    }

    public int getRotateOrder() {
        return this.EBS;
    }

    public void setRotateOrder(int i) {
        this.EBS = i;
    }

    public void setDurationSlotType(int i) {
        this.bxS = i;
    }

    public int getDurationSlotType() {
        return this.bxS;
    }

    public Map<String, Object> getRequestExtraMap() {
        return this.Eh;
    }

    public JSONArray getBiddingTokens() {
        return this.Dww;
    }

    public void setBiddingTokens(JSONArray jSONArray) {
        this.Dww = jSONArray;
    }

    public Bundle getNetworkExtrasBundle() {
        return this.CQU;
    }

    public String getLinkId() {
        return this.pM;
    }

    public String toString() {
        return super.toString();
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.Qhi);
            jSONObject.put("mAdCount", this.Tgh);
            jSONObject.put("mIsAutoPlay", this.ABk);
            jSONObject.put("mImgAcceptedWidth", this.cJ);
            jSONObject.put("mImgAcceptedHeight", this.ac);
            jSONObject.put("mExpressViewAcceptedWidth", this.CJ);
            jSONObject.put("mExpressViewAcceptedHeight", this.fl);
            jSONObject.put("mSupportDeepLink", this.ROR);
            jSONObject.put("mRewardName", this.Sf);
            jSONObject.put("mRewardAmount", this.hm);
            jSONObject.put("mMediaExtra", this.WAv);
            jSONObject.put("mUserID", this.Gm);
            jSONObject.put("mNativeAdType", this.zc);
            jSONObject.put("mIsExpressAd", this.iMK);
            jSONObject.put("mAdId", this.hpZ);
            jSONObject.put("mCreativeId", this.HzH);
            jSONObject.put("mExt", this.kYc);
            jSONObject.put("mBidAdm", this.pA);
            jSONObject.put("mUserData", this.tP);
            jSONObject.put("mDurationSlotType", this.bxS);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static AdSlot getSlot(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Builder builder = new Builder();
        try {
            int optInt = jSONObject.optInt("mImgAcceptedWidth", 640);
            int optInt2 = jSONObject.optInt("mImgAcceptedHeight", 320);
            double optDouble = jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
            double optDouble2 = jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
            builder.setCodeId(jSONObject.optString("mCodeId", null));
            builder.setAdCount(jSONObject.optInt("mAdCount", 1));
            builder.setIsAutoPlay(jSONObject.optBoolean("mIsAutoPlay"));
            builder.setImageAcceptedSize(optInt, optInt2);
            builder.setExpressViewAcceptedSize(Double.valueOf(optDouble).floatValue(), Double.valueOf(optDouble2).floatValue());
            builder.setSupportDeepLink(jSONObject.optBoolean("mSupportDeepLink", false));
            builder.setRewardName(jSONObject.optString("mRewardName", null));
            builder.setRewardAmount(jSONObject.optInt("mRewardAmount"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra", null));
            builder.setUserID(jSONObject.optString("mUserID", null));
            builder.setNativeAdType(jSONObject.optInt("mNativeAdType"));
            builder.isExpressAd(jSONObject.optBoolean("mIsExpressAd"));
            builder.withBid(jSONObject.optString("mBidAdm"));
            builder.setAdId(jSONObject.optString("mAdId"));
            builder.setCreativeId(jSONObject.optString("mCreativeId"));
            builder.setExt(jSONObject.optString("mExt"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra"));
        } catch (Exception unused) {
        }
        AdSlot build = builder.build();
        build.setDurationSlotType(jSONObject.optInt("mDurationSlotType"));
        return build;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private boolean ABk;
        private String EBS;
        private float Gm;
        private String HzH;
        private String Qhi;
        private String Sf;
        private int WAv;
        private int bxS;
        private String hpZ;
        private String iMK;
        private String kYc;
        private String pA;
        private Bundle qMt;
        private float zc;
        private int cJ = 640;
        private int ac = 320;
        private final boolean CJ = true;
        private int fl = 1;
        private final String Tgh = "";
        private final int ROR = 0;
        private String hm = "defaultUser";
        private boolean tP = true;
        private Map<String, Object> MQ = null;

        @Deprecated
        public Builder setRewardAmount(int i) {
            return this;
        }

        @Deprecated
        public Builder setRewardName(String str) {
            return this;
        }

        @Deprecated
        public Builder setSupportDeepLink(boolean z) {
            return this;
        }

        public Builder setAdId(String str) {
            this.pA = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.hpZ = str;
            return this;
        }

        public Builder setExt(String str) {
            this.HzH = str;
            return this;
        }

        public Builder setIsAutoPlay(boolean z) {
            this.tP = z;
            return this;
        }

        public Builder setCodeId(String str) {
            this.Qhi = str;
            return this;
        }

        public Builder isExpressAd(boolean z) {
            this.ABk = z;
            return this;
        }

        public Builder setImageAcceptedSize(int i, int i2) {
            this.cJ = i;
            this.ac = i2;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f2, float f3) {
            this.Gm = f2;
            this.zc = f3;
            return this;
        }

        public Builder setDurationSlotType(int i) {
            this.bxS = i;
            return this;
        }

        public Builder setAdCount(int i) {
            if (i <= 0) {
                i = 1;
            }
            if (i > 20) {
                i = 20;
            }
            this.fl = i;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.Sf = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.hm = str;
            return this;
        }

        public Builder setNativeAdType(int i) {
            this.WAv = i;
            return this;
        }

        public Builder withBid(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            if (ABk.CJ()) {
                cJ.Qhi(str);
            }
            this.iMK = str;
            return this;
        }

        public Builder setUserData(String str) {
            this.kYc = str;
            return this;
        }

        public Builder setRequestExtraMap(Map<String, Object> map) {
            this.MQ = map;
            return this;
        }

        public Builder setNetworkExtrasBundle(Bundle bundle) {
            this.qMt = bundle;
            return this;
        }

        public Builder setLinkId(String str) {
            this.EBS = str;
            return this;
        }

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.Qhi = this.Qhi;
            adSlot.Tgh = this.fl;
            adSlot.ROR = true;
            adSlot.cJ = this.cJ;
            adSlot.ac = this.ac;
            float f2 = this.Gm;
            if (f2 <= 0.0f) {
                adSlot.CJ = this.cJ;
                adSlot.fl = this.ac;
            } else {
                adSlot.CJ = f2;
                adSlot.fl = this.zc;
            }
            adSlot.Sf = "";
            adSlot.hm = 0;
            adSlot.WAv = this.Sf;
            adSlot.Gm = this.hm;
            adSlot.zc = this.WAv;
            adSlot.ABk = this.tP;
            adSlot.iMK = this.ABk;
            adSlot.pA = this.iMK;
            adSlot.hpZ = this.pA;
            adSlot.HzH = this.hpZ;
            adSlot.kYc = this.HzH;
            adSlot.tP = this.kYc;
            adSlot.Eh = this.MQ;
            adSlot.pM = this.EBS;
            adSlot.bxS = this.bxS;
            return adSlot;
        }
    }
}
