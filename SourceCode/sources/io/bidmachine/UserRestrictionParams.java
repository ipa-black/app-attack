package io.bidmachine;

import android.text.TextUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.Context;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import io.bidmachine.core.Utils;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.IUserRestrictionsParams;
import io.bidmachine.protobuf.RegsCcpaExtension;
import io.bidmachine.protobuf.RequestTokenPayload;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class UserRestrictionParams implements IUserRestrictionsParams<UserRestrictionParams>, DataRestrictions {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private String gdprConsentString;
    private Boolean hasConsent;
    private Boolean hasCoppa;
    private Boolean subjectToGDPR;
    private String usPrivacyString;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void build(Context.Regs.Builder builder) {
        builder.setGdpr(subjectToGDPR());
        builder.setCoppa(hasCoppa());
        String uSPrivacyString = getUSPrivacyString();
        if (TextUtils.isEmpty(uSPrivacyString)) {
            return;
        }
        builder.addExtProto(Any.pack(RegsCcpaExtension.newBuilder().setUsPrivacy(uSPrivacyString).build()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void build(Context.User.Builder builder) {
        builder.setConsent(getIABGDPRString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fill(RequestTokenPayload.UserData.Builder builder) {
        builder.setGdpr(subjectToGDPR());
        builder.setConsent(getIABGDPRString());
        String uSPrivacyString = getUSPrivacyString();
        if (TextUtils.isEmpty(uSPrivacyString)) {
            return;
        }
        builder.setCcpa(uSPrivacyString);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.IUserRestrictionsParams
    public UserRestrictionParams setConsentConfig(boolean z, String str) {
        this.gdprConsentString = str;
        this.hasConsent = Boolean.valueOf(z);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.IUserRestrictionsParams
    public UserRestrictionParams setSubjectToGDPR(Boolean bool) {
        this.subjectToGDPR = bool;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.IUserRestrictionsParams
    public UserRestrictionParams setCoppa(Boolean bool) {
        this.hasCoppa = bool;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.IUserRestrictionsParams
    public UserRestrictionParams setUSPrivacyString(String str) {
        this.usPrivacyString = str;
        return this;
    }

    private boolean subjectToGDPR() {
        IABSharedPreference iabSharedPreference = BidMachineImpl.get().getIabSharedPreference();
        Boolean bool = (Boolean) Utils.oneOf(this.subjectToGDPR, iabSharedPreference.getTcfGdprApplies(), iabSharedPreference.getSubjectToGDPR());
        return bool != null && bool.booleanValue();
    }

    private boolean hasConsent() {
        Boolean bool = this.hasConsent;
        return bool != null && bool.booleanValue();
    }

    private boolean hasCoppa() {
        Boolean bool = this.hasCoppa;
        return bool != null && bool.booleanValue();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean canSendGeoPosition() {
        return (hasCoppa() || isUserGdprProtected()) ? false : true;
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean canSendUserInfo() {
        return (hasCoppa() || isUserGdprProtected()) ? false : true;
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean canSendDeviceInfo() {
        return !hasCoppa();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean canSendIfa() {
        return !isUserGdprProtected();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean isUserInGdprScope() {
        return subjectToGDPR();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean isUserHasConsent() {
        return hasConsent();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean isUserGdprProtected() {
        return subjectToGDPR() && !hasConsent();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean isUserAgeRestricted() {
        return hasCoppa();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public String getUSPrivacyString() {
        return (String) Utils.oneOf(this.usPrivacyString, BidMachineImpl.get().getIabSharedPreference().getUSPrivacyString());
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean isUserInCcpaScope() {
        String uSPrivacyString = getUSPrivacyString();
        return uSPrivacyString != null && uSPrivacyString.length() == 4 && uSPrivacyString.charAt(0) == '1' && !uSPrivacyString.contains("---");
    }

    @Override // io.bidmachine.models.DataRestrictions
    public boolean isUserHasCcpaConsent() {
        String uSPrivacyString = getUSPrivacyString();
        if (uSPrivacyString != null && uSPrivacyString.length() == 4 && uSPrivacyString.charAt(0) == '1') {
            return uSPrivacyString.charAt(2) == 'N' || uSPrivacyString.charAt(2) == 'n';
        }
        return false;
    }

    @Override // io.bidmachine.models.DataRestrictions
    public String getIABGDPRString() {
        IABSharedPreference iabSharedPreference = BidMachineImpl.get().getIabSharedPreference();
        String str = (String) Utils.oneOf(this.gdprConsentString, iabSharedPreference.getTcfTcString(), iabSharedPreference.getGDPRConsentString());
        return TextUtils.isEmpty(str) ? hasConsent() ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0" : str;
    }
}
