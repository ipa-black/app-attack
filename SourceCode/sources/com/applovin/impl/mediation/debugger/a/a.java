package com.applovin.impl.mediation.debugger.a;

import com.amazon.device.ads.AdError;
import com.amazon.device.ads.DTBAdCallback;
import com.amazon.device.ads.DTBAdRequest;
import com.amazon.device.ads.DTBAdResponse;
import com.amazon.device.ads.DTBAdSize;
import com.applovin.mediation.MaxAdFormat;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class a implements DTBAdCallback {

    /* renamed from: a  reason: collision with root package name */
    private final MaxAdFormat f4909a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0069a f4910b;

    /* renamed from: c  reason: collision with root package name */
    private DTBAdRequest f4911c;

    /* renamed from: com.applovin.impl.mediation.debugger.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0069a {
        void onAdLoadFailed(AdError adError, MaxAdFormat maxAdFormat);

        void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat);
    }

    public a(b bVar, MaxAdFormat maxAdFormat, InterfaceC0069a interfaceC0069a) {
        this(Arrays.asList(bVar.a()), maxAdFormat, interfaceC0069a);
    }

    public a(List<?> list, MaxAdFormat maxAdFormat, InterfaceC0069a interfaceC0069a) {
        this.f4909a = maxAdFormat;
        this.f4910b = interfaceC0069a;
        try {
            DTBAdSize[] dTBAdSizeArr = new DTBAdSize[list.size()];
            for (int i = 0; i < list.size(); i++) {
                Object obj = list.get(i);
                if (obj instanceof DTBAdSize) {
                    dTBAdSizeArr[i] = (DTBAdSize) obj;
                }
            }
            DTBAdRequest dTBAdRequest = new DTBAdRequest();
            this.f4911c = dTBAdRequest;
            dTBAdRequest.setSizes(dTBAdSizeArr);
        } catch (Throwable unused) {
        }
    }

    public void a() {
        DTBAdRequest dTBAdRequest = this.f4911c;
        if (dTBAdRequest == null) {
            this.f4910b.onAdLoadFailed(null, this.f4909a);
        } else {
            dTBAdRequest.loadAd(this);
        }
    }

    @Override // com.amazon.device.ads.DTBAdCallback
    public void onFailure(AdError adError) {
        this.f4910b.onAdLoadFailed(adError, this.f4909a);
    }

    @Override // com.amazon.device.ads.DTBAdCallback
    public void onSuccess(DTBAdResponse dTBAdResponse) {
        this.f4910b.onAdResponseLoaded(dTBAdResponse, this.f4909a);
    }
}
