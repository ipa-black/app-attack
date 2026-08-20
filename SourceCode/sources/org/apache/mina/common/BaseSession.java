package org.apache.mina.common;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public abstract class BaseSession implements Session {
    private final Map attributes = new HashMap();
    private boolean idleForBoth;
    private boolean idleForRead;
    private boolean idleForWrite;
    private long lastReadTime;
    private long lastWriteTime;
    private long readBytes;
    private long writtenBytes;

    @Override // org.apache.mina.common.Session
    public void close() {
        close(false);
    }

    @Override // org.apache.mina.common.Session
    public Object getAttachment() {
        return this.attributes.get("");
    }

    @Override // org.apache.mina.common.Session
    public Object setAttachment(Object obj) {
        Object put;
        synchronized (this.attributes) {
            put = this.attributes.put("", obj);
        }
        return put;
    }

    @Override // org.apache.mina.common.Session
    public Object getAttribute(String str) {
        return this.attributes.get(str);
    }

    @Override // org.apache.mina.common.Session
    public Object setAttribute(String str, Object obj) {
        Object put;
        synchronized (this.attributes) {
            put = this.attributes.put(str, obj);
        }
        return put;
    }

    @Override // org.apache.mina.common.Session
    public Object removeAttribute(String str) {
        Object remove;
        synchronized (this.attributes) {
            remove = this.attributes.remove(str);
        }
        return remove;
    }

    @Override // org.apache.mina.common.Session
    public Set getAttributeKeys() {
        Set keySet;
        synchronized (this.attributes) {
            keySet = this.attributes.keySet();
        }
        return keySet;
    }

    @Override // org.apache.mina.common.Session
    public long getReadBytes() {
        return this.readBytes;
    }

    @Override // org.apache.mina.common.Session
    public long getWrittenBytes() {
        return this.writtenBytes;
    }

    public void increaseReadBytes(int i) {
        this.readBytes += i;
        this.lastReadTime = System.currentTimeMillis();
    }

    public void increaseWrittenBytes(int i) {
        this.writtenBytes += i;
        this.lastWriteTime = System.currentTimeMillis();
    }

    @Override // org.apache.mina.common.Session
    public long getLastIoTime() {
        return Math.max(this.lastReadTime, this.lastWriteTime);
    }

    @Override // org.apache.mina.common.Session
    public long getLastReadTime() {
        return this.lastReadTime;
    }

    @Override // org.apache.mina.common.Session
    public long getLastWriteTime() {
        return this.lastWriteTime;
    }

    @Override // org.apache.mina.common.Session
    public boolean isIdle(IdleStatus idleStatus) {
        if (idleStatus == IdleStatus.BOTH_IDLE) {
            return this.idleForBoth;
        }
        if (idleStatus == IdleStatus.READER_IDLE) {
            return this.idleForRead;
        }
        if (idleStatus == IdleStatus.WRITER_IDLE) {
            return this.idleForWrite;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown idle status: ").append(idleStatus).toString());
    }

    public void setIdle(IdleStatus idleStatus, boolean z) {
        if (idleStatus == IdleStatus.BOTH_IDLE) {
            this.idleForBoth = z;
        } else if (idleStatus == IdleStatus.READER_IDLE) {
            this.idleForRead = z;
        } else if (idleStatus == IdleStatus.WRITER_IDLE) {
            this.idleForWrite = z;
        } else {
            throw new IllegalArgumentException(new StringBuffer("Unknown idle status: ").append(idleStatus).toString());
        }
    }
}
