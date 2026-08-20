package com.appodeal.ads.modules.common.internal.service;

import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", "", "Companion", "Passive", "Active", "apd_internal"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public enum InitializationMode {
    Passive("passive"),
    Active(AppMeasurementSdk.ConditionalUserProperty.ACTIVE);
    
    public static final Companion Companion = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    public final String f6895a;

    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¨\u0006\u0006"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;", "", "", "code", "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", Constants.GET, "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final InitializationMode get(String str) {
            InitializationMode initializationMode;
            InitializationMode[] values = InitializationMode.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    initializationMode = null;
                    break;
                }
                initializationMode = values[i];
                i++;
                if (Intrinsics.areEqual(initializationMode.f6895a, str)) {
                    break;
                }
            }
            return initializationMode == null ? InitializationMode.Active : initializationMode;
        }
    }

    InitializationMode(String str) {
        this.f6895a = str;
    }
}
