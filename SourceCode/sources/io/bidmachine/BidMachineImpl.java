package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import com.explorestack.iab.vast.VastRequest;
import io.bidmachine.AdRequest;
import io.bidmachine.InitialRequest;
import io.bidmachine.NetworkRegistry;
import io.bidmachine.ads.networks.mraid.MraidConfig;
import io.bidmachine.ads.networks.nast.NastConfig;
import io.bidmachine.ads.networks.vast.VastConfig;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.entity.AnalyticsMetricConfig;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.AdCachePlacementControl;
import io.bidmachine.protobuf.AdNetwork;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.protobuf.SdkAnalyticConfig;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.BluetoothUtils;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class BidMachineImpl {
    private static volatile BidMachineImpl instance;
    Context appContext;
    String ifv;
    InitialRequest initialRequest;
    private boolean isTestMode;
    private Publisher publisher;
    private String sellerId;
    private SessionTracker sessionTracker;
    private final Set<InitializationCallback> callbackSet = new CopyOnWriteArraySet();
    private final AtomicBoolean isInitializing = new AtomicBoolean(false);
    private final AtomicBoolean isInitialized = new AtomicBoolean(false);
    private final UserRestrictionParams userRestrictionParams = new UserRestrictionParams();
    private final PriceFloorParams priceFloorParams = new PriceFloorParams().addPriceFloor(UUID.randomUUID().toString(), 0.01d);
    private final DeviceParams deviceParams = new DeviceParams();
    private final IABSharedPreference iabSharedPreference = new IABSharedPreference();
    private final Map<TrackEventType, List<String>> trackingEventTypes = new EnumMap(TrackEventType.class);
    private final List<AdRequest.AdRequestListener<?>> adRequestListeners = new CopyOnWriteArrayList();
    private TargetingParams targetingParams = new TargetingParams();
    private CustomParams customParams = new CustomParams();
    int requestTimeOutMs = 0;
    private int networksLoadingTimeOutSec = 0;

    BidMachineImpl() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BidMachineImpl get() {
        if (instance == null) {
            synchronized (BidMachineImpl.class) {
                if (instance == null) {
                    instance = new BidMachineImpl();
                }
            }
        }
        return instance;
    }

    static {
        Logger.setMessageBuilder(new Logger.LoggerMessageBuilder() { // from class: io.bidmachine.BidMachineImpl.1
            @Override // io.bidmachine.core.Logger.LoggerMessageBuilder
            public String buildMessage(String str) {
                return BidMachineImpl.get().isTestMode() ? String.format("(TEST MODE) %s", str) : str;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void preInitialize(Context context) {
        BidMachineActivityManager.initialize(context);
        UserAgentProvider.initialize(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initialize(Context context, final String str, InitializationCallback initializationCallback) {
        if (isInitialized()) {
            sendOnInitialized(initializationCallback);
        } else if (context == null) {
            Logger.log("Initialization fail: Context is not provided");
        } else if (TextUtils.isEmpty(str)) {
            Logger.log("Initialization fail: Source id is not provided");
        } else {
            if (initializationCallback != null) {
                this.callbackSet.add(initializationCallback);
            }
            if (this.isInitializing.compareAndSet(false, true)) {
                final Context applicationContext = context.getApplicationContext();
                this.appContext = applicationContext;
                this.sellerId = str;
                this.sessionTracker = new SessionTrackerImpl();
                SessionManager.get().resume();
                BluetoothUtils.register(applicationContext);
                Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.BidMachineImpl.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Debugger.setup(applicationContext);
                            BidMachineImpl.this.iabSharedPreference.initialize(applicationContext);
                            BidMachineImpl.this.loadStoredInitResponse(applicationContext);
                            BidMachineImpl.this.initializeNetworks(applicationContext, null);
                            BidMachineImpl.this.notifyInitializationFinished();
                            BidMachineImpl.this.requestInitData(applicationContext, str);
                        } catch (Throwable th) {
                            Logger.log(th);
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getAppContext() {
        return this.appContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String obtainIFV(Context context) {
        if (!TextUtils.isEmpty(this.ifv)) {
            return this.ifv;
        }
        String obtainIFV = BidMachineSharedPreference.obtainIFV(context);
        this.ifv = obtainIFV;
        return obtainIFV;
    }

    private static void sendOnInitialized(final InitializationCallback initializationCallback) {
        if (initializationCallback == null) {
            return;
        }
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineImpl.3
            @Override // java.lang.Runnable
            public void run() {
                InitializationCallback.this.onInitialized();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadStoredInitResponse(Context context) {
        InitResponse initResponse = BidMachineSharedPreference.getInitResponse(context);
        if (initResponse != null) {
            handleInitResponse(initResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestInitData(final Context context, String str) {
        if (this.initialRequest != null) {
            return;
        }
        InitialRequest initialRequest = new InitialRequest(context, str, UrlProvider.getInitUrlQueue());
        this.initialRequest = initialRequest;
        initialRequest.setListener(new InitialRequest.Listener() { // from class: io.bidmachine.BidMachineImpl.4
            @Override // io.bidmachine.core.NetworkRequest.Callback
            public void onSuccess(InitResponse initResponse) {
                if (BidMachineImpl.this.initialRequest != null) {
                    BidMachineImpl.this.initialRequest.destroy();
                    BidMachineImpl.this.initialRequest = null;
                }
                if (initResponse != null) {
                    BidMachineImpl.this.prepareAnalytics(context, initResponse);
                    BidMachineImpl.this.handleInitResponse(initResponse);
                    BidMachineSharedPreference.storeInitResponse(context, initResponse);
                    BidMachineImpl.this.initializeInitNetworks(context, initResponse.getAdNetworksList());
                }
            }

            @Override // io.bidmachine.core.NetworkRequest.Callback
            public void onFail(BMError bMError) {
                InitResponse initResponse = BidMachineSharedPreference.getInitResponse(context);
                if (initResponse != null) {
                    BidMachineImpl.this.initializeInitNetworks(context, initResponse.getAdNetworksList());
                }
            }
        });
        this.initialRequest.request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareAnalytics(Context context, InitResponse initResponse) {
        try {
            if (initResponse.hasSdkAnalyticConfig()) {
                SdkAnalyticConfig sdkAnalyticConfig = initResponse.getSdkAnalyticConfig();
                String url = sdkAnalyticConfig.getUrl();
                String context2 = sdkAnalyticConfig.getContext();
                if (!TextUtils.isEmpty(url) && !TextUtils.isEmpty(context2)) {
                    ArrayList arrayList = new ArrayList();
                    for (SdkAnalyticConfig.MetricConfig metricConfig : sdkAnalyticConfig.getMetricConfigsList()) {
                        arrayList.add(new AnalyticsMetricConfig(metricConfig.getName(), new ArrayList(metricConfig.getDimensionsList()), new ArrayList(metricConfig.getMetricsList())));
                    }
                    BidMachineAnalytics.initialize(context, new AnalyticsConfig.Builder(url, context2).setIntervalSec(sdkAnalyticConfig.getInterval()).setEventBatchSize(sdkAnalyticConfig.getCount()).setAnalyticsMetricConfigList(arrayList).build());
                }
            }
        } catch (Throwable unused) {
        }
    }

    void handleInitResponse(InitResponse initResponse) {
        UrlProvider.setAuctionUrlFromInit(initResponse.getEndpoint());
        this.trackingEventTypes.clear();
        OrtbUtils.prepareEvents(this.trackingEventTypes, initResponse.getEventList());
        SessionManager.get().setSessionResetAfter(initResponse.getSessionResetAfter());
        this.requestTimeOutMs = initResponse.getAdRequestTmax();
        this.networksLoadingTimeOutSec = initResponse.getAdNetworksLoadingTimeout();
        Map<String, AdCachePlacementControl> adCachePlacementControlMap = initResponse.getAdCachePlacementControlMap();
        if (adCachePlacementControlMap != null) {
            AdResponseManager.setAdCachePlacementControlMap(adCachePlacementControlMap);
            AdCachePlacementControl adCachePlacementControl = adCachePlacementControlMap.get(AdsType.Interstitial.getName());
            int maxCacheSize = adCachePlacementControl != null ? adCachePlacementControl.getMaxCacheSize() : 0;
            AdCachePlacementControl adCachePlacementControl2 = adCachePlacementControlMap.get(AdsType.Rewarded.getName());
            if (adCachePlacementControl2 != null) {
                maxCacheSize += adCachePlacementControl2.getMaxCacheSize();
            }
            if (maxCacheSize > 5) {
                VastRequest.setCacheSize(maxCacheSize);
            }
        }
    }

    void initializeInitNetworks(Context context, List<AdNetwork> list) {
        if (list == null) {
            return;
        }
        for (AdNetwork adNetwork : list) {
            NetworkRegistry.registerInitNetwork(context, adNetwork);
        }
    }

    void initializeNetworks(Context context, NetworkRegistry.NetworksInitializeCallback networksInitializeCallback) {
        NetworkRegistry.registerNetwork(new MraidConfig());
        NetworkRegistry.registerNetwork(new VastConfig());
        NetworkRegistry.registerNetwork(new NastConfig());
        NetworkRegistry.initializeNetworks(context, networksInitializeCallback);
    }

    void notifyInitializationFinished() {
        Logger.log("Notify initialization finished");
        this.isInitialized.set(true);
        this.isInitializing.set(false);
        for (InitializationCallback initializationCallback : this.callbackSet) {
            sendOnInitialized(initializationCallback);
        }
        this.callbackSet.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> getTrackingUrls(TrackEventType trackEventType) {
        return this.trackingEventTypes.get(trackEventType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRequestTimeOutMs() {
        return this.requestTimeOutMs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNetworksLoadingTimeOutSec() {
        return this.networksLoadingTimeOutSec;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInitializationStarted() {
        return isInitializing() || isInitialized();
    }

    boolean isInitializing() {
        return this.isInitializing.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInitialized() {
        return this.isInitialized.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTestMode() {
        return this.isTestMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTestMode(boolean z) {
        this.isTestMode = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTracker getSessionTracker() {
        return this.sessionTracker;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getSellerId() {
        return this.sellerId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TargetingParams getTargetingParams() {
        return this.targetingParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTargetingParams(TargetingParams targetingParams) {
        if (targetingParams == null) {
            targetingParams = new TargetingParams();
        }
        this.targetingParams = targetingParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Publisher getPublisher() {
        return this.publisher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    CustomParams getCustomParams() {
        return this.customParams;
    }

    void setCustomParams(CustomParams customParams) {
        if (customParams == null) {
            customParams = new CustomParams();
        }
        this.customParams = customParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserRestrictionParams getUserRestrictionParams() {
        return this.userRestrictionParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PriceFloorParams getPriceFloorParams() {
        return this.priceFloorParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceParams getDeviceParams() {
        return this.deviceParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IABSharedPreference getIabSharedPreference() {
        return this.iabSharedPreference;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void registerAdRequestListener(AdRequest.AdRequestListener<?> adRequestListener) {
        if (adRequestListener == null) {
            return;
        }
        this.adRequestListeners.add(adRequestListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unregisterAdRequestListener(AdRequest.AdRequestListener<?> adRequestListener) {
        if (adRequestListener == null) {
            return;
        }
        this.adRequestListeners.remove(adRequestListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<AdRequest.AdRequestListener<?>> getAdRequestListeners() {
        return this.adRequestListeners;
    }
}
