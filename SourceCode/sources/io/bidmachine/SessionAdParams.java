package io.bidmachine;

import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.ISessionAdParams;
import io.bidmachine.models.RequestParams;
import io.bidmachine.protobuf.RequestTokenPayload;
/* loaded from: classes5.dex */
public final class SessionAdParams extends RequestParams<SessionAdParams> implements ISessionAdParams<SessionAdParams> {
    private int clickCount;
    private Float clickRate;
    private int completedVideosCount;
    private Float completionRate;
    private Integer impressionCount;
    private Boolean isUserClickedOnLastAd;
    private String lastAdDomain;
    private String lastBundle;
    private Integer sessionDuration;
    private int videoImpressionCount;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setSessionDuration(Integer num) {
        if (num == null || num.intValue() >= 0) {
            this.sessionDuration = num;
        } else {
            Logger.logError("session duration shouldn't be negative");
        }
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setImpressionCount(Integer num) {
        if (num == null || num.intValue() >= 0) {
            this.impressionCount = num;
        } else {
            Logger.logError("impression count shouldn't be negative");
        }
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setClickRate(Float f2) {
        if (f2 == null || (f2.floatValue() >= 0.0f && f2.floatValue() <= 100.0f)) {
            this.clickRate = f2;
        } else {
            Logger.logError("click rate be between 0 and 100");
        }
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setIsUserClickedOnLastAd(Boolean bool) {
        this.isUserClickedOnLastAd = bool;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.ISessionAdParams
    public SessionAdParams setCompletionRate(Float f2) {
        if (f2 == null || (f2.floatValue() >= 0.0f && f2.floatValue() <= 100.0f)) {
            this.completionRate = f2;
        } else {
            Logger.logError("click rate be between 0 and 100");
        }
        return this;
    }

    @Override // io.bidmachine.models.RequestParams
    public void merge(SessionAdParams sessionAdParams) {
        this.sessionDuration = (Integer) Utils.oneOf(this.sessionDuration, sessionAdParams.sessionDuration);
        this.impressionCount = (Integer) Utils.oneOf(this.impressionCount, sessionAdParams.impressionCount);
        this.clickRate = (Float) Utils.oneOf(this.clickRate, sessionAdParams.clickRate);
        this.isUserClickedOnLastAd = (Boolean) Utils.oneOf(this.isUserClickedOnLastAd, sessionAdParams.isUserClickedOnLastAd);
        this.completionRate = (Float) Utils.oneOf(this.completionRate, sessionAdParams.completionRate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fillUserExtension(Struct.Builder builder) {
        if (this.sessionDuration != null) {
            builder.putFields("sessionduration", Value.newBuilder().setNumberValue(this.sessionDuration.intValue()).build());
        }
        if (this.impressionCount != null) {
            builder.putFields("impdepth", Value.newBuilder().setNumberValue(this.impressionCount.intValue()).build());
        }
        if (this.clickRate != null) {
            builder.putFields("clickrate", Value.newBuilder().setNumberValue(this.clickRate.floatValue()).build());
        }
        if (this.isUserClickedOnLastAd != null) {
            builder.putFields("lastclick", Value.newBuilder().setNumberValue(this.isUserClickedOnLastAd.booleanValue() ? 1.0d : 0.0d).build());
        }
        if (this.completionRate != null) {
            builder.putFields("completionrate", Value.newBuilder().setNumberValue(this.completionRate.floatValue()).build());
        }
        if (this.lastBundle != null) {
            builder.putFields("lastbundle", Value.newBuilder().setStringValue(this.lastBundle).build());
        }
        if (this.lastAdDomain != null) {
            builder.putFields("lastadomain", Value.newBuilder().setStringValue(this.lastAdDomain).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fillSessionPlacementData(RequestTokenPayload.SessionData.SessionPlacementData.Builder builder) {
        Integer num = this.impressionCount;
        if (num != null) {
            builder.setImpdepth(num.intValue());
        }
        String str = this.lastBundle;
        if (str != null) {
            builder.setLastbundle(str);
        }
        String str2 = this.lastAdDomain;
        if (str2 != null) {
            builder.setLastadomain(str2);
        }
        Float f2 = this.clickRate;
        if (f2 != null) {
            builder.setClickrate(f2.floatValue());
        }
        Boolean bool = this.isUserClickedOnLastAd;
        if (bool != null) {
            builder.setLastclick(bool.booleanValue());
        }
        Float f3 = this.completionRate;
        if (f3 != null) {
            builder.setCompletionrate(f3.floatValue());
        }
    }

    Integer getSessionDuration() {
        return this.sessionDuration;
    }

    Integer getImpressionCount() {
        return this.impressionCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addImpression() {
        Integer num = this.impressionCount;
        if (num == null) {
            this.impressionCount = 1;
        } else {
            this.impressionCount = Integer.valueOf(num.intValue() + 1);
        }
        updateClickRate();
    }

    Float getClickRate() {
        return this.clickRate;
    }

    Boolean getUserClickedOnLastAd() {
        return this.isUserClickedOnLastAd;
    }

    Float getCompletionRate() {
        return this.completionRate;
    }

    String getLastBundle() {
        return this.lastBundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLastBundle(String str) {
        this.lastBundle = str;
    }

    String getLastAdDomain() {
        return this.lastAdDomain;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLastAdDomain(String str) {
        this.lastAdDomain = str;
    }

    int getClickCount() {
        return this.clickCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addClick() {
        this.clickCount++;
        updateClickRate();
        this.isUserClickedOnLastAd = true;
    }

    int getVideoImpressionCount() {
        return this.videoImpressionCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addVideoImpression() {
        this.videoImpressionCount++;
        updateCompletionRate();
    }

    int getCompletedVideosCount() {
        return this.completedVideosCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addCompletedVideo() {
        this.completedVideosCount++;
        updateCompletionRate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.sessionDuration = null;
        this.impressionCount = null;
        this.clickRate = null;
        this.isUserClickedOnLastAd = null;
        this.completionRate = null;
        this.lastBundle = null;
        this.lastAdDomain = null;
        this.clickCount = 0;
        this.videoImpressionCount = 0;
        this.completedVideosCount = 0;
    }

    private void updateClickRate() {
        Integer num = this.impressionCount;
        if (num == null || num.intValue() == 0) {
            return;
        }
        this.clickRate = Float.valueOf((this.clickCount / this.impressionCount.intValue()) * 100.0f);
    }

    private void updateCompletionRate() {
        int i = this.videoImpressionCount;
        if (i == 0) {
            return;
        }
        this.completionRate = Float.valueOf((this.completedVideosCount / i) * 100.0f);
    }
}
