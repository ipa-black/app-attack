package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.AdUnit;
/* compiled from: ConsumableBidLoader.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f8875a = com.criteo.publisher.logging.h.b(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final e f8876b;

    /* renamed from: c  reason: collision with root package name */
    private final i f8877c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.e0.c f8878d;

    public j(e eVar, i iVar, com.criteo.publisher.e0.c cVar) {
        this.f8876b = eVar;
        this.f8877c = iVar;
        this.f8878d = cVar;
    }

    /* compiled from: ConsumableBidLoader.java */
    /* loaded from: classes2.dex */
    class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdUnit f8879a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BidResponseListener f8880b;

        a(AdUnit adUnit, BidResponseListener bidResponseListener) {
            this.f8879a = adUnit;
            this.f8880b = bidResponseListener;
        }

        @Override // com.criteo.publisher.d
        public void a(com.criteo.publisher.model.s sVar) {
            a(new Bid(this.f8879a.getAdUnitType(), j.this.f8877c, sVar));
        }

        @Override // com.criteo.publisher.d
        public void a() {
            a((Bid) null);
        }

        private void a(final Bid bid) {
            j.this.f8875a.a(f.a(this.f8879a, bid));
            com.criteo.publisher.e0.c cVar = j.this.f8878d;
            final BidResponseListener bidResponseListener = this.f8880b;
            cVar.a(new Runnable() { // from class: com.criteo.publisher.j$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BidResponseListener.this.onResponse(bid);
                }
            });
        }
    }

    public void a(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener) {
        this.f8876b.a(adUnit, contextData, new a(adUnit, bidResponseListener));
    }
}
