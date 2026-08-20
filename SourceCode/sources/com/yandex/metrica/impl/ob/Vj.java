package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.onesignal.NotificationBundleProcessor;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/yandex/metrica/impl/ob/Vj;", "", "Landroid/content/Context;", "context", "", "Lcom/yandex/metrica/impl/ob/Tj;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "(Landroid/content/Context;)Ljava/util/List;", "<init>", "()V", "mobmetricalib_publicBinaryProdRelease"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public final class Vj {

    /* renamed from: a  reason: collision with root package name */
    public static final Vj f14167a = new Vj();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T, R> implements InterfaceC1769om<SubscriptionManager, List<? extends SubscriptionInfo>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f14168a = new a();

        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1769om
        public List<? extends SubscriptionInfo> a(SubscriptionManager subscriptionManager) {
            return subscriptionManager.getActiveSubscriptionInfoList();
        }
    }

    private Vj() {
    }

    @JvmStatic
    public static final List<Tj> a(Context context) {
        Integer valueOf;
        Integer valueOf2;
        List<SubscriptionInfo> list = (List) A2.a(a.f14168a, context, "telephony_subscription_service", "getting active subcription info list", "SubscriptionManager");
        if (list != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (SubscriptionInfo subscriptionInfo : list) {
                if (A2.a(29)) {
                    valueOf = Wj.a(subscriptionInfo);
                } else {
                    valueOf = Integer.valueOf(subscriptionInfo.getMcc());
                }
                if (A2.a(29)) {
                    valueOf2 = Wj.b(subscriptionInfo);
                } else {
                    valueOf2 = Integer.valueOf(subscriptionInfo.getMnc());
                }
                boolean z = subscriptionInfo.getDataRoaming() == 1;
                CharSequence carrierName = subscriptionInfo.getCarrierName();
                arrayList.add(new Tj(valueOf, valueOf2, z, carrierName != null ? carrierName.toString() : null));
            }
            return arrayList;
        }
        return CollectionsKt.emptyList();
    }
}
