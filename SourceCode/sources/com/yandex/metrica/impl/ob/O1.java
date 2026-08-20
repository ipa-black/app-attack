package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.yandex.metrica.impl.ob.C1811qf;
import java.util.List;
/* loaded from: classes5.dex */
class O1 implements InterfaceC1418ak {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1811qf f13568a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ P1 f13569b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public O1(P1 p1, C1811qf c1811qf) {
        this.f13569b = p1;
        this.f13568a = c1811qf;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1418ak
    public void a(Zj zj) {
        C1811qf c1811qf = this.f13568a;
        List<Tj> c2 = zj.c();
        if (A2.b(c2)) {
            return;
        }
        c1811qf.f15513d = new C1811qf.e[c2.size()];
        for (int i = 0; i < c2.size(); i++) {
            Tj tj = c2.get(i);
            C1811qf.e[] eVarArr = c1811qf.f15513d;
            int i2 = J1.f13235e;
            C1811qf.e eVar = new C1811qf.e();
            if (tj.b() != null) {
                eVar.f15563a = tj.b().intValue();
            }
            if (tj.c() != null) {
                eVar.f15564b = tj.c().intValue();
            }
            if (!TextUtils.isEmpty(tj.a())) {
                eVar.f15565c = tj.a();
            }
            eVar.f15566d = tj.d();
            eVarArr[i] = eVar;
            P1.a(this.f13569b, CodedOutputByteBufferNano.computeMessageSizeNoTag(c1811qf.f15513d[i]));
            P1.a(this.f13569b, CodedOutputByteBufferNano.computeTagSize(10));
        }
    }
}
