package com.criteo.publisher.m0;

import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.p;
import java.lang.ref.Reference;
/* compiled from: CriteoBannerListenerCallTask.java */
/* loaded from: classes2.dex */
public class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final g f9013a = h.b(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final CriteoBannerAdListener f9014b;

    /* renamed from: c  reason: collision with root package name */
    private final Reference<CriteoBannerView> f9015c;

    /* renamed from: d  reason: collision with root package name */
    private final p f9016d;

    public a(CriteoBannerAdListener criteoBannerAdListener, Reference<CriteoBannerView> reference, p pVar) {
        this.f9014b = criteoBannerAdListener;
        this.f9015c = reference;
        this.f9016d = pVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        CriteoBannerView criteoBannerView = this.f9015c.get();
        p pVar = this.f9016d;
        if (pVar == p.INVALID) {
            this.f9013a.a(com.criteo.publisher.b.a(criteoBannerView));
        } else if (pVar == p.VALID) {
            this.f9013a.a(com.criteo.publisher.b.b(criteoBannerView));
        }
        if (this.f9014b == null || criteoBannerView == null) {
            return;
        }
        int i = C0253a.f9017a[this.f9016d.ordinal()];
        if (i == 1) {
            this.f9014b.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
        } else if (i == 2) {
            this.f9014b.onAdReceived(criteoBannerView);
        } else if (i != 3) {
        } else {
            this.f9014b.onAdClicked();
            this.f9014b.onAdLeftApplication();
        }
    }

    /* compiled from: CriteoBannerListenerCallTask.java */
    /* renamed from: com.criteo.publisher.m0.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C0253a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9017a;

        static {
            int[] iArr = new int[p.values().length];
            f9017a = iArr;
            try {
                iArr[p.INVALID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9017a[p.VALID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9017a[p.CLICK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
