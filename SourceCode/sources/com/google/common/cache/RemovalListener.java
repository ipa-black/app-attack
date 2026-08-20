package com.google.common.cache;
@ElementTypesAreNonnullByDefault
@FunctionalInterface
/* loaded from: classes4.dex */
public interface RemovalListener<K, V> {
    void onRemoval(RemovalNotification<K, V> removalNotification);
}
