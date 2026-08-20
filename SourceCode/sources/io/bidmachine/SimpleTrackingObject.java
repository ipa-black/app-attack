package io.bidmachine;

import java.util.UUID;
/* loaded from: classes5.dex */
public class SimpleTrackingObject extends TrackingObject {
    private final Object trackingKey;

    public SimpleTrackingObject() {
        this(UUID.randomUUID().toString());
    }

    public SimpleTrackingObject(Object obj) {
        this.trackingKey = obj;
    }

    @Override // io.bidmachine.TrackingObject
    public Object getTrackingKey() {
        return this.trackingKey;
    }
}
