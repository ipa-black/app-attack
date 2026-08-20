package io.bidmachine;

import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.ApiRequest;
import io.bidmachine.ProtoTransformer;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.core.Utils;
import io.bidmachine.utils.BMError;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class AdResponseLoader {
    private final String TAG;
    private NetworkCallback callback;
    private final String id;
    private Listener listener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface Listener {
        void onCancel();

        void onFail(BMError bMError);

        void onSuccess(AdResponse adResponse);
    }

    public AdResponseLoader() {
        this(UUID.randomUUID().toString());
    }

    public AdResponseLoader(String str) {
        this.TAG = Utils.generateTag("AdResponseLoader", this);
        this.id = str;
    }

    String getId() {
        return this.id;
    }

    public void load(AdRequestParameters adRequestParameters, List<NetworkAdUnit> list, ApiRequest.Builder<?, Response> builder, Listener listener) {
        Logger.log(this.TAG, "load");
        NetworkCallback networkCallback = this.callback;
        if (networkCallback != null) {
            networkCallback.clear();
        }
        this.listener = listener;
        NetworkCallback networkCallback2 = new NetworkCallback(this.id, builder.getUrl(), adRequestParameters, list, listener);
        this.callback = networkCallback2;
        builder.setCallback(networkCallback2);
        builder.setCancelCallback(this.callback);
        NetworkRequestManager.get().add(this.id, builder.request());
    }

    public void cancel() {
        Logger.log(this.TAG, "cancel");
        this.listener = null;
        NetworkCallback networkCallback = this.callback;
        if (networkCallback != null) {
            networkCallback.clear();
            this.callback = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class NetworkCallback implements NetworkRequest.Callback<Response, BMError>, NetworkRequest.CancelCallback {
        private final AdRequestParameters adRequestParameters;
        private final String id;
        private final List<NetworkAdUnit> networkAdUnitList;
        private final String url;
        private final WeakReference<Listener> weakListener;
        private final AtomicBoolean isSent = new AtomicBoolean(false);
        private final AtomicBoolean isCleared = new AtomicBoolean(false);
        private final AtomicBoolean isNetworkAuctionNotified = new AtomicBoolean(false);

        public NetworkCallback(String str, String str2, AdRequestParameters adRequestParameters, List<NetworkAdUnit> list, Listener listener) {
            this.id = str;
            this.url = str2;
            this.adRequestParameters = adRequestParameters;
            this.networkAdUnitList = list;
            this.weakListener = new WeakReference<>(listener);
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onSuccess(Response response) {
            NetworkRequestManager.get().remove(this.id);
            UrlProvider.setAuctionUrlFromSuccessRequest(this.url);
            ProtoTransformer.toAdResponse(this.adRequestParameters, this.networkAdUnitList, response, new ProtoTransformer.Listener<AdResponse>() { // from class: io.bidmachine.AdResponseLoader.NetworkCallback.1
                @Override // io.bidmachine.ProtoTransformer.Listener
                public void onSuccess(AdResponse adResponse) {
                    AdResponseStatus adResponseStatus;
                    if (NetworkCallback.this.cantSend()) {
                        adResponseStatus = AdResponseStatus.Idle;
                    } else {
                        adResponseStatus = AdResponseStatus.Busy;
                    }
                    adResponse.setStatus(adResponseStatus);
                    AdResponseManager.get().store(adResponse);
                    NetworkCallback.this.notifyNetworkAuctionResult(adResponse);
                    NetworkCallback.this.sendSuccess(adResponse);
                }

                @Override // io.bidmachine.ProtoTransformer.Listener
                public void onFail(BMError bMError) {
                    NetworkCallback.this.notifyNetworkAuctionResult(null);
                    NetworkCallback.this.sendFail(bMError);
                }
            });
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onFail(BMError bMError) {
            NetworkRequestManager.get().remove(this.id);
            notifyNetworkAuctionResult(null);
            AdResponse receive = AdResponseManager.get().receive(this.adRequestParameters);
            if (receive != null) {
                sendSuccess(receive);
            } else {
                sendFail(bMError);
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.CancelCallback
        public void onCanceled() {
            NetworkRequestManager.get().remove(this.id);
            notifyNetworkAuctionResult(null);
            sendCancel();
        }

        public void clear() {
            this.isCleared.set(true);
            this.weakListener.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean cantSend() {
            return this.isCleared.get() || this.isSent.get() || this.weakListener.get() == null;
        }

        private Listener prepareForSend() {
            if (cantSend()) {
                return null;
            }
            this.isSent.set(true);
            return this.weakListener.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendSuccess(AdResponse adResponse) {
            Listener prepareForSend = prepareForSend();
            if (prepareForSend != null) {
                prepareForSend.onSuccess(adResponse);
            } else {
                adResponse.setStatus(AdResponseStatus.Idle);
            }
            clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendFail(BMError bMError) {
            Listener prepareForSend = prepareForSend();
            if (prepareForSend != null) {
                prepareForSend.onFail(bMError);
            }
            clear();
        }

        private void sendCancel() {
            Listener prepareForSend = prepareForSend();
            if (prepareForSend != null) {
                prepareForSend.onCancel();
            }
            clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyNetworkAuctionResult(AdResponse adResponse) {
            if (this.isNetworkAuctionNotified.get()) {
                return;
            }
            this.isNetworkAuctionNotified.set(true);
            NetworkAdUnit winnerNetworkAdUnit = adResponse != null ? adResponse.getWinnerNetworkAdUnit() : null;
            if (winnerNetworkAdUnit == null) {
                for (NetworkAdUnit networkAdUnit : this.networkAdUnitList) {
                    try {
                        networkAdUnit.getNetworkAdapter().onLossAuction(networkAdUnit);
                    } catch (Throwable unused) {
                    }
                }
                return;
            }
            for (NetworkAdUnit networkAdUnit2 : this.networkAdUnitList) {
                if (networkAdUnit2 == winnerNetworkAdUnit) {
                    try {
                        networkAdUnit2.getNetworkAdapter().onWinAuction(networkAdUnit2);
                    } catch (Throwable unused2) {
                    }
                } else {
                    networkAdUnit2.getNetworkAdapter().onLossAuction(networkAdUnit2);
                }
            }
        }
    }
}
