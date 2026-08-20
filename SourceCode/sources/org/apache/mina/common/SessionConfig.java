package org.apache.mina.common;
/* loaded from: classes4.dex */
public interface SessionConfig {
    int getIdleTime(IdleStatus idleStatus);

    long getIdleTimeInMillis(IdleStatus idleStatus);

    int getWriteTimeout();

    long getWriteTimeoutInMillis();

    void setIdleTime(IdleStatus idleStatus, int i);

    void setWriteTimeout(int i);
}
