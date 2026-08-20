package com.appnext.core.callbacks;

import com.appnext.core.ECPM;
/* loaded from: classes.dex */
public interface OnECPMLoaded {
    void ecpm(ECPM ecpm);

    void error(String str);
}
