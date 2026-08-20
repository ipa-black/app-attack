package com.appodeal.ads.modules.libs.network.httpclients.ext;

import androidx.browser.trusted.sharing.ShareTarget;
import com.appodeal.ads.modules.libs.network.HttpClient;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: com.appodeal.ads.modules.libs.network.httpclients.ext.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public /* synthetic */ class C0128a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HttpClient.Method.values().length];
            iArr[HttpClient.Method.GET.ordinal()] = 1;
            iArr[HttpClient.Method.POST.ordinal()] = 2;
            iArr[HttpClient.Method.PUT.ordinal()] = 3;
            iArr[HttpClient.Method.DELETE.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final String a(HttpClient.Method method) {
        Intrinsics.checkNotNullParameter(method, "<this>");
        int i = C0128a.$EnumSwitchMapping$0[method.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return "DELETE";
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return "PUT";
            }
            return ShareTarget.METHOD_POST;
        }
        return ShareTarget.METHOD_GET;
    }
}
