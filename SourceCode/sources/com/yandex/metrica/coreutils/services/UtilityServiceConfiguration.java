package com.yandex.metrica.coreutils.services;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: UtilityServiceConfiguration.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/yandex/metrica/coreutils/services/UtilityServiceConfiguration;", "", "initialConfigTime", "", "lastUpdateConfigTime", "(JJ)V", "getInitialConfigTime", "()J", "getLastUpdateConfigTime", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "core-utils_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class UtilityServiceConfiguration {
    private final long initialConfigTime;
    private final long lastUpdateConfigTime;

    public UtilityServiceConfiguration() {
        this(0L, 0L, 3, null);
    }

    public static /* synthetic */ UtilityServiceConfiguration copy$default(UtilityServiceConfiguration utilityServiceConfiguration, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = utilityServiceConfiguration.initialConfigTime;
        }
        if ((i & 2) != 0) {
            j2 = utilityServiceConfiguration.lastUpdateConfigTime;
        }
        return utilityServiceConfiguration.copy(j, j2);
    }

    public final long component1() {
        return this.initialConfigTime;
    }

    public final long component2() {
        return this.lastUpdateConfigTime;
    }

    public final UtilityServiceConfiguration copy(long j, long j2) {
        return new UtilityServiceConfiguration(j, j2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof UtilityServiceConfiguration) {
                UtilityServiceConfiguration utilityServiceConfiguration = (UtilityServiceConfiguration) obj;
                return this.initialConfigTime == utilityServiceConfiguration.initialConfigTime && this.lastUpdateConfigTime == utilityServiceConfiguration.lastUpdateConfigTime;
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j = this.initialConfigTime;
        long j2 = this.lastUpdateConfigTime;
        return (((int) (j ^ (j >>> 32))) * 31) + ((int) ((j2 >>> 32) ^ j2));
    }

    public String toString() {
        return "UtilityServiceConfiguration(initialConfigTime=" + this.initialConfigTime + ", lastUpdateConfigTime=" + this.lastUpdateConfigTime + ")";
    }

    public UtilityServiceConfiguration(long j, long j2) {
        this.initialConfigTime = j;
        this.lastUpdateConfigTime = j2;
    }

    public final long getInitialConfigTime() {
        return this.initialConfigTime;
    }

    public /* synthetic */ UtilityServiceConfiguration(long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? 0L : j2);
    }

    public final long getLastUpdateConfigTime() {
        return this.lastUpdateConfigTime;
    }
}
