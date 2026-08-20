package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.impl.ob.C1906uf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class W1 {

    /* renamed from: a  reason: collision with root package name */
    private final Revenue f14176a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1546fn<String> f14177b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1546fn<String> f14178c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1546fn<String> f14179d;

    /* renamed from: e  reason: collision with root package name */
    private final C1470cm f14180e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public W1(Revenue revenue, C1470cm c1470cm) {
        this.f14180e = c1470cm;
        this.f14176a = revenue;
        this.f14177b = new C1471cn(30720, "revenue payload", c1470cm);
        this.f14178c = new C1521en(new C1471cn(184320, "receipt data", c1470cm), "<truncated data was not sent, see METRIKALIB-4568>");
        this.f14179d = new C1521en(new C1496dn(1000, "receipt signature", c1470cm), "<truncated data was not sent, see METRIKALIB-4568>");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<byte[], Integer> a() {
        C1906uf c1906uf = new C1906uf();
        c1906uf.f15824c = this.f14176a.currency.getCurrencyCode().getBytes();
        if (A2.a(this.f14176a.price)) {
            c1906uf.f15823b = this.f14176a.price.doubleValue();
        }
        if (A2.a(this.f14176a.priceMicros)) {
            c1906uf.f15828g = this.f14176a.priceMicros.longValue();
        }
        c1906uf.f15825d = C1422b.e(new C1496dn(200, "revenue productID", this.f14180e).a(this.f14176a.productID));
        Integer num = this.f14176a.quantity;
        if (num == null) {
            num = 1;
        }
        c1906uf.f15822a = num.intValue();
        c1906uf.f15826e = C1422b.e(this.f14177b.a(this.f14176a.payload));
        if (A2.a(this.f14176a.receipt)) {
            C1906uf.a aVar = new C1906uf.a();
            String a2 = this.f14178c.a(this.f14176a.receipt.data);
            r2 = C1422b.b(this.f14176a.receipt.data, a2) ? this.f14176a.receipt.data.length() : 0;
            aVar.f15830a = C1422b.e(a2);
            aVar.f15831b = C1422b.e(this.f14179d.a(this.f14176a.receipt.signature));
            c1906uf.f15827f = aVar;
        }
        return new Pair<>(MessageNano.toByteArray(c1906uf), Integer.valueOf(r2));
    }
}
