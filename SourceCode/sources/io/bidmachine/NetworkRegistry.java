package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import io.bidmachine.core.Logger;
import io.bidmachine.protobuf.AdNetwork;
import io.bidmachine.utils.BMError;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class NetworkRegistry {
    static final Map<String, NetworkAdapter> NETWORK_ADAPTER_MAP = new ConcurrentHashMap();
    static final Map<String, NetworkConfig> PENDING_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    static final Map<String, NetworkConfig> CACHED_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    static final Map<String, NetworkConfig> FROM_INIT_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    private static final AtomicBoolean IS_NETWORKS_INITIALIZED = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface NetworksInitializeCallback {
        void onExecuted();
    }

    public static NetworkAdapter obtainAdapter(NetworkConfig networkConfig) {
        synchronized (NetworkRegistry.class) {
            String networkKey = networkConfig.getNetworkKey();
            NetworkAdapter adapter = getAdapter(networkKey);
            if (adapter != null) {
                return adapter;
            }
            NetworkAdapter createNetworkAdapter = networkConfig.createNetworkAdapter();
            NETWORK_ADAPTER_MAP.put(networkKey, createNetworkAdapter);
            return createNetworkAdapter;
        }
    }

    public static NetworkAdapter getAdapter(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return NETWORK_ADAPTER_MAP.get(str);
    }

    static NetworkConfig getConfig(String str) {
        if (str == null) {
            return null;
        }
        return CACHED_NETWORK_CONFIG_MAP.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, NetworkConfig> createInitNetworkConfigMap() {
        return new HashMap(FROM_INIT_NETWORK_CONFIG_MAP);
    }

    static boolean isNetworkRegistered(String str) {
        return getAdapter(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String checkAndPutNetwork(Context context, AdsType adsType, NetworkConfig networkConfig, Map<String, NetworkConfig> map) {
        NetworkAdapter adapter = getAdapter(networkConfig.getNetworkKey());
        if (adapter == null) {
            return "Network not registered";
        }
        if (!adapter.isAdsTypeSupported(adsType)) {
            return "Network does not support this ad type";
        }
        if (!adapter.isInitialized(context)) {
            return "Network not initialized";
        }
        map.put(networkConfig.getNetworkKey(), networkConfig);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetworks(NetworkConfig... networkConfigArr) {
        if (networkConfigArr == null || networkConfigArr.length <= 0) {
            return;
        }
        for (NetworkConfig networkConfig : networkConfigArr) {
            registerNetwork(networkConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetworks(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                NetworkConfig create = NetworkConfigFactory.create(context, jSONArray.getJSONObject(i));
                if (create != null) {
                    registerNetwork(create);
                }
            }
        } catch (JSONException e2) {
            Logger.log(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetwork(NetworkConfig networkConfig) {
        BidMachineImpl bidMachineImpl;
        Context appContext;
        if (networkConfig == null || isNetworkRegistered(networkConfig.getNetworkKey())) {
            return;
        }
        obtainAdapter(networkConfig);
        PENDING_NETWORK_CONFIG_MAP.put(networkConfig.getNetworkKey(), networkConfig);
        if (!isNetworksInitialized() || (appContext = (bidMachineImpl = BidMachineImpl.get()).getAppContext()) == null) {
            return;
        }
        initializeNetwork(new SimpleContextProvider(appContext), new InitializationParamsImpl(bidMachineImpl.getTargetingParams(), bidMachineImpl.getUserRestrictionParams()), networkConfig, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerInitNetwork(Context context, AdNetwork adNetwork) {
        NetworkConfig create;
        if (isNetworkRegistered(adNetwork.getName()) || (create = NetworkConfigFactory.create(context, adNetwork)) == null) {
            return;
        }
        FROM_INIT_NETWORK_CONFIG_MAP.put(create.getNetworkKey(), create);
        registerNetwork(create);
    }

    static boolean isNetworksInitialized() {
        return IS_NETWORKS_INITIALIZED.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v1, types: [io.bidmachine.NetworkRegistry$1] */
    public static void initializeNetworks(final Context context, final NetworksInitializeCallback networksInitializeCallback) {
        AtomicBoolean atomicBoolean = IS_NETWORKS_INITIALIZED;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        new Thread() { // from class: io.bidmachine.NetworkRegistry.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                BidMachineImpl bidMachineImpl = BidMachineImpl.get();
                NetworkRegistry.initializeNetworks(new SimpleContextProvider(context), new InitializationParamsImpl(bidMachineImpl.getTargetingParams(), bidMachineImpl.getUserRestrictionParams()), NetworkRegistry.PENDING_NETWORK_CONFIG_MAP.values(), networksInitializeCallback);
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initializeNetworks(ContextProvider contextProvider, InitializationParams initializationParams, Collection<NetworkConfig> collection, NetworksInitializeCallback networksInitializeCallback) {
        if (collection.size() > 0) {
            final CountDownLatch countDownLatch = new CountDownLatch(collection.size());
            for (NetworkConfig networkConfig : collection) {
                initializeNetwork(contextProvider, initializationParams, networkConfig, new NetworksInitializeCallback() { // from class: io.bidmachine.NetworkRegistry.2
                    @Override // io.bidmachine.NetworkRegistry.NetworksInitializeCallback
                    public void onExecuted() {
                        countDownLatch.countDown();
                    }
                });
            }
            try {
                countDownLatch.await();
            } catch (InterruptedException e2) {
                Logger.log(e2);
            }
        }
        if (networksInitializeCallback != null) {
            networksInitializeCallback.onExecuted();
        }
    }

    private static void initializeNetwork(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfig networkConfig, NetworksInitializeCallback networksInitializeCallback) {
        new NetworkLoadTask(contextProvider, initializationParams, networkConfig, networksInitializeCallback).execute();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLoggingEnabled(boolean z) {
        for (Map.Entry<String, NetworkAdapter> entry : NETWORK_ADAPTER_MAP.entrySet()) {
            try {
                entry.getValue().setLogging(z);
            } catch (Throwable th) {
                Logger.log(th);
            }
        }
    }

    static void reset() {
        NETWORK_ADAPTER_MAP.clear();
        PENDING_NETWORK_CONFIG_MAP.clear();
        CACHED_NETWORK_CONFIG_MAP.clear();
        FROM_INIT_NETWORK_CONFIG_MAP.clear();
        IS_NETWORKS_INITIALIZED.set(false);
        NetworkLoadTask.networkLoadTaskList.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class NetworkLoadTask implements Runnable {
        private static final Executor executor = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));
        static final List<NetworkLoadTask> networkLoadTaskList = new CopyOnWriteArrayList();
        private final NetworksInitializeCallback callback;
        private final ContextProvider contextProvider;
        private final InitializationParams initializationParams;
        private final NetworkConfig networkConfig;
        private final String networkKey;
        private final TrackingObject trackingObject;

        private NetworkLoadTask(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfig networkConfig, NetworksInitializeCallback networksInitializeCallback) {
            this.contextProvider = contextProvider;
            this.initializationParams = initializationParams;
            this.networkConfig = networkConfig;
            this.callback = networksInitializeCallback;
            String networkKey = networkConfig.getNetworkKey();
            this.networkKey = networkKey;
            this.trackingObject = new SimpleTrackingObject(String.format("%s_initialize", networkKey));
        }

        @Override // java.lang.Runnable
        public void run() {
            Logger.log(this.networkKey, "Initialization started");
            try {
                BidMachineEvents.eventStart(this.trackingObject, TrackEventType.HeaderBiddingNetworkInitialize, new TrackEventInfo().withParameter("HB_NETWORK", this.networkKey));
                NetworkAdapter obtainAdapter = NetworkRegistry.obtainAdapter(this.networkConfig);
                obtainAdapter.setLogging(Logger.isLoggingEnabled());
                obtainAdapter.initialize(this.contextProvider, this.initializationParams, this.networkConfig.getNetworkConfigParams(), new InitializationCallback(this));
                if (!NetworkRegistry.CACHED_NETWORK_CONFIG_MAP.containsKey(this.networkKey)) {
                    NetworkRegistry.CACHED_NETWORK_CONFIG_MAP.put(this.networkKey, this.networkConfig);
                }
                for (AdsType adsType : this.networkConfig.getSupportedAdsTypes(obtainAdapter)) {
                    adsType.addNetworkConfig(this.networkKey, this.networkConfig);
                }
                NetworkRegistry.PENDING_NETWORK_CONFIG_MAP.remove(this.networkKey);
            } catch (Throwable th) {
                Logger.log(th);
                onInitializationFail("Network initialization exception");
            }
            NetworksInitializeCallback networksInitializeCallback = this.callback;
            if (networksInitializeCallback != null) {
                networksInitializeCallback.onExecuted();
            }
        }

        void execute() {
            networkLoadTaskList.add(this);
            executor.execute(this);
        }

        void onInitializationSuccess(NetworkAdapter networkAdapter) {
            Logger.log(this.networkKey, String.format("Initialization completed: %s, %s", networkAdapter.getSdkVersion(), networkAdapter.getAdapterVersion()));
            if (networkAdapter instanceof HeaderBiddingAdapter) {
                BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.HeaderBiddingNetworkInitialize, null, null);
            } else {
                BidMachineEvents.clearEvent(this.trackingObject, TrackEventType.HeaderBiddingNetworkInitialize);
            }
            networkLoadTaskList.remove(this);
        }

        void onInitializationFail(String str) {
            Logger.logError(this.networkKey, String.format("Initialization error: %s", str));
            BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.HeaderBiddingNetworkInitialize, null, BMError.adapterInitialization(str));
            networkLoadTaskList.remove(this);
        }

        /* loaded from: classes5.dex */
        private static class InitializationCallback implements InternalNetworkInitializationCallback {
            private final WeakReference<NetworkLoadTask> weakNetworkLoadTask;

            public InitializationCallback(NetworkLoadTask networkLoadTask) {
                this.weakNetworkLoadTask = new WeakReference<>(networkLoadTask);
            }

            @Override // io.bidmachine.InternalNetworkInitializationCallback
            public void onSuccess(NetworkAdapter networkAdapter) {
                NetworkLoadTask networkLoadTask = this.weakNetworkLoadTask.get();
                if (networkLoadTask != null) {
                    networkLoadTask.onInitializationSuccess(networkAdapter);
                }
            }

            @Override // io.bidmachine.InternalNetworkInitializationCallback
            public void onFail(NetworkAdapter networkAdapter, String str) {
                NetworkLoadTask networkLoadTask = this.weakNetworkLoadTask.get();
                if (networkLoadTask != null) {
                    networkLoadTask.onInitializationFail(str);
                }
            }
        }
    }
}
