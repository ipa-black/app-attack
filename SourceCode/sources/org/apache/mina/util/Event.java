package org.apache.mina.util;
/* loaded from: classes5.dex */
class Event {
    private final Object data;
    private final Object nextFilter;
    private final EventType type;

    public Event(EventType eventType, Object obj, Object obj2) {
        this.type = eventType;
        this.nextFilter = obj;
        this.data = obj2;
    }

    public Object getData() {
        return this.data;
    }

    public Object getNextFilter() {
        return this.nextFilter;
    }

    public EventType getType() {
        return this.type;
    }
}
