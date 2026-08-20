package com.appodeal.ads;

import android.text.Editable;
import android.text.TextWatcher;
/* loaded from: classes.dex */
public final class z0 implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.utils.h f8000a;

    public z0(com.appodeal.ads.utils.h hVar) {
        this.f8000a = hVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f8000a.f7775c.filter(editable.toString());
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
