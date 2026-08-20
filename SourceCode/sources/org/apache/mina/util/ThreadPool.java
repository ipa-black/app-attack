package org.apache.mina.util;
/* loaded from: classes5.dex */
public interface ThreadPool {
    int getKeepAliveTime();

    int getMaximumPoolSize();

    int getPoolSize();

    void setKeepAliveTime(int i);

    void setMaximumPoolSize(int i);

    void start();

    void stop();
}
