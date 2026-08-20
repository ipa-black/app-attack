package com.applovin.impl.mediation;

import android.os.Bundle;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import java.util.Map;
/* loaded from: classes.dex */
public class MaxAdapterParametersImpl implements MaxAdapterInitializationParameters, MaxAdapterResponseParameters, MaxAdapterSignalCollectionParameters {

    /* renamed from: a  reason: collision with root package name */
    private String f4621a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f4622b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f4623c;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f4624d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f4625e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f4626f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f4627g;

    /* renamed from: h  reason: collision with root package name */
    private String f4628h;
    private boolean i;
    private String j;
    private String k;
    private long l;
    private MaxAdFormat m;

    private MaxAdapterParametersImpl() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MaxAdapterParametersImpl a(com.applovin.impl.mediation.a.a aVar) {
        MaxAdapterParametersImpl a2 = a((com.applovin.impl.mediation.a.f) aVar);
        a2.j = aVar.p();
        a2.k = aVar.j();
        a2.l = aVar.k();
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MaxAdapterParametersImpl a(com.applovin.impl.mediation.a.f fVar) {
        MaxAdapterParametersImpl maxAdapterParametersImpl = new MaxAdapterParametersImpl();
        maxAdapterParametersImpl.f4621a = fVar.getAdUnitId();
        maxAdapterParametersImpl.f4625e = fVar.V();
        maxAdapterParametersImpl.f4626f = fVar.W();
        maxAdapterParametersImpl.f4627g = fVar.X();
        maxAdapterParametersImpl.f4628h = fVar.Y();
        maxAdapterParametersImpl.f4622b = fVar.aa();
        maxAdapterParametersImpl.f4623c = fVar.ab();
        maxAdapterParametersImpl.f4624d = fVar.ac();
        maxAdapterParametersImpl.i = fVar.U();
        return maxAdapterParametersImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MaxAdapterParametersImpl a(com.applovin.impl.mediation.a.h hVar, MaxAdFormat maxAdFormat) {
        MaxAdapterParametersImpl a2 = a(hVar);
        a2.m = maxAdFormat;
        return a2;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters
    public MaxAdFormat getAdFormat() {
        return this.m;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public String getAdUnitId() {
        return this.f4621a;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public long getBidExpirationMillis() {
        return this.l;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getBidResponse() {
        return this.k;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public String getConsentString() {
        return this.f4628h;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getCustomParameters() {
        return this.f4624d;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Map<String, Object> getLocalExtraParameters() {
        return this.f4622b;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getServerParameters() {
        return this.f4623c;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getThirdPartyAdPlacementId() {
        return this.j;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean hasUserConsent() {
        return this.f4625e;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean isAgeRestrictedUser() {
        return this.f4626f;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean isDoNotSell() {
        return this.f4627g;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public boolean isTesting() {
        return this.i;
    }
}
