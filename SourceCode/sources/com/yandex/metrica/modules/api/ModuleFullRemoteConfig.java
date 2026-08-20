package com.yandex.metrica.modules.api;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class ModuleFullRemoteConfig {

    /* renamed from: a  reason: collision with root package name */
    private final CommonIdentifiers f16187a;

    /* renamed from: b  reason: collision with root package name */
    private final RemoteConfigMetaInfo f16188b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f16189c;

    public ModuleFullRemoteConfig(CommonIdentifiers commonIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        Intrinsics.checkNotNullParameter(commonIdentifiers, "commonIdentifiers");
        Intrinsics.checkNotNullParameter(remoteConfigMetaInfo, "remoteConfigMetaInfo");
        this.f16187a = commonIdentifiers;
        this.f16188b = remoteConfigMetaInfo;
        this.f16189c = obj;
    }

    public static /* synthetic */ ModuleFullRemoteConfig copy$default(ModuleFullRemoteConfig moduleFullRemoteConfig, CommonIdentifiers commonIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            commonIdentifiers = moduleFullRemoteConfig.f16187a;
        }
        if ((i & 2) != 0) {
            remoteConfigMetaInfo = moduleFullRemoteConfig.f16188b;
        }
        if ((i & 4) != 0) {
            obj = moduleFullRemoteConfig.f16189c;
        }
        return moduleFullRemoteConfig.copy(commonIdentifiers, remoteConfigMetaInfo, obj);
    }

    public final CommonIdentifiers component1() {
        return this.f16187a;
    }

    public final RemoteConfigMetaInfo component2() {
        return this.f16188b;
    }

    public final Object component3() {
        return this.f16189c;
    }

    public final ModuleFullRemoteConfig copy(CommonIdentifiers commonIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        Intrinsics.checkNotNullParameter(commonIdentifiers, "commonIdentifiers");
        Intrinsics.checkNotNullParameter(remoteConfigMetaInfo, "remoteConfigMetaInfo");
        return new ModuleFullRemoteConfig(commonIdentifiers, remoteConfigMetaInfo, obj);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ModuleFullRemoteConfig) {
                ModuleFullRemoteConfig moduleFullRemoteConfig = (ModuleFullRemoteConfig) obj;
                return Intrinsics.areEqual(this.f16187a, moduleFullRemoteConfig.f16187a) && Intrinsics.areEqual(this.f16188b, moduleFullRemoteConfig.f16188b) && Intrinsics.areEqual(this.f16189c, moduleFullRemoteConfig.f16189c);
            }
            return false;
        }
        return true;
    }

    public final CommonIdentifiers getCommonIdentifiers() {
        return this.f16187a;
    }

    public final Object getModuleConfig() {
        return this.f16189c;
    }

    public final RemoteConfigMetaInfo getRemoteConfigMetaInfo() {
        return this.f16188b;
    }

    public int hashCode() {
        CommonIdentifiers commonIdentifiers = this.f16187a;
        int hashCode = (commonIdentifiers != null ? commonIdentifiers.hashCode() : 0) * 31;
        RemoteConfigMetaInfo remoteConfigMetaInfo = this.f16188b;
        int hashCode2 = (hashCode + (remoteConfigMetaInfo != null ? remoteConfigMetaInfo.hashCode() : 0)) * 31;
        Object obj = this.f16189c;
        return hashCode2 + (obj != null ? obj.hashCode() : 0);
    }

    public String toString() {
        return "ModuleFullRemoteConfig(commonIdentifiers=" + this.f16187a + ", remoteConfigMetaInfo=" + this.f16188b + ", moduleConfig=" + this.f16189c + ")";
    }
}
