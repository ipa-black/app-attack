package io.bidmachine.ads.networks.adcolony;

import android.text.TextUtils;
import com.adcolony.sdk.AdColony;
import com.adcolony.sdk.AdColonyReward;
import com.adcolony.sdk.AdColonyRewardListener;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class AdColonyRewardListenerWrapper implements AdColonyRewardListener {
    private static volatile AdColonyRewardListenerWrapper instance;
    private final List<AdColonyFullscreenAdListener> listeners = new ArrayList();

    AdColonyRewardListenerWrapper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdColonyRewardListenerWrapper get() {
        if (instance == null) {
            synchronized (AdColonyRewardListenerWrapper.class) {
                if (instance == null) {
                    instance = new AdColonyRewardListenerWrapper();
                    AdColony.setRewardListener(instance);
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addListener(AdColonyFullscreenAdListener adColonyFullscreenAdListener) {
        this.listeners.add(adColonyFullscreenAdListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeListener(AdColonyFullscreenAdListener adColonyFullscreenAdListener) {
        this.listeners.remove(adColonyFullscreenAdListener);
    }

    @Override // com.adcolony.sdk.AdColonyRewardListener
    public void onReward(AdColonyReward adColonyReward) {
        for (AdColonyFullscreenAdListener adColonyFullscreenAdListener : this.listeners) {
            if (TextUtils.equals(adColonyReward.getZoneID(), adColonyFullscreenAdListener.getZoneId())) {
                adColonyFullscreenAdListener.onReward(adColonyReward);
            }
        }
    }
}
