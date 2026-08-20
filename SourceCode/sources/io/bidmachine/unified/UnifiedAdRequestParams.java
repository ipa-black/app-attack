package io.bidmachine.unified;

import io.bidmachine.AdRequestParameters;
import io.bidmachine.GeneralParams;
import io.bidmachine.models.DeviceInfo;
/* loaded from: classes5.dex */
public interface UnifiedAdRequestParams extends GeneralParams {
    AdRequestParameters getAdRequestParameters();

    DeviceInfo getDeviceInfo();
}
