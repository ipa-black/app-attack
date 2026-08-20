package io.bidmachine;

import io.bidmachine.utils.BMError;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class SessionTrackerImpl extends SessionTracker {
    final Map<AdsType, EventsHolder> trackingMap = new ConcurrentHashMap();
    final Map<Object, EnumMap<TrackEventType, TrackEventInfo>> intervalHolders = new ConcurrentHashMap();
    private final EventsHolder totalHolder = new EventsHolder(null);

    @Override // io.bidmachine.SessionTracker
    public void trackEventStart(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo) {
        Object trackingKey;
        if (trackingObject == null || trackEventType == null || (trackingKey = trackingObject.getTrackingKey()) == null) {
            return;
        }
        EnumMap<TrackEventType, TrackEventInfo> enumMap = this.intervalHolders.get(trackingKey);
        if (enumMap == null) {
            enumMap = new EnumMap<>(TrackEventType.class);
            this.intervalHolders.put(trackingKey, enumMap);
        }
        if (enumMap.containsKey(trackEventType)) {
            return;
        }
        if (trackEventInfo == null) {
            trackEventInfo = new TrackEventInfo();
        }
        enumMap.put((EnumMap<TrackEventType, TrackEventInfo>) trackEventType, (TrackEventType) trackEventInfo);
    }

    @Override // io.bidmachine.SessionTracker
    public void trackEventFinish(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType, BMError bMError, Map<String, Object> map) {
        Object trackingKey;
        TrackEventInfo trackEventInfo;
        if (trackingObject == null || trackEventType == null || (trackingKey = trackingObject.getTrackingKey()) == null) {
            return;
        }
        EnumMap<TrackEventType, TrackEventInfo> enumMap = this.intervalHolders.get(trackingKey);
        if (enumMap == null || !enumMap.containsKey(trackEventType)) {
            trackEventInfo = null;
        } else {
            trackEventInfo = enumMap.get(trackEventType);
            if (trackEventInfo != null) {
                trackEventInfo.finishTimeMs = System.currentTimeMillis();
            }
            enumMap.remove(trackEventType);
            if (enumMap.isEmpty()) {
                clearTrackers(trackingObject);
            }
        }
        notifyTrack(trackingObject, trackEventType, trackEventInfo, bMError, map);
        if (adsType == null || bMError != null) {
            return;
        }
        obtainHolder(adsType).track(trackEventType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.bidmachine.SessionTracker
    public void clearTrackingEvent(TrackingObject trackingObject, TrackEventType trackEventType) {
        Object trackingKey;
        EnumMap<TrackEventType, TrackEventInfo> enumMap;
        if (trackingObject == null || trackEventType == null || (trackingKey = trackingObject.getTrackingKey()) == null || (enumMap = this.intervalHolders.get(trackingKey)) == null) {
            return;
        }
        enumMap.remove(trackEventType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.bidmachine.SessionTracker
    public void clearTrackers(TrackingObject trackingObject) {
        if (trackingObject != null) {
            this.intervalHolders.remove(trackingObject.getTrackingKey());
        }
    }

    @Override // io.bidmachine.SessionTracker
    public int getEventCount(AdsType adsType, TrackEventType trackEventType) {
        return obtainHolder(adsType).getCount(trackEventType);
    }

    @Override // io.bidmachine.SessionTracker
    public int getTotalEventCount(TrackEventType trackEventType) {
        return this.totalHolder.getCount(trackEventType);
    }

    private EventsHolder obtainHolder(AdsType adsType) {
        if (!this.trackingMap.containsKey(adsType)) {
            EventsHolder eventsHolder = new EventsHolder(this.totalHolder);
            this.trackingMap.put(adsType, eventsHolder);
            return eventsHolder;
        }
        return this.trackingMap.get(adsType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class EventsHolder {
        private final EventsHolder referenceHolder;
        private final EnumMap<TrackEventType, AtomicInteger> trackingMap = new EnumMap<>(TrackEventType.class);

        EventsHolder(EventsHolder eventsHolder) {
            this.referenceHolder = eventsHolder;
        }

        public void track(TrackEventType trackEventType) {
            EventsHolder eventsHolder = this.referenceHolder;
            if (eventsHolder != null) {
                eventsHolder.track(trackEventType);
            }
            AtomicInteger atomicInteger = this.trackingMap.get(trackEventType);
            if (atomicInteger == null) {
                this.trackingMap.put((EnumMap<TrackEventType, AtomicInteger>) trackEventType, (TrackEventType) new AtomicInteger(1));
            } else {
                atomicInteger.incrementAndGet();
            }
        }

        public int getCount(TrackEventType trackEventType) {
            AtomicInteger atomicInteger = this.trackingMap.get(trackEventType);
            if (atomicInteger != null) {
                return atomicInteger.get();
            }
            return 0;
        }
    }
}
