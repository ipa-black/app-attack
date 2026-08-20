package io.bidmachine;

import android.content.Context;
import io.bidmachine.models.DataRestrictions;
/* loaded from: classes5.dex */
class DeviceInfoImpl implements io.bidmachine.models.DeviceInfo {
    private final DataRestrictions dataRestrictions;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceInfoImpl(DataRestrictions dataRestrictions) {
        this.dataRestrictions = dataRestrictions;
    }

    @Override // io.bidmachine.models.DeviceInfo
    public String getHttpAgent(Context context) {
        if (this.dataRestrictions.canSendDeviceInfo()) {
            return UserAgentProvider.getUserAgent(context);
        }
        return null;
    }

    @Override // io.bidmachine.models.DeviceInfo
    public String getIfa(Context context) {
        return AdvertisingPersonalData.getAdvertisingId(context, !this.dataRestrictions.canSendIfa());
    }

    @Override // io.bidmachine.models.DeviceInfo
    public boolean isLimitAdTrackingEnabled() {
        return AdvertisingPersonalData.isLimitAdTrackingEnabled();
    }
}
