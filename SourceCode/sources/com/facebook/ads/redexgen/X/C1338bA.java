package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.bA  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1338bA<ModelType, StateType> {
    public final ModelType A02;
    public final StateType A03;
    public final String A04;
    @Nullable
    public List<InterfaceC1340bC<ModelType, StateType>> A01 = null;
    public C1337b9 A00 = C1337b9.A08;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bA != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    public C1338bA(ModelType model, StateType state, String str) {
        this.A02 = model;
        this.A03 = state;
        this.A04 = str;
    }

    public static /* synthetic */ C1337b9 A00(C1338bA c1338bA) {
        return c1338bA.A00;
    }

    public static /* synthetic */ Object A01(C1338bA c1338bA) {
        return c1338bA.A02;
    }

    public static /* synthetic */ Object A02(C1338bA c1338bA) {
        return c1338bA.A03;
    }

    public static /* synthetic */ String A03(C1338bA c1338bA) {
        return c1338bA.A04;
    }

    public static /* synthetic */ List A04(C1338bA c1338bA) {
        return c1338bA.A01;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bA != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bC != com.instagram.common.viewpoint.core.ViewpointAction<ModelType, StateType> */
    public final C1338bA<ModelType, StateType> A05(InterfaceC1340bC<ModelType, StateType> interfaceC1340bC) {
        if (this.A01 == null) {
            this.A01 = new ArrayList();
        }
        this.A01.add(interfaceC1340bC);
        return this;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bA != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    public final C1337b9<ModelType, StateType> A06() {
        return new C1337b9<>(this);
    }
}
