package io.bidmachine.models;

import android.text.TextUtils;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.TrackEventType;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.unified.UnifiedMediationParams;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class AdObjectParams {
    private static final boolean DEF_VIEWABILITY_IGNORE_WINDOW_FOCUS = false;
    private static final float DEF_VIEWABILITY_PIXEL_THRESHOLD = 1.0f;
    private static final long DEF_VIEWABILITY_TIME_THRESHOLD = 1;
    private long viewabilityTimeThresholdSec = 1;
    private float viewabilityPixelThreshold = 1.0f;
    private boolean viewabilityIgnoreWindowFocus = false;
    private final Map<TrackEventType, List<String>> trackUrls = new EnumMap(TrackEventType.class);

    public abstract boolean isValid();

    /* JADX INFO: Access modifiers changed from: protected */
    public void prepareExtensions(Map<String, Value> map) {
    }

    public abstract UnifiedMediationParams toMediationParams();

    public AdObjectParams(Ad ad) {
        if (ad.getExtProtoCount() > 0) {
            for (int i = 0; i < ad.getExtProtoCount(); i++) {
                if (ad.getExtProto(i).is(AdExtension.class)) {
                    try {
                        prepareExtensions((AdExtension) ad.getExtProto(i).unpack(AdExtension.class));
                    } catch (InvalidProtocolBufferException e2) {
                        Logger.log(e2);
                    }
                }
            }
        }
        prepareExtensions(ad.getExt().getFieldsMap());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void prepareExtensions(AdExtension adExtension) {
        this.viewabilityTimeThresholdSec = Utils.getOrDefault(adExtension.getViewabilityTimeThreshold(), AdExtension.getDefaultInstance().getViewabilityTimeThreshold(), 1L);
        this.viewabilityPixelThreshold = Utils.getOrDefault(adExtension.getViewabilityPixelThreshold(), AdExtension.getDefaultInstance().getViewabilityPixelThreshold(), 1.0f);
        this.viewabilityIgnoreWindowFocus = adExtension.getViewabilityIgnoreWindowFocus();
        prepareEvents(adExtension.getEventList());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void prepareEvents(List<Ad.Event> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (Ad.Event event : list) {
            TrackEventType fromNumber = TrackEventType.fromNumber(event.getTypeValue());
            if (fromNumber != null) {
                addEvent(fromNumber, event.getUrl());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addEvent(TrackEventType trackEventType, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        List<String> list = this.trackUrls.get(trackEventType);
        if (list == null) {
            list = new ArrayList<>(1);
            this.trackUrls.put(trackEventType, list);
        }
        list.add(str);
    }

    public List<String> getTrackUrls(TrackEventType trackEventType) {
        return this.trackUrls.get(trackEventType);
    }

    public long getViewabilityTimeThresholdMs() {
        return TimeUnit.SECONDS.toMillis(this.viewabilityTimeThresholdSec);
    }

    public float getViewabilityPixelThreshold() {
        return this.viewabilityPixelThreshold;
    }

    public boolean isViewabilityIgnoreWindowFocus() {
        return this.viewabilityIgnoreWindowFocus;
    }
}
