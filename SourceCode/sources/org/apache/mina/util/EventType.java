package org.apache.mina.util;
/* loaded from: classes5.dex */
public class EventType {
    public static final EventType OPENED = new EventType();
    public static final EventType CLOSED = new EventType();
    public static final EventType READ = new EventType();
    public static final EventType WRITTEN = new EventType();
    public static final EventType RECEIVED = new EventType();
    public static final EventType SENT = new EventType();
    public static final EventType IDLE = new EventType();
    public static final EventType EXCEPTION = new EventType();

    private EventType() {
    }
}
