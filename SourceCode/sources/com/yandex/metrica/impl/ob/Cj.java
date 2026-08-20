package com.yandex.metrica.impl.ob;

import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0005\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/yandex/metrica/impl/ob/Cj;", "", "Landroid/telephony/CellIdentityWcdma;", "cellIdentity", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "(Landroid/telephony/CellIdentityWcdma;)I", "Landroid/telephony/CellIdentityLte;", "(Landroid/telephony/CellIdentityLte;)I", "<init>", "()V", "mobmetricalib_publicBinaryProdRelease"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public final class Cj {

    /* renamed from: a  reason: collision with root package name */
    public static final Cj f12769a = new Cj();

    private Cj() {
    }

    @JvmStatic
    public static final int a(CellIdentityWcdma cellIdentityWcdma) {
        return cellIdentityWcdma.getUarfcn();
    }

    @JvmStatic
    public static final int a(CellIdentityLte cellIdentityLte) {
        return cellIdentityLte.getEarfcn();
    }
}
