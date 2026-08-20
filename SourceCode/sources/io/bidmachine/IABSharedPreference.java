package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class IABSharedPreference {
    static final String IAB_CONSENT_STRING = "IABConsent_ConsentString";
    static final String IAB_SUBJECT_TO_GDPR = "IABConsent_SubjectToGDPR";
    static final String IAB_TCF_GDPR_APPLIES = "IABTCF_gdprApplies";
    static final String IAB_TCF_TC_STRING = "IABTCF_TCString";
    static final String IAB_US_PRIVACY_STRING = "IABUSPrivacy_String";
    private String iabGDPRConsentString;
    private Boolean iabSubjectToGDPR;
    private Boolean iabTcfGdprApplies;
    private String iabTcfTcString;
    private String iabUSPrivacyString;
    private final SharedPreferences.OnSharedPreferenceChangeListener sharedPreferenceListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: io.bidmachine.IABSharedPreference.1
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case 83641339:
                    if (str.equals(IABSharedPreference.IAB_TCF_GDPR_APPLIES)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 743443760:
                    if (str.equals(IABSharedPreference.IAB_US_PRIVACY_STRING)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 969191740:
                    if (str.equals(IABSharedPreference.IAB_CONSENT_STRING)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1218895378:
                    if (str.equals(IABSharedPreference.IAB_TCF_TC_STRING)) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1233058135:
                    if (str.equals(IABSharedPreference.IAB_SUBJECT_TO_GDPR)) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    IABSharedPreference.this.updateTcfGdprApplies(sharedPreferences);
                    return;
                case 1:
                    IABSharedPreference.this.updateUSPrivacyString(sharedPreferences);
                    return;
                case 2:
                    IABSharedPreference.this.updateConsentString(sharedPreferences);
                    return;
                case 3:
                    IABSharedPreference.this.updateTcfTcString(sharedPreferences);
                    return;
                case 4:
                    IABSharedPreference.this.updateGDPRSubject(sharedPreferences);
                    return;
                default:
                    return;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initialize(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this.sharedPreferenceListener);
        updateConsentString(defaultSharedPreferences);
        updateGDPRSubject(defaultSharedPreferences);
        updateUSPrivacyString(defaultSharedPreferences);
        updateTcfTcString(defaultSharedPreferences);
        updateTcfGdprApplies(defaultSharedPreferences);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getGDPRConsentString() {
        return this.iabGDPRConsentString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateConsentString(SharedPreferences sharedPreferences) {
        this.iabGDPRConsentString = readString(sharedPreferences, IAB_CONSENT_STRING, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Boolean getSubjectToGDPR() {
        return this.iabSubjectToGDPR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGDPRSubject(SharedPreferences sharedPreferences) {
        String readString = readString(sharedPreferences, IAB_SUBJECT_TO_GDPR, null);
        this.iabSubjectToGDPR = readString != null ? Boolean.valueOf(readString.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUSPrivacyString() {
        return this.iabUSPrivacyString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUSPrivacyString(SharedPreferences sharedPreferences) {
        this.iabUSPrivacyString = readString(sharedPreferences, IAB_US_PRIVACY_STRING, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getTcfTcString() {
        return this.iabTcfTcString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTcfTcString(SharedPreferences sharedPreferences) {
        this.iabTcfTcString = readString(sharedPreferences, IAB_TCF_TC_STRING, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Boolean getTcfGdprApplies() {
        return this.iabTcfGdprApplies;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTcfGdprApplies(SharedPreferences sharedPreferences) {
        int readInt = readInt(sharedPreferences, IAB_TCF_GDPR_APPLIES, -1);
        if (readInt == 1) {
            this.iabTcfGdprApplies = true;
        } else if (readInt == 0) {
            this.iabTcfGdprApplies = false;
        } else {
            this.iabTcfGdprApplies = null;
        }
    }

    String readString(SharedPreferences sharedPreferences, String str, String str2) {
        String string;
        try {
            string = sharedPreferences.getString(str, str2);
        } catch (Exception unused) {
        }
        return string != null ? string : str2;
    }

    int readInt(SharedPreferences sharedPreferences, String str, int i) {
        try {
            if (sharedPreferences.contains(str)) {
                return sharedPreferences.getInt(str, i);
            }
        } catch (Exception unused) {
        }
        return i;
    }
}
