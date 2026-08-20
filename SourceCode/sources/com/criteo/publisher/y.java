package com.criteo.publisher;

import com.criteo.publisher.model.AdUnit;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SdkInitLogMessage.kt */
/* loaded from: classes2.dex */
public final class y {
    static {
        new y();
    }

    private y() {
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a() {
        return new com.criteo.publisher.logging.e(0, "Unsupported Android version, Criteo SDK is deactivated and won't do anything", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(String cpId, List<? extends AdUnit> adUnits, String version) {
        Intrinsics.checkParameterIsNotNull(cpId, "cpId");
        Intrinsics.checkParameterIsNotNull(adUnits, "adUnits");
        Intrinsics.checkParameterIsNotNull(version, "version");
        return new com.criteo.publisher.logging.e(0, "Criteo SDK version " + version + " is initialized with Publisher ID " + cpId + " and " + adUnits.size() + " ad units:\n" + CollectionsKt.joinToString$default(adUnits, "\n", null, null, 0, null, a.f9254a, 30, null), null, null, 13, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SdkInitLogMessage.kt */
    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function1<AdUnit, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f9254a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final String invoke(AdUnit it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return "- " + it;
        }
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e b() {
        return new com.criteo.publisher.logging.e(0, "Criteo SDK initialization method cannot be called more than once. Please ignore this if you are using a mediation adapter.", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(CriteoInitException criteoInitException) {
        Intrinsics.checkParameterIsNotNull(criteoInitException, "criteoInitException");
        return new com.criteo.publisher.logging.e(6, null, criteoInitException, "onErrorDuringSdkInitialization");
    }
}
