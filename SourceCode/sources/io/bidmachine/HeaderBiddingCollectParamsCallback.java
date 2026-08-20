package io.bidmachine;

import io.bidmachine.utils.BMError;
import java.util.Map;
/* loaded from: classes5.dex */
public interface HeaderBiddingCollectParamsCallback {
    void onCollectFail(BMError bMError);

    void onCollectFinished(Map<String, String> map);
}
