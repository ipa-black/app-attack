package com.yandex.metrica.impl.ob;

import android.app.ActivityManager;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import com.onesignal.NotificationBundleProcessor;
import com.yandex.metrica.impl.ob.C2010z;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/yandex/metrica/impl/ob/y;", "", "Landroid/content/Context;", "context", "Lcom/yandex/metrica/impl/ob/v;", "converter", "Lcom/yandex/metrica/impl/ob/z;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/v;)Lcom/yandex/metrica/impl/ob/z;", "<init>", "()V", "mobmetricalib_publicBinaryProdRelease"}, k = 1, mv = {1, 1, 15})
/* renamed from: com.yandex.metrica.impl.ob.y  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1986y {

    /* renamed from: a  reason: collision with root package name */
    public static final C1986y f16061a = new C1986y();

    /* renamed from: com.yandex.metrica.impl.ob.y$a */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements InterfaceC1769om<UsageStatsManager, C2010z.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1914v f16062a;

        a(C1914v c1914v) {
            this.f16062a = c1914v;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1769om
        public C2010z.a a(UsageStatsManager usageStatsManager) {
            C1914v c1914v = this.f16062a;
            int appStandbyBucket = usageStatsManager.getAppStandbyBucket();
            c1914v.getClass();
            if (A2.a(28)) {
                if (A2.a(30) && appStandbyBucket == 45) {
                    return C2010z.a.RESTRICTED;
                }
                if (appStandbyBucket == 10) {
                    return C2010z.a.ACTIVE;
                }
                if (appStandbyBucket == 20) {
                    return C2010z.a.WORKING_SET;
                }
                if (appStandbyBucket == 30) {
                    return C2010z.a.FREQUENT;
                }
                if (appStandbyBucket == 40) {
                    return C2010z.a.RARE;
                }
            }
            return null;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.y$b */
    /* loaded from: classes5.dex */
    static final class b<T, R> implements InterfaceC1769om<ActivityManager, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f16063a = new b();

        b() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1769om
        public Boolean a(ActivityManager activityManager) {
            return Boolean.valueOf(activityManager.isBackgroundRestricted());
        }
    }

    private C1986y() {
    }

    @JvmStatic
    public static final C2010z a(Context context, C1914v c1914v) {
        return new C2010z((C2010z.a) A2.a(new a(c1914v), context, "usagestats", "getting app standby bucket", "usageStatsManager"), (Boolean) A2.a(b.f16063a, context, "activity", "getting is background restricted", "activityManager"));
    }
}
