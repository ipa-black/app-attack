package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
/* loaded from: classes.dex */
public final class p4 extends g<n4, m4, Object> {

    /* renamed from: a  reason: collision with root package name */
    public RewardedVideoCallbacks f7286a;

    @Override // com.appodeal.ads.g
    public final void a(n4 n4Var, m4 m4Var, Object obj) {
        Log.log(LogConstants.KEY_REWARDED_VIDEO, LogConstants.EVENT_NOTIFY_CLICKED, Log.LogLevel.verbose);
        RewardedVideoCallbacks rewardedVideoCallbacks = this.f7286a;
        if (rewardedVideoCallbacks != null) {
            rewardedVideoCallbacks.onRewardedVideoClicked();
        }
    }

    @Override // com.appodeal.ads.g
    public final void b(n4 n4Var, m4 m4Var) {
        Log.log(LogConstants.KEY_REWARDED_VIDEO, LogConstants.EVENT_NOTIFY_EXPIRED, Log.LogLevel.verbose);
        RewardedVideoCallbacks rewardedVideoCallbacks = this.f7286a;
        if (rewardedVideoCallbacks != null) {
            rewardedVideoCallbacks.onRewardedVideoExpired();
        }
    }

    @Override // com.appodeal.ads.g
    public final void c(r rVar, l lVar) {
        n4 n4Var = (n4) rVar;
        m4 m4Var = (m4) lVar;
        Log.log(LogConstants.KEY_REWARDED_VIDEO, LogConstants.EVENT_NOTIFY_FINISHED, Log.LogLevel.verbose);
        RewardedVideoCallbacks rewardedVideoCallbacks = this.f7286a;
        if (rewardedVideoCallbacks != null) {
            rewardedVideoCallbacks.onRewardedVideoFinished(o4.c(), o4.d());
        }
    }

    @Override // com.appodeal.ads.g
    public final void d(r rVar, l lVar) {
        n4 n4Var = (n4) rVar;
        m4 m4Var = (m4) lVar;
        Log.log(LogConstants.KEY_REWARDED_VIDEO, LogConstants.EVENT_NOTIFY_LOAD_FAILED, Log.LogLevel.verbose);
        RewardedVideoCallbacks rewardedVideoCallbacks = this.f7286a;
        if (rewardedVideoCallbacks != null) {
            rewardedVideoCallbacks.onRewardedVideoFailedToLoad();
        }
    }

    @Override // com.appodeal.ads.g
    public final void e(n4 n4Var, m4 m4Var) {
        m4 m4Var2 = m4Var;
        Log.log(LogConstants.KEY_REWARDED_VIDEO, LogConstants.EVENT_NOTIFY_LOADED, String.format("isPrecache: %s", Boolean.valueOf(m4Var2.isPrecache())), Log.LogLevel.verbose);
        RewardedVideoCallbacks rewardedVideoCallbacks = this.f7286a;
        if (rewardedVideoCallbacks != null) {
            rewardedVideoCallbacks.onRewardedVideoLoaded(m4Var2.isPrecache());
        }
    }

    @Override // com.appodeal.ads.g
    public final void a(n4 n4Var, m4 m4Var) {
        n4 n4Var2 = n4Var;
        Log.log(LogConstants.KEY_REWARDED_VIDEO, LogConstants.EVENT_NOTIFY_CLOSED, String.format("finished: %s", Boolean.valueOf(n4Var2.s())), Log.LogLevel.verbose);
        RewardedVideoCallbacks rewardedVideoCallbacks = this.f7286a;
        if (rewardedVideoCallbacks != null) {
            rewardedVideoCallbacks.onRewardedVideoClosed(n4Var2.s());
        }
    }

    @Override // com.appodeal.ads.g
    public final void b(r rVar, l lVar, Object obj) {
        n4 n4Var = (n4) rVar;
        m4 m4Var = (m4) lVar;
        Log.log(LogConstants.KEY_REWARDED_VIDEO, LogConstants.EVENT_NOTIFY_SHOW_FAILED, Log.LogLevel.verbose);
        RewardedVideoCallbacks rewardedVideoCallbacks = this.f7286a;
        if (rewardedVideoCallbacks != null) {
            rewardedVideoCallbacks.onRewardedVideoShowFailed();
        }
    }

    @Override // com.appodeal.ads.g
    public final void c(n4 n4Var, m4 m4Var, Object obj) {
        Log.log(LogConstants.KEY_REWARDED_VIDEO, LogConstants.EVENT_NOTIFY_SHOWN, Log.LogLevel.verbose);
        RewardedVideoCallbacks rewardedVideoCallbacks = this.f7286a;
        if (rewardedVideoCallbacks != null) {
            rewardedVideoCallbacks.onRewardedVideoShown();
        }
    }
}
