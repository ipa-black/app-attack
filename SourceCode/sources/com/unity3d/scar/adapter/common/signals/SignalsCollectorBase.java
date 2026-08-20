package com.unity3d.scar.adapter.common.signals;

import android.content.Context;
import com.unity3d.scar.adapter.common.DispatchGroup;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class SignalsCollectorBase implements ISignalsCollector {
    public static final String SCAR_INT_SIGNAL = "gmaScarBiddingInterstitialSignal";
    public static final String SCAR_RV_SIGNAL = "gmaScarBiddingRewardedSignal";

    @Override // com.unity3d.scar.adapter.common.signals.ISignalsCollector
    public void getSCARSignals(Context context, String[] strArr, String[] strArr2, ISignalCollectionListener iSignalCollectionListener) {
        DispatchGroup dispatchGroup = new DispatchGroup();
        SignalsResult signalsResult = new SignalsResult();
        for (String str : strArr) {
            dispatchGroup.enter();
            getSCARSignal(context, str, true, dispatchGroup, signalsResult);
        }
        for (String str2 : strArr2) {
            dispatchGroup.enter();
            getSCARSignal(context, str2, false, dispatchGroup, signalsResult);
        }
        dispatchGroup.notify(new GMAScarDispatchCompleted(iSignalCollectionListener, signalsResult));
    }

    @Override // com.unity3d.scar.adapter.common.signals.ISignalsCollector
    public void getSCARBiddingSignals(Context context, ISignalCollectionListener iSignalCollectionListener) {
        DispatchGroup dispatchGroup = new DispatchGroup();
        SignalsResult signalsResult = new SignalsResult();
        dispatchGroup.enter();
        getSCARSignal(context, true, dispatchGroup, signalsResult);
        dispatchGroup.enter();
        getSCARSignal(context, false, dispatchGroup, signalsResult);
        dispatchGroup.notify(new GMAScarDispatchCompleted(iSignalCollectionListener, signalsResult));
    }

    public void onOperationNotSupported(String str, DispatchGroup dispatchGroup, SignalsResult signalsResult) {
        signalsResult.setErrorMessage(String.format("Operation Not supported: %s.", str));
        dispatchGroup.leave();
    }

    /* loaded from: classes3.dex */
    private class GMAScarDispatchCompleted implements Runnable {
        private ISignalCollectionListener _signalListener;
        private SignalsResult _signalsResult;

        public GMAScarDispatchCompleted(ISignalCollectionListener iSignalCollectionListener, SignalsResult signalsResult) {
            this._signalListener = iSignalCollectionListener;
            this._signalsResult = signalsResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> signalsMap = this._signalsResult.getSignalsMap();
            if (signalsMap.size() > 0) {
                this._signalListener.onSignalsCollected(new JSONObject(signalsMap).toString());
            } else if (this._signalsResult.getErrorMessage() == null) {
                this._signalListener.onSignalsCollected("");
            } else {
                this._signalListener.onSignalsCollectionFailed(this._signalsResult.getErrorMessage());
            }
        }
    }
}
