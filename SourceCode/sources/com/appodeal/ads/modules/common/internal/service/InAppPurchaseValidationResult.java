package com.appodeal.ads.modules.common.internal.service;

import com.appodeal.ads.service.ServiceError;
import com.google.firebase.messaging.Constants;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult;", "", "Failure", "Success", "Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Success;", "Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;", "apd_internal"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface InAppPurchaseValidationResult {

    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;", "Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult;", "Lcom/appodeal/ads/service/ServiceError;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Lcom/appodeal/ads/service/ServiceError;", "getError", "()Lcom/appodeal/ads/service/ServiceError;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "<init>", "(Lcom/appodeal/ads/service/ServiceError;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Failure implements InAppPurchaseValidationResult {

        /* renamed from: a  reason: collision with root package name */
        public final ServiceError f6892a;

        public Failure(ServiceError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.f6892a = error;
        }

        public final ServiceError getError() {
            return this.f6892a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Success;", "Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult;", "", "component1", "description", "copy", "toString", "", "hashCode", "", "other", "", "equals", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Success implements InAppPurchaseValidationResult {

        /* renamed from: a  reason: collision with root package name */
        public final String f6893a;

        public Success(String description) {
            Intrinsics.checkNotNullParameter(description, "description");
            this.f6893a = description;
        }

        public static /* synthetic */ Success copy$default(Success success, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = success.f6893a;
            }
            return success.copy(str);
        }

        public final String component1() {
            return this.f6893a;
        }

        public final Success copy(String description) {
            Intrinsics.checkNotNullParameter(description, "description");
            return new Success(description);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.areEqual(this.f6893a, ((Success) obj).f6893a);
        }

        public final String getDescription() {
            return this.f6893a;
        }

        public int hashCode() {
            return this.f6893a.hashCode();
        }

        public String toString() {
            return "Success(description=" + this.f6893a + ')';
        }
    }
}
