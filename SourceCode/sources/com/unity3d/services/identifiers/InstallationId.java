package com.unity3d.services.identifiers;

import com.onesignal.NotificationBundleProcessor;
import com.unity3d.services.identifiers.installationid.b;
import kotlin.Metadata;
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/unity3d/services/identifiers/InstallationId;", "", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "id", "unity-services-identifiers_release"}, k = 1, mv = {1, 4, 3})
/* loaded from: classes3.dex */
public final class InstallationId {
    public static final InstallationId INSTANCE = new InstallationId();

    /* renamed from: a  reason: collision with root package name */
    public static final String f12275a;

    static {
        b bVar;
        a aVar = a.f12277b;
        f12275a = (aVar == null || (bVar = aVar.f12278a) == null || (r0 = bVar.f12279a) == null) ? "" : "";
    }

    public final String getId() {
        return f12275a;
    }
}
