package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.openrtb.Openrtb;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.AdRequest;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.AdResponseLoader;
import io.bidmachine.ApiRequest;
import io.bidmachine.ProtoTransformer;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.measurer.OMSDKSettings;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.RequestBuilder;
import io.bidmachine.models.RequestParams;
import io.bidmachine.protobuf.RequestExtension;
import io.bidmachine.protobuf.ResponsePayload;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* loaded from: classes5.dex */
public abstract class AdRequest<SelfType extends AdRequest, AdRequestParametersType extends AdRequestParameters, UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final String TAG = Utils.generateTag("AdRequest", this);
    List<AdRequestListener<SelfType>> adRequestListeners;
    private final AdRequestParametersType adRequestParameters;
    AdResponse adResponse;
    private final AdResponseLoader adResponseLoader;
    final Queue<String> auctionUrlQueue;
    private final String id;
    List<InternalAdRequestListener<SelfType>> internalAdRequestListeners;
    private final AtomicBoolean isApiRequestCanceled;
    private final AtomicBoolean isApiRequestCompleted;
    private boolean isDestroyed;
    private final AtomicBoolean isLoading;
    private final AtomicBoolean isRequestExpired;
    private final List<NetworkAdUnit> networkAdUnits;
    private final Runnable timeOutRunnable;
    private final TrackingObject trackingObject;
    private UnifiedAdRequestParamsType unifiedAdRequestParams;

    /* loaded from: classes5.dex */
    public interface AdRequestListener<AdRequestType extends AdRequest> {
        void onRequestExpired(AdRequestType adrequesttype);

        void onRequestFailed(AdRequestType adrequesttype, BMError bMError);

        void onRequestSuccess(AdRequestType adrequesttype, AuctionResult auctionResult);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface InternalAdRequestListener<AdRequestType extends AdRequest> {
        void onRequestDestroyed(AdRequestType adrequesttype);
    }

    protected abstract UnifiedAdRequestParamsType createUnifiedAdRequestParams(AdRequestParametersType adrequestparameterstype, TargetingParams targetingParams, DataRestrictions dataRestrictions);

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPlacementBuilderMatch(PlacementBuilder placementBuilder) {
        return true;
    }

    protected void onBeforeSetDisplayPlacementBuilder(Placement.DisplayPlacement.Builder builder) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBeforeSetVideoPlacementBuilder(Placement.VideoPlacement.Builder builder) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBuildPlacement(Placement.Builder builder) {
    }

    protected BMError verifyRequest() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdRequest(AdRequestParametersType adrequestparameterstype) {
        String uuid = UUID.randomUUID().toString();
        this.id = uuid;
        this.networkAdUnits = new CopyOnWriteArrayList();
        this.isLoading = new AtomicBoolean(false);
        this.isApiRequestCanceled = new AtomicBoolean(false);
        this.isApiRequestCompleted = new AtomicBoolean(false);
        this.isRequestExpired = new AtomicBoolean(false);
        this.timeOutRunnable = new Runnable() { // from class: io.bidmachine.AdRequest.1
            @Override // java.lang.Runnable
            public void run() {
                AdResponse receive = AdResponseManager.get().receive(AdRequest.this.adRequestParameters);
                if (receive != null) {
                    AdRequest.this.processApiRequestSuccess(receive);
                    return;
                }
                AdRequest.this.processApiRequestFail(BMError.TimeoutError);
                AdRequest.this.cancel();
            }
        };
        this.trackingObject = new SimpleTrackingObject(uuid) { // from class: io.bidmachine.AdRequest.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.TrackingObject
            public List<String> getTrackingUrls(TrackEventType trackEventType) {
                if (AdRequest.this.adResponse != null) {
                    return AdRequest.this.adResponse.getTrackUrlListByEvent(trackEventType);
                }
                return super.getTrackingUrls(trackEventType);
            }
        };
        this.adRequestParameters = adrequestparameterstype;
        this.adResponseLoader = new AdResponseLoader(uuid);
        this.auctionUrlQueue = new LinkedList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AdsType getAdsType() {
        return this.adRequestParameters.getAdsType();
    }

    public AdRequestParametersType getAdRequestParameters() {
        return this.adRequestParameters;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdResponse getAdResponse() {
        return this.adResponse;
    }

    Object build(Context context, AdsType adsType) {
        Map<String, Double> priceFloors;
        try {
            String sellerId = BidMachineImpl.get().getSellerId();
            if (TextUtils.isEmpty(sellerId)) {
                return BMError.notFound("SellerId");
            }
            BidMachineImpl bidMachineImpl = BidMachineImpl.get();
            SessionManager sessionManager = SessionManager.get();
            AdvertisingPersonalData.updateInfo(context);
            TargetingParams targetingParams = (TargetingParams) RequestParams.resolveParams(this.adRequestParameters.getTargetingParams(), bidMachineImpl.getTargetingParams());
            UserRestrictionParams userRestrictionParams = bidMachineImpl.getUserRestrictionParams();
            this.unifiedAdRequestParams = createUnifiedAdRequestParams(this.adRequestParameters, targetingParams, userRestrictionParams);
            SessionAdParams sessionDuration = sessionManager.getSessionAdParams(adsType).setSessionDuration(Integer.valueOf(sessionManager.getSessionDuration()));
            SessionAdParams sessionAdParams = (SessionAdParams) RequestParams.resolveParams(this.adRequestParameters.getSessionAdParams(), sessionDuration);
            PriceFloorParams priceFloorParams = this.adRequestParameters.getPriceFloorParams();
            if (priceFloorParams != null && !priceFloorParams.getPriceFloors().isEmpty()) {
                priceFloors = priceFloorParams.getPriceFloors();
            } else {
                priceFloors = bidMachineImpl.getPriceFloorParams().getPriceFloors();
            }
            if (priceFloors.size() == 0) {
                return BMError.notFound("PriceFloors");
            }
            Request.Builder newBuilder = Request.newBuilder();
            Request.Item.Builder newBuilder2 = Request.Item.newBuilder();
            newBuilder2.setId(UUID.randomUUID().toString());
            newBuilder2.setQty(1);
            for (Iterator<Map.Entry<String, Double>> it = priceFloors.entrySet().iterator(); it.hasNext(); it = it) {
                Map.Entry<String, Double> next = it.next();
                Request.Item.Deal.Builder newBuilder3 = Request.Item.Deal.newBuilder();
                newBuilder3.setId(next.getKey());
                newBuilder3.setFlr(next.getValue().doubleValue());
                newBuilder3.setFlrcur("USD");
                newBuilder2.addDeal(newBuilder3);
            }
            Placement.Builder newBuilder4 = Placement.newBuilder();
            newBuilder4.setSsai(0);
            newBuilder4.setSdk(BidMachine.NAME);
            newBuilder4.setSdkver("2.1.5");
            newBuilder4.setSecure(!Utils.canUseCleartextTraffic());
            String placementId = this.adRequestParameters.getPlacementId();
            if (!TextUtils.isEmpty(placementId)) {
                newBuilder4.setTagid(placementId);
            }
            ArrayList arrayList = new ArrayList();
            adsType.collectPlacements(new SimpleContextProvider(context), this, this.unifiedAdRequestParams, collectNetworkConfig(context, adsType), arrayList, this.networkAdUnits, bidMachineImpl.getNetworksLoadingTimeOutSec());
            for (Message.Builder builder : arrayList) {
                if (builder instanceof Placement.DisplayPlacement.Builder) {
                    Placement.DisplayPlacement.Builder builder2 = (Placement.DisplayPlacement.Builder) builder;
                    onBeforeSetDisplayPlacementBuilder(builder2);
                    newBuilder4.setDisplay(builder2);
                } else if (builder instanceof Placement.VideoPlacement.Builder) {
                    Placement.VideoPlacement.Builder builder3 = (Placement.VideoPlacement.Builder) builder;
                    onBeforeSetVideoPlacementBuilder(builder3);
                    newBuilder4.setVideo(builder3);
                } else {
                    throw new IllegalArgumentException("Unsupported display type: " + builder);
                }
            }
            Struct.Builder newBuilder5 = Struct.newBuilder();
            OMSDKSettings.fillExtension(newBuilder5);
            ListValue.Builder newBuilder6 = ListValue.newBuilder();
            for (AdResponse adResponse : AdResponseManager.get().peek(this.adRequestParameters)) {
                newBuilder6.addValues(adResponse.createBidCacheExtensionValue());
            }
            if (newBuilder6.getValuesCount() > 0) {
                newBuilder5.putFields("bid_cache", Value.newBuilder().setListValue(newBuilder6).build());
            }
            if (newBuilder5.getFieldsCount() > 0) {
                newBuilder4.setExt(newBuilder5);
            }
            onBuildPlacement(newBuilder4);
            newBuilder2.setSpec(Any.pack(newBuilder4.build()));
            newBuilder.addItem(newBuilder2.build());
            Context.Builder newBuilder7 = com.explorestack.protobuf.adcom.Context.newBuilder();
            Context.App.Builder newBuilder8 = Context.App.newBuilder();
            Publisher publisher = bidMachineImpl.getPublisher();
            if (publisher != null) {
                publisher.build(newBuilder8);
            }
            targetingParams.build(context, newBuilder8);
            Struct.Builder newBuilder9 = Struct.newBuilder();
            targetingParams.fillAppExtension(newBuilder9);
            if (newBuilder9.getFieldsCount() > 0) {
                newBuilder8.setExt(newBuilder9.build());
            }
            newBuilder7.setApp(newBuilder8);
            BlockedParams blockedParams = targetingParams.getBlockedParams();
            if (blockedParams != null) {
                Context.Restrictions.Builder newBuilder10 = Context.Restrictions.newBuilder();
                blockedParams.build(newBuilder10);
                newBuilder7.setRestrictions(newBuilder10);
            }
            Context.User.Builder newBuilder11 = Context.User.newBuilder();
            userRestrictionParams.build(newBuilder11);
            if (userRestrictionParams.canSendUserInfo()) {
                targetingParams.build(newBuilder11);
            }
            Struct.Builder newBuilder12 = Struct.newBuilder();
            sessionAdParams.fillUserExtension(newBuilder12);
            if (newBuilder12.getFieldsCount() > 0) {
                newBuilder11.setExt(newBuilder12.build());
            }
            sessionDuration.setIsUserClickedOnLastAd((Boolean) false);
            newBuilder7.setUser(newBuilder11);
            Context.Regs.Builder newBuilder13 = Context.Regs.newBuilder();
            userRestrictionParams.build(newBuilder13);
            newBuilder7.setRegs(newBuilder13);
            Context.Device.Builder newBuilder14 = Context.Device.newBuilder();
            bidMachineImpl.getDeviceParams().build(context, newBuilder14, targetingParams, bidMachineImpl.getTargetingParams(), userRestrictionParams);
            Struct.Builder newBuilder15 = Struct.newBuilder();
            bidMachineImpl.getDeviceParams().fillDeviceExtension(context, newBuilder15, userRestrictionParams);
            if (newBuilder15.getFieldsCount() > 0) {
                newBuilder14.setExt(newBuilder15.build());
            }
            newBuilder7.setDevice(newBuilder14);
            newBuilder.setContext(Any.pack(newBuilder7.build()));
            newBuilder.setTest(bidMachineImpl.isTestMode());
            newBuilder.addCur("USD");
            newBuilder.setAt(2);
            newBuilder.setTmax(10000);
            CustomParams customParams = this.adRequestParameters.getCustomParams();
            if (customParams != null) {
                Struct.Builder newBuilder16 = Struct.newBuilder();
                customParams.fillStructBuilder(newBuilder16);
                if (newBuilder16.getFieldsCount() > 0) {
                    Struct.Builder newBuilder17 = Struct.newBuilder();
                    newBuilder17.putFields("custom_params", Value.newBuilder().setStructValue(newBuilder16).build());
                    newBuilder.setExt(newBuilder17.build());
                }
            }
            RequestExtension.Builder newBuilder18 = RequestExtension.newBuilder();
            newBuilder18.setSellerId(sellerId);
            newBuilder18.setBmIfv(bidMachineImpl.obtainIFV(context));
            newBuilder18.setSessionId(sessionManager.getSessionId());
            newBuilder.addExtProto(Any.pack(newBuilder18.build()));
            return newBuilder.build();
        } catch (Throwable th) {
            Logger.log(th);
            return null;
        }
    }

    List<NetworkConfig> collectNetworkConfig(android.content.Context context, AdsType adsType) {
        List<NetworkConfig> networkConfigList = this.adRequestParameters.getNetworkConfigList();
        if (networkConfigList == null) {
            return new ArrayList(adsType.getNetworkConfigs().values());
        }
        Map<String, NetworkConfig> createInitNetworkConfigMap = NetworkRegistry.createInitNetworkConfigMap();
        for (NetworkConfig networkConfig : networkConfigList) {
            String checkAndPutNetwork = NetworkRegistry.checkAndPutNetwork(context, adsType, networkConfig, createInitNetworkConfigMap);
            if (checkAndPutNetwork != null) {
                logError(String.format("%s was removed from AdRequest: %s", networkConfig.getNetworkKey(), checkAndPutNetwork));
            }
        }
        return new ArrayList(createInitNetworkConfigMap.values());
    }

    public AuctionResult getAuctionResult() {
        AdResponse adResponse = this.adResponse;
        if (adResponse != null) {
            return adResponse.getAuctionResult();
        }
        return null;
    }

    public void request(final android.content.Context context) {
        if (!BidMachineImpl.get().isInitialized()) {
            processRequestFail(BMError.internal("BidMachine not initialized"));
        } else if (isDestroyed()) {
            processRequestFail(BMError.RequestDestroyed);
        } else {
            BMError verifyRequest = verifyRequest();
            if (verifyRequest != null) {
                processRequestFail(verifyRequest);
            } else if (isLoading()) {
            } else {
                setLoading(true);
                AdRequestExecutor.get().execute(new Runnable() { // from class: io.bidmachine.AdRequest.3
                    static final /* synthetic */ boolean $assertionsDisabled = false;

                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            AdRequest.this.cancel();
                            AdRequest.this.unsubscribeTimeOut();
                            if (AdRequest.this.adResponse != null) {
                                AdRequest.this.adResponse.detachAdRequest(AdRequest.this);
                                AdRequest.this.adResponse = null;
                            }
                            AdRequest.this.isApiRequestCanceled.set(false);
                            AdRequest.this.isApiRequestCompleted.set(false);
                            AdRequest.this.subscribeTimeOut();
                            AdRequest.this.log("Request start");
                            BidMachineEvents.eventStart(AdRequest.this.trackingObject, TrackEventType.AuctionRequest);
                            String bidPayload = AdRequest.this.adRequestParameters.getBidPayload();
                            if (!TextUtils.isEmpty(bidPayload)) {
                                AdRequest.this.processBidPayload(bidPayload);
                            } else {
                                AdRequest.this.processRequestObject(context);
                            }
                        } catch (Throwable th) {
                            Logger.log(th);
                            AdRequest.this.processRequestFail(BMError.internal("Exception when loading ad request"));
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processBidPayload(String str) {
        try {
            ResponsePayload parseFrom = ResponsePayload.parseFrom(Base64.decode(str, 0));
            if (parseFrom != null) {
                processBidPayload(parseFrom);
                return;
            }
        } catch (Throwable th) {
            Logger.log(th);
        }
        processRequestFail(BMError.incorrectContent("Incorrect BidPayload format"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processBidPayload(ResponsePayload responsePayload) {
        if (isBidPayloadValid(responsePayload)) {
            Openrtb responseCache = responsePayload.getResponseCache();
            if (responseCache != null && responseCache != Openrtb.getDefaultInstance()) {
                ProtoTransformer.toAdResponse(this.adRequestParameters, this.networkAdUnits, responseCache.getResponse(), new ProtoTransformer.Listener<AdResponse>() { // from class: io.bidmachine.AdRequest.4
                    @Override // io.bidmachine.ProtoTransformer.Listener
                    public void onSuccess(AdResponse adResponse) {
                        AdRequest.this.processApiRequestSuccess(adResponse);
                    }

                    @Override // io.bidmachine.ProtoTransformer.Listener
                    public void onFail(BMError bMError) {
                        AdRequest.this.processApiRequestFail(bMError);
                    }
                });
                return;
            }
            String responseCacheUrl = responsePayload.getResponseCacheUrl();
            if (!TextUtils.isEmpty(responseCacheUrl) && Utils.isHttpUrl(responseCacheUrl)) {
                retrieveBody(responseCacheUrl);
                return;
            }
        }
        processRequestFail(BMError.incorrectContent("BidPayload does not contain Response or URL"));
    }

    boolean isBidPayloadValid(ResponsePayload responsePayload) {
        Placement requestItemSpec = responsePayload.getRequestItemSpec();
        try {
            if (requestItemSpec != Placement.getDefaultInstance()) {
                if (!this.adRequestParameters.isPlacementObjectValid(requestItemSpec)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            Logger.log(th);
            return false;
        }
    }

    void retrieveBody(String str) {
        processRequestBuilder(new ApiRequest.Builder().setDataBinder(new ApiRequest.ApiResponseAuctionDataBinder()), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processRequestObject(android.content.Context context) {
        BMError internal;
        prepareUrls();
        Object build = build(context, getAdsType());
        if (build instanceof Request) {
            processRequestBuilder(new ApiRequest.Builder().setRequestData((Request) build).setDataBinder(getAdsType().getBinder()), pollUrl());
            return;
        }
        if (build instanceof BMError) {
            internal = (BMError) build;
        } else {
            internal = BMError.internal("Failed to create ad request");
        }
        processRequestFail(internal);
    }

    void processRequestBuilder(final ApiRequest.Builder<Request, Response> builder, final String str) {
        if (canSendApiRequest()) {
            builder.url(str);
            this.adResponseLoader.load(this.adRequestParameters, this.networkAdUnits, builder, new AdResponseLoader.Listener() { // from class: io.bidmachine.AdRequest.5
                @Override // io.bidmachine.AdResponseLoader.Listener
                public void onSuccess(AdResponse adResponse) {
                    AdRequest.this.setAuctionUrl(str);
                    AdRequest.this.processApiRequestSuccess(adResponse);
                }

                @Override // io.bidmachine.AdResponseLoader.Listener
                public void onFail(BMError bMError) {
                    AdRequest.this.processApiRequestLoadedFail(builder, bMError);
                }

                @Override // io.bidmachine.AdResponseLoader.Listener
                public void onCancel() {
                    AdRequest.this.processApiRequestCancel();
                }
            });
        }
    }

    private boolean canSendApiRequest() {
        return !isDestroyed();
    }

    private boolean canProcessApiRequestResult() {
        return (isCompleted() || isCanceled() || isDestroyed()) ? false : true;
    }

    void prepareUrls() {
        this.auctionUrlQueue.clear();
        this.auctionUrlQueue.addAll(UrlProvider.getAuctionUrlQueue());
    }

    String pollUrl() {
        if (this.auctionUrlQueue.isEmpty()) {
            this.auctionUrlQueue.addAll(UrlProvider.getAuctionUrlQueue());
        }
        return this.auctionUrlQueue.poll();
    }

    void setAuctionUrl(String str) {
        this.auctionUrlQueue.clear();
        this.auctionUrlQueue.add(str);
    }

    public void notifyMediationWin() {
        BMError bMError;
        if (isCompleted()) {
            log("notifyMediationWin");
            if (isDestroyed()) {
                bMError = BMError.RequestDestroyed;
            } else {
                bMError = isExpired() ? BMError.RequestExpired : null;
            }
            BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.MediationWin, getAdsType(), bMError);
        }
    }

    public void notifyMediationLoss() {
        notifyMediationLoss(null, null);
    }

    public void notifyMediationLoss(String str, Double d2) {
        BMError bMError;
        if (isCompleted()) {
            log(String.format("notifyMediationLoss (winnerNetworkName - %s, winnerNetworkPrice - %s)", str, d2));
            if (isDestroyed()) {
                bMError = BMError.RequestDestroyed;
            } else {
                bMError = isExpired() ? BMError.RequestExpired : null;
            }
            HashMap hashMap = new HashMap();
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(Constants.URL_MACROS_AUCTION_SEAT_ID, str);
            }
            if (d2 != null) {
                hashMap.put(Constants.URL_MACROS_AUCTION_PRICE, d2);
            }
            BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.MediationLoss, getAdsType(), bMError, hashMap);
        }
    }

    boolean isLoading() {
        return this.isLoading.get();
    }

    private void setLoading(boolean z) {
        this.isLoading.set(z);
    }

    boolean isCompleted() {
        return this.isApiRequestCompleted.get();
    }

    boolean isCanceled() {
        return this.isApiRequestCanceled.get();
    }

    public boolean isDestroyed() {
        return this.isDestroyed;
    }

    public void destroy() {
        if (this.isDestroyed) {
            return;
        }
        this.isDestroyed = true;
        log("destroy");
        cancel();
        unsubscribeTimeOut();
        BidMachineEvents.clear(this.trackingObject);
        BidMachineFetcher.release(this);
        notifyRequestDestroyed();
        this.unifiedAdRequestParams = null;
        AdResponse adResponse = this.adResponse;
        if (adResponse != null) {
            adResponse.detachAdRequest(this);
            this.adResponse = null;
        }
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequestDestroy, getAdsType(), null);
    }

    void cancel() {
        this.adResponseLoader.cancel();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processExpired() {
        log("Request expired");
        this.isRequestExpired.set(true);
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            for (AdRequestListener<SelfType> adRequestListener : list) {
                adRequestListener.onRequestExpired(this);
            }
        }
        for (AdRequestListener<?> adRequestListener2 : BidMachineImpl.get().getAdRequestListeners()) {
            adRequestListener2.onRequestExpired(this);
        }
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequestExpired, getAdsType(), null);
    }

    public boolean isExpired() {
        return isAdResponseExpired() || this.isRequestExpired.get();
    }

    boolean isAdResponseExpired() {
        AdResponse adResponse = this.adResponse;
        return adResponse != null && adResponse.isExpired();
    }

    public void addListener(AdRequestListener<SelfType> adRequestListener) {
        if (adRequestListener != null) {
            if (this.adRequestListeners == null) {
                this.adRequestListeners = new CopyOnWriteArrayList();
            }
            this.adRequestListeners.add(adRequestListener);
        }
    }

    public void removeListener(AdRequestListener<SelfType> adRequestListener) {
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list == null || adRequestListener == null) {
            return;
        }
        list.remove(adRequestListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addInternalListener(InternalAdRequestListener<SelfType> internalAdRequestListener) {
        if (internalAdRequestListener != null) {
            if (this.internalAdRequestListeners == null) {
                this.internalAdRequestListeners = new CopyOnWriteArrayList();
            }
            this.internalAdRequestListeners.add(internalAdRequestListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeInternalListener(InternalAdRequestListener<SelfType> internalAdRequestListener) {
        List<InternalAdRequestListener<SelfType>> list = this.internalAdRequestListeners;
        if (list == null || internalAdRequestListener == null) {
            return;
        }
        list.remove(internalAdRequestListener);
    }

    void notifyRequestDestroyed() {
        List<InternalAdRequestListener<SelfType>> list = this.internalAdRequestListeners;
        if (list != null) {
            for (InternalAdRequestListener<SelfType> internalAdRequestListener : list) {
                internalAdRequestListener.onRequestDestroyed(this);
            }
        }
    }

    int obtainTimeOutMs() {
        Integer timeOutMs;
        int requestTimeOutMs = BidMachineImpl.get().getRequestTimeOutMs();
        return (requestTimeOutMs > 0 || (timeOutMs = this.adRequestParameters.getTimeOutMs()) == null || timeOutMs.intValue() <= 0) ? requestTimeOutMs : timeOutMs.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void subscribeTimeOut() {
        int obtainTimeOutMs = obtainTimeOutMs();
        if (obtainTimeOutMs > 0) {
            Utils.onBackgroundThread(this.timeOutRunnable, obtainTimeOutMs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unsubscribeTimeOut() {
        Utils.cancelBackgroundThreadTask(this.timeOutRunnable);
    }

    void processApiRequestSuccess(AdResponse adResponse) {
        if (!canProcessApiRequestResult()) {
            adResponse.detachAdRequest(this);
            return;
        }
        setLoading(false);
        this.isApiRequestCompleted.set(true);
        unsubscribeTimeOut();
        log(String.format("Request success - %s", adResponse));
        this.adResponse = adResponse;
        adResponse.attachAdRequest(this);
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            for (AdRequestListener<SelfType> adRequestListener : list) {
                adRequestListener.onRequestSuccess(this, adResponse.getAuctionResult());
            }
        }
        for (AdRequestListener<?> adRequestListener2 : BidMachineImpl.get().getAdRequestListeners()) {
            adRequestListener2.onRequestSuccess(this, adResponse.getAuctionResult());
        }
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequest, getAdsType(), null);
    }

    void processApiRequestLoadedFail(ApiRequest.Builder<Request, Response> builder, BMError bMError) {
        String poll;
        if (canProcessApiRequestResult()) {
            if (bMError != BMError.BMServerNoFill && (poll = this.auctionUrlQueue.poll()) != null) {
                processRequestBuilder(builder, poll);
            } else {
                processApiRequestFail(bMError);
            }
        }
    }

    void processApiRequestFail(BMError bMError) {
        if (canProcessApiRequestResult()) {
            setLoading(false);
            this.isApiRequestCompleted.set(true);
            unsubscribeTimeOut();
            if (bMError == null) {
                bMError = BMError.BMServerNoFill;
            }
            processRequestFail(bMError);
        }
    }

    void processRequestFail(BMError bMError) {
        log(String.format("Request fail - %s", bMError));
        List<AdRequestListener<SelfType>> list = this.adRequestListeners;
        if (list != null) {
            for (AdRequestListener<SelfType> adRequestListener : list) {
                adRequestListener.onRequestFailed(this, bMError);
            }
        }
        for (AdRequestListener<?> adRequestListener2 : BidMachineImpl.get().getAdRequestListeners()) {
            adRequestListener2.onRequestFailed(this, bMError);
        }
        BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequest, getAdsType(), bMError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processApiRequestCancel() {
        if (canProcessApiRequestResult()) {
            setLoading(false);
            this.isApiRequestCanceled.set(true);
            unsubscribeTimeOut();
            BidMachineEvents.eventFinish(this.trackingObject, TrackEventType.AuctionRequestCancel, getAdsType(), null);
            BidMachineEvents.clearEvent(this.trackingObject, TrackEventType.AuctionRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final UnifiedAdRequestParamsType obtainUnifiedRequestParams() {
        if (this.unifiedAdRequestParams == null) {
            BidMachineImpl bidMachineImpl = BidMachineImpl.get();
            UserRestrictionParams userRestrictionParams = bidMachineImpl.getUserRestrictionParams();
            this.unifiedAdRequestParams = createUnifiedAdRequestParams(this.adRequestParameters, (TargetingParams) RequestParams.resolveParams(this.adRequestParameters.getTargetingParams(), bidMachineImpl.getTargetingParams()), userRestrictionParams);
        }
        return this.unifiedAdRequestParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String str) {
        Logger.log(this.TAG, String.format("%s - %s", this.adRequestParameters.getAdsType(), str));
    }

    private void logError(String str) {
        Logger.logError(this.TAG, String.format("%s - %s", this.adRequestParameters.getAdsType(), str));
    }

    public String toString() {
        return this.TAG;
    }

    /* loaded from: classes5.dex */
    protected static abstract class AdRequestBuilderImpl<SelfType extends RequestBuilder, ReturnType extends AdRequest<ReturnType, AdRequestParametersType, ?>, AdRequestParametersType extends AdRequestParameters> implements RequestBuilder<SelfType, ReturnType> {
        String bidPayload;
        CustomParams customParams;
        AdRequestListener<ReturnType> listener;
        List<NetworkConfig> networkConfigList;
        String placementId;
        PriceFloorParams priceFloorParams;
        SessionAdParams sessionAdParams;
        TargetingParams targetingParams;
        Integer timeOutMs;

        protected abstract ReturnType build(AdRequestParametersType adrequestparameterstype);

        protected abstract AdRequestParametersType createAdRequestParameters();

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setPriceFloorParams(PriceFloorParams priceFloorParams) {
            this.priceFloorParams = priceFloorParams;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setTargetingParams(TargetingParams targetingParams) {
            this.targetingParams = targetingParams;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setSessionAdParams(SessionAdParams sessionAdParams) {
            this.sessionAdParams = sessionAdParams;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setNetworks(List<NetworkConfig> list) {
            fillNetworkConfigs(list);
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setNetworks(String str) {
            ArrayList arrayList;
            ArrayList arrayList2 = null;
            if (!TextUtils.isEmpty(str)) {
                try {
                    arrayList = new ArrayList();
                } catch (Exception e2) {
                    e = e2;
                }
                try {
                    JSONArray jSONArray = new JSONArray(str);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        NetworkConfig create = NetworkConfigFactory.create(BidMachineImpl.get().getAppContext(), jSONArray.getJSONObject(i));
                        if (create != null) {
                            arrayList.add(create);
                        }
                    }
                    arrayList2 = arrayList;
                } catch (Exception e3) {
                    e = e3;
                    arrayList2 = arrayList;
                    Logger.log(e);
                    fillNetworkConfigs(arrayList2);
                    return this;
                }
            }
            fillNetworkConfigs(arrayList2);
            return this;
        }

        void fillNetworkConfigs(List<NetworkConfig> list) {
            if (list == null) {
                this.networkConfigList = new ArrayList();
            } else {
                this.networkConfigList = list;
            }
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setLoadingTimeOut(Integer num) {
            this.timeOutMs = num;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setBidPayload(String str) {
            this.bidPayload = str;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setPlacementId(String str) {
            this.placementId = str;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setListener(AdRequestListener<ReturnType> adRequestListener) {
            this.listener = adRequestListener;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public SelfType setCustomParams(CustomParams customParams) {
            this.customParams = customParams;
            return this;
        }

        @Override // io.bidmachine.models.RequestBuilder
        public ReturnType build() {
            AdRequestParametersType createAdRequestParameters = createAdRequestParameters();
            createAdRequestParameters.setPriceFloorParams(this.priceFloorParams);
            createAdRequestParameters.setTargetingParams(this.targetingParams);
            createAdRequestParameters.setSessionAdParams(this.sessionAdParams);
            createAdRequestParameters.setNetworkConfigList(this.networkConfigList);
            createAdRequestParameters.setTimeOutMs(this.timeOutMs);
            createAdRequestParameters.setBidPayload(this.bidPayload);
            createAdRequestParameters.setPlacementId(this.placementId);
            createAdRequestParameters.setCustomParams(this.customParams);
            ReturnType build = build(createAdRequestParameters);
            build.addListener(this.listener);
            return build;
        }
    }
}
