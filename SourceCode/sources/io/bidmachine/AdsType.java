package io.bidmachine;

import android.graphics.Point;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.NativeDataAssetType;
import com.explorestack.protobuf.adcom.NativeImageAssetType;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.SizeUnit;
import com.explorestack.protobuf.adcom.VideoCreativeType;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.ApiRequest;
import io.bidmachine.Constants;
import io.bidmachine.ContextProvider;
import io.bidmachine.MediaAssetType;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfig;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.core.Logger;
import io.bidmachine.displays.DisplayPlacementBuilder;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.displays.VideoPlacementBuilder;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes5.dex */
public enum AdsType {
    Banner("banner", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder<UnifiedBannerAdRequestParams>(false) { // from class: io.bidmachine.AdsType.1
        @Override // io.bidmachine.displays.DisplayPlacementBuilder, io.bidmachine.displays.ISizableDisplayPlacement
        public Point getSize(ContextProvider contextProvider, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams) {
            BannerSize bannerSize = unifiedBannerAdRequestParams.getAdRequestParameters().getBannerSize();
            return new Point(bannerSize.width, bannerSize.height);
        }
    }}),
    Interstitial("interstitial", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder(true), new VideoPlacementBuilder(true)}),
    Rewarded("rewarded", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new DisplayPlacementBuilder(true), new VideoPlacementBuilder(false)}),
    Native("native", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new PlacementBuilder<UnifiedNativeAdRequestParams>() { // from class: io.bidmachine.displays.NativePlacementBuilder
        static final int CTA_ASSET_ID = 8;
        static final int DESC_ASSET_ID = 127;
        static final int ICON_ASSET_ID = 124;
        static final int IMAGE_ASSET_ID = 128;
        static final int RATING_ASSET_ID = 7;
        static final int TITLE_ASSET_ID = 123;
        static final int VIDEO_ASSET_ID = 4;
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder ctaAsset;
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder descAsset;
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder ratingAsset;
        private static final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder titleAsset;

        @Override // io.bidmachine.displays.PlacementBuilder
        public /* bridge */ /* synthetic */ Message.Builder createPlacement(ContextProvider contextProvider, UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, AdsType adsType, Collection collection, List list, int i) throws Exception {
            return createPlacement2(contextProvider, unifiedNativeAdRequestParams, adsType, (Collection<NetworkConfig>) collection, (List<NetworkAdUnit>) list, i);
        }

        static {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            titleAsset = newBuilder;
            newBuilder.setId(123);
            newBuilder.setReq(true);
            newBuilder.setTitle(Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.newBuilder().setLen(104).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder2 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            descAsset = newBuilder2;
            newBuilder2.setId(127);
            newBuilder2.setReq(true);
            newBuilder2.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_DESC).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder3 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            ctaAsset = newBuilder3;
            newBuilder3.setId(8);
            newBuilder3.setReq(true);
            newBuilder3.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_CTA_TEXT).build());
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder4 = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            ratingAsset = newBuilder4;
            newBuilder4.setId(7);
            newBuilder4.setReq(false);
            newBuilder4.setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_RATING).build());
        }

        static Placement.DisplayPlacement.NativeFormat.AssetFormat createIconAsset(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(124);
            newBuilder.setReq(unifiedNativeAdRequestParams.getAdRequestParameters().containsAssetType(MediaAssetType.Icon));
            newBuilder.setImg(Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.newBuilder().setType(NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_ICON_IMAGE).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).build());
            return newBuilder.build();
        }

        static Placement.DisplayPlacement.NativeFormat.AssetFormat createImageAsset(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(128);
            newBuilder.setReq(unifiedNativeAdRequestParams.getAdRequestParameters().containsAssetType(MediaAssetType.Image));
            newBuilder.setImg(Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.newBuilder().setType(NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_MAIN_IMAGE).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).build());
            return newBuilder.build();
        }

        static Placement.DisplayPlacement.NativeFormat.AssetFormat createVideoAsset(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams) {
            Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder();
            newBuilder.setId(4);
            newBuilder.setReq(unifiedNativeAdRequestParams.getAdRequestParameters().containsAssetType(MediaAssetType.Video));
            newBuilder.setVideo(Placement.VideoPlacement.newBuilder().setSkip(false).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0).addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES)).setMinbitr(56).setMaxbitr(4096).setMindur(5).setMaxdur(30).setLinearValue(1).build());
            return newBuilder.build();
        }

        {
            AdContentType adContentType = AdContentType.All;
        }

        /* renamed from: createPlacement  reason: avoid collision after fix types in other method */
        public Message.Builder createPlacement2(ContextProvider contextProvider, UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, AdsType adsType, Collection<NetworkConfig> collection, List<NetworkAdUnit> list, int i) throws Exception {
            Placement.DisplayPlacement.Builder addAllMime = Placement.DisplayPlacement.newBuilder().setInstl(false).setUnit(SizeUnit.SIZE_UNIT_DIPS).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).addAllMime(Arrays.asList(Constants.VIDEO_MIME_TYPES));
            Placement.DisplayPlacement.NativeFormat.Builder newBuilder = Placement.DisplayPlacement.NativeFormat.newBuilder();
            newBuilder.addAsset(titleAsset);
            newBuilder.addAsset(descAsset);
            newBuilder.addAsset(ctaAsset);
            newBuilder.addAsset(ratingAsset);
            newBuilder.addAsset(createIconAsset(unifiedNativeAdRequestParams));
            newBuilder.addAsset(createImageAsset(unifiedNativeAdRequestParams));
            newBuilder.addAsset(createVideoAsset(unifiedNativeAdRequestParams));
            addAllMime.setNativefmt(newBuilder);
            Message.Builder createHeaderBiddingPlacement = createHeaderBiddingPlacement(contextProvider, unifiedNativeAdRequestParams, adsType, collection, list, i);
            if (createHeaderBiddingPlacement != null) {
                addAllMime.addExtProto(Any.pack(createHeaderBiddingPlacement.build()));
            }
            return addAllMime;
        }

        @Override // io.bidmachine.displays.PlacementBuilder
        public AdObjectParams createAdObjectParams(Ad ad) {
            AdObjectParams createHeaderBiddingAdObjectParams = createHeaderBiddingAdObjectParams(ad);
            return (createHeaderBiddingAdObjectParams == null && ad.hasDisplay() && ad.getDisplay().hasNative()) ? new NativeAdObjectParams(ad) : createHeaderBiddingAdObjectParams;
        }
    }}),
    RichMedia("richmedia", new ApiRequest.ApiAuctionDataBinder(), new PlacementBuilder[]{new VideoPlacementBuilder(true)});
    
    private final ApiRequest.ApiAuctionDataBinder binder;
    private final String name;
    private final PlacementBuilder[] placementBuilders;
    private final Map<String, NetworkConfig> networkConfigs = new HashMap();
    private final Executor placementCreateExecutor = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));

    AdsType(String str, ApiRequest.ApiAuctionDataBinder apiAuctionDataBinder, PlacementBuilder[] placementBuilderArr) {
        this.name = str;
        this.binder = apiAuctionDataBinder;
        this.placementBuilders = placementBuilderArr;
    }

    public String getName() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ApiRequest.ApiAuctionDataBinder getBinder() {
        return this.binder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, NetworkConfig> getNetworkConfigs() {
        return this.networkConfigs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetworkAdapter findNetworkAdapter(Ad ad) {
        HeaderBiddingAd obtainHeaderBiddingAd = obtainHeaderBiddingAd(ad);
        NetworkAdapter adapter = obtainHeaderBiddingAd != null ? NetworkRegistry.getAdapter(obtainHeaderBiddingAd.getBidder()) : null;
        if (adapter == null) {
            if (this == Native) {
                return NetworkRegistry.getAdapter("nast");
            }
            if (ad.hasDisplay()) {
                return NetworkRegistry.getAdapter("mraid");
            }
            return ad.hasVideo() ? NetworkRegistry.getAdapter("vast") : adapter;
        }
        return adapter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdObjectParams createAdObjectParams(Ad ad) {
        for (PlacementBuilder placementBuilder : this.placementBuilders) {
            AdObjectParams createAdObjectParams = placementBuilder.createAdObjectParams(ad);
            if (createAdObjectParams != null) {
                return createAdObjectParams;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HeaderBiddingAd obtainHeaderBiddingAd(Ad ad) {
        for (PlacementBuilder placementBuilder : this.placementBuilders) {
            HeaderBiddingAd obtainHeaderBiddingAd = placementBuilder.obtainHeaderBiddingAd(ad);
            if (obtainHeaderBiddingAd != null) {
                return obtainHeaderBiddingAd;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void collectPlacements(final ContextProvider contextProvider, AdRequest adRequest, final UnifiedAdRequestParams unifiedAdRequestParams, final List<NetworkConfig> list, final List<Message.Builder> list2, final List<NetworkAdUnit> list3, final int i) {
        PlacementBuilder[] placementBuilderArr;
        AdsType adsType = this;
        final CountDownLatch countDownLatch = new CountDownLatch(adsType.placementBuilders.length);
        PlacementBuilder[] placementBuilderArr2 = adsType.placementBuilders;
        int length = placementBuilderArr2.length;
        int i2 = 0;
        while (i2 < length) {
            final PlacementBuilder placementBuilder = placementBuilderArr2[i2];
            if (adRequest.isPlacementBuilderMatch(placementBuilder)) {
                placementBuilderArr = placementBuilderArr2;
                adsType.placementCreateExecutor.execute(new Runnable() { // from class: io.bidmachine.AdsType.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Message.Builder createPlacement = placementBuilder.createPlacement(contextProvider, unifiedAdRequestParams, AdsType.this, list, list3, i);
                            synchronized (list2) {
                                list2.add(createPlacement);
                            }
                            countDownLatch.countDown();
                        } catch (Exception e2) {
                            Logger.log(e2);
                            countDownLatch.countDown();
                        }
                    }
                });
            } else {
                placementBuilderArr = placementBuilderArr2;
                countDownLatch.countDown();
            }
            i2++;
            adsType = this;
            placementBuilderArr2 = placementBuilderArr;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e2) {
            Logger.log(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addNetworkConfig(String str, NetworkConfig networkConfig) {
        this.networkConfigs.put(str, networkConfig);
    }
}
