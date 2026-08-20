package com.yandex.metrica.networktasks.api;
/* loaded from: classes5.dex */
public interface HostRetryInfoProvider {
    long getLastAttemptTimeSeconds();

    int getNextSendAttemptNumber();

    void saveLastAttemptTimeSeconds(long j);

    void saveNextSendAttemptNumber(int i);
}
