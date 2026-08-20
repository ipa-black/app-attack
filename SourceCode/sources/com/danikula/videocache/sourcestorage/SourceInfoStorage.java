package com.danikula.videocache.sourcestorage;

import com.danikula.videocache.SourceInfo;
/* loaded from: classes2.dex */
public interface SourceInfoStorage {
    SourceInfo get(String str);

    void put(String str, SourceInfo sourceInfo);

    void release();
}
