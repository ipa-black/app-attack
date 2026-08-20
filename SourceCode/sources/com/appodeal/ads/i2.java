package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
/* loaded from: classes.dex */
public final class i2 extends g<k2, j2, Object> {

    /* renamed from: a  reason: collision with root package name */
    public MrecCallbacks f6738a;

    @Override // com.appodeal.ads.g
    public final void a(k2 k2Var, j2 j2Var, Object obj) {
        Log.log(LogConstants.KEY_MREC, LogConstants.EVENT_NOTIFY_CLICKED, Log.LogLevel.verbose);
        MrecCallbacks mrecCallbacks = this.f6738a;
        if (mrecCallbacks != null) {
            mrecCallbacks.onMrecClicked();
        }
    }

    @Override // com.appodeal.ads.g
    public final void b(k2 k2Var, j2 j2Var) {
        Log.log(LogConstants.KEY_MREC, LogConstants.EVENT_NOTIFY_EXPIRED, Log.LogLevel.verbose);
        MrecCallbacks mrecCallbacks = this.f6738a;
        if (mrecCallbacks != null) {
            mrecCallbacks.onMrecExpired();
        }
    }

    @Override // com.appodeal.ads.g
    public final void c(k2 k2Var, j2 j2Var, Object obj) {
        Log.log(LogConstants.KEY_MREC, LogConstants.EVENT_NOTIFY_SHOWN, Log.LogLevel.verbose);
        MrecCallbacks mrecCallbacks = this.f6738a;
        if (mrecCallbacks != null) {
            mrecCallbacks.onMrecShown();
        }
    }

    @Override // com.appodeal.ads.g
    public final void d(r rVar, l lVar) {
        k2 k2Var = (k2) rVar;
        j2 j2Var = (j2) lVar;
        Log.log(LogConstants.KEY_MREC, LogConstants.EVENT_NOTIFY_LOAD_FAILED, Log.LogLevel.verbose);
        MrecCallbacks mrecCallbacks = this.f6738a;
        if (mrecCallbacks != null) {
            mrecCallbacks.onMrecFailedToLoad();
        }
    }

    @Override // com.appodeal.ads.g
    public final void e(k2 k2Var, j2 j2Var) {
        j2 j2Var2 = j2Var;
        Log.log(LogConstants.KEY_MREC, LogConstants.EVENT_NOTIFY_LOADED, String.format("isPrecache: %s", Boolean.valueOf(j2Var2.isPrecache())), Log.LogLevel.verbose);
        MrecCallbacks mrecCallbacks = this.f6738a;
        if (mrecCallbacks != null) {
            mrecCallbacks.onMrecLoaded(j2Var2.isPrecache());
        }
    }

    @Override // com.appodeal.ads.g
    public final void b(r rVar, l lVar, Object obj) {
        k2 k2Var = (k2) rVar;
        j2 j2Var = (j2) lVar;
        Log.log(LogConstants.KEY_MREC, LogConstants.EVENT_NOTIFY_SHOW_FAILED, Log.LogLevel.verbose);
        MrecCallbacks mrecCallbacks = this.f6738a;
        if (mrecCallbacks != null) {
            mrecCallbacks.onMrecShowFailed();
        }
    }
}
