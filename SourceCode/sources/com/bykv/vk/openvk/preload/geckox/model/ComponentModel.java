package com.bykv.vk.openvk.preload.geckox.model;

import com.bykv.vk.openvk.preload.a.a.c;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ComponentModel {
    @c(a = "packages")
    private Map<String, List<UpdatePackage>> packages;
    @c(a = "universal_strategies")
    private Map<String, b> universalStrategies;

    /* loaded from: classes2.dex */
    public static class a {
        @c(a = "c")

        /* renamed from: a  reason: collision with root package name */
        public String f8563a;
        @c(a = "clean_type")

        /* renamed from: b  reason: collision with root package name */
        public int f8564b;
        @c(a = MediationMetaData.KEY_VERSION)

        /* renamed from: c  reason: collision with root package name */
        public List<Long> f8565c;
    }

    /* loaded from: classes2.dex */
    public static class b {
        @c(a = "specified_clean")

        /* renamed from: a  reason: collision with root package name */
        public List<a> f8566a;
    }

    public Map<String, List<UpdatePackage>> getPackages() {
        return this.packages;
    }

    public Map<String, b> getUniversalStrategies() {
        return this.universalStrategies;
    }
}
