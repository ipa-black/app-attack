package com.appsgeyser.sdk.ads.rewardedVideo;

import android.content.Context;
import android.util.Log;
import com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AbstractRewardedFacade;
import com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AppnextRewardedFacade;
import com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class RewardedAdHelper {
    private ConfigPhp configPhp;
    private Context context;
    private RewardedVideoFacade.RewardedVideoListener pendingListener;
    private AppsgeyserProgressDialog progressDialog;
    private int currentlyLoadingSdkIndex = 0;
    private int indexOfLoadedSdk = -1;
    private boolean noVideoAvailable = false;
    private boolean loadingProcess = false;
    private ArrayList<RewardedVideoFacade> rewardedVideoFacades = new ArrayList<>(5);

    static /* synthetic */ int access$108(RewardedAdHelper rewardedAdHelper) {
        int i = rewardedAdHelper.currentlyLoadingSdkIndex;
        rewardedAdHelper.currentlyLoadingSdkIndex = i + 1;
        return i;
    }

    public RewardedAdHelper(ConfigPhp configPhp, Context context) {
        this.configPhp = configPhp;
        this.context = context;
        init();
    }

    private void init() {
        for (Map.Entry<String, AdNetworkSdkModel> entry : this.configPhp.getRewardedVideoSdk().entrySet()) {
            if (entry.getValue().isActive()) {
                String key = entry.getKey();
                key.hashCode();
                if (key.equals(StatController.KEY_APPNEXT)) {
                    this.rewardedVideoFacades.add(new AppnextRewardedFacade(this.context, this.configPhp));
                }
            }
        }
        if (this.rewardedVideoFacades.size() > 1) {
            Collections.sort(this.rewardedVideoFacades, new Comparator<RewardedVideoFacade>() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.RewardedAdHelper.1
                @Override // java.util.Comparator
                public int compare(RewardedVideoFacade rewardedVideoFacade, RewardedVideoFacade rewardedVideoFacade2) {
                    return ((AbstractRewardedFacade) rewardedVideoFacade2).getPriority() - ((AbstractRewardedFacade) rewardedVideoFacade).getPriority();
                }
            });
        }
        preloadVideo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preloadVideo() {
        if (this.rewardedVideoFacades.size() > 0) {
            this.loadingProcess = true;
            final RewardedVideoFacade rewardedVideoFacade = this.rewardedVideoFacades.get(this.currentlyLoadingSdkIndex);
            rewardedVideoFacade.setListener(new RewardedVideoFacade.RewardedVideoListener() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.RewardedAdHelper.2
                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoClicked() {
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoFinished() {
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoOpened() {
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoLoaded() {
                    RewardedAdHelper rewardedAdHelper = RewardedAdHelper.this;
                    rewardedAdHelper.indexOfLoadedSdk = rewardedAdHelper.currentlyLoadingSdkIndex;
                    RewardedAdHelper.this.loadingProcess = false;
                    if (RewardedAdHelper.this.pendingListener == null || RewardedAdHelper.this.progressDialog == null) {
                        return;
                    }
                    RewardedAdHelper.this.progressDialog.dismiss();
                    RewardedAdHelper.this.progressDialog = null;
                    RewardedVideoFacade rewardedVideoFacade2 = rewardedVideoFacade;
                    RewardedAdHelper rewardedAdHelper2 = RewardedAdHelper.this;
                    rewardedVideoFacade2.setListener(rewardedAdHelper2.createDefaultListener(rewardedAdHelper2.pendingListener));
                    RewardedAdHelper.this.pendingListener.onVideoLoaded();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoClosed() {
                    RewardedAdHelper.this.currentlyLoadingSdkIndex = 0;
                    RewardedAdHelper.this.indexOfLoadedSdk = -1;
                    RewardedAdHelper.this.preloadVideo();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoError(String str) {
                    if (RewardedAdHelper.this.currentlyLoadingSdkIndex == RewardedAdHelper.this.rewardedVideoFacades.size() - 1) {
                        RewardedAdHelper.this.noVideoAvailable = true;
                        if (RewardedAdHelper.this.pendingListener == null || RewardedAdHelper.this.progressDialog == null) {
                            return;
                        }
                        RewardedAdHelper.this.progressDialog.dismiss();
                        RewardedAdHelper.this.progressDialog = null;
                        RewardedAdHelper.this.pendingListener.onVideoError("No video available");
                        return;
                    }
                    RewardedAdHelper.access$108(RewardedAdHelper.this);
                    RewardedAdHelper.this.preloadVideo();
                }
            });
            rewardedVideoFacade.loadRewardedVideo();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RewardedVideoFacade.RewardedVideoListener createDefaultListener(final RewardedVideoFacade.RewardedVideoListener rewardedVideoListener) {
        return new RewardedVideoFacade.RewardedVideoListener() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.RewardedAdHelper.3
            @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
            public void onVideoLoaded() {
            }

            @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
            public void onVideoOpened() {
                rewardedVideoListener.onVideoOpened();
            }

            @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
            public void onVideoClicked() {
                rewardedVideoListener.onVideoClicked();
            }

            @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
            public void onVideoClosed() {
                RewardedAdHelper.this.currentlyLoadingSdkIndex = 0;
                RewardedAdHelper.this.indexOfLoadedSdk = -1;
                RewardedAdHelper.this.preloadVideo();
                rewardedVideoListener.onVideoClosed();
            }

            @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
            public void onVideoError(String str) {
                rewardedVideoListener.onVideoError(str);
                RewardedAdHelper.this.preloadVideo();
            }

            @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
            public void onVideoFinished() {
                rewardedVideoListener.onVideoFinished();
                RewardedAdHelper.this.indexOfLoadedSdk = -1;
            }
        };
    }

    public void loadRewardedVideo(RewardedVideoFacade.RewardedVideoListener rewardedVideoListener) {
        int i;
        if (this.noVideoAvailable || ((i = this.indexOfLoadedSdk) == -1 && !this.loadingProcess)) {
            rewardedVideoListener.onVideoError("No video available at the moment");
        } else if (this.loadingProcess) {
            this.pendingListener = rewardedVideoListener;
            AppsgeyserProgressDialog appsgeyserProgressDialog = new AppsgeyserProgressDialog(this.context);
            this.progressDialog = appsgeyserProgressDialog;
            appsgeyserProgressDialog.show();
        } else {
            RewardedVideoFacade rewardedVideoFacade = this.rewardedVideoFacades.get(i);
            if (rewardedVideoFacade.isVideoLoaded()) {
                rewardedVideoFacade.setListener(createDefaultListener(rewardedVideoListener));
                rewardedVideoListener.onVideoLoaded();
                return;
            }
            preloadVideo();
            loadRewardedVideo(rewardedVideoListener);
        }
    }

    public void showRewardedVideo() {
        Log.d("RewVideoCallback", "indexOfLoadedSdk = " + this.indexOfLoadedSdk + " rewardedVideoFacades.get(indexOfLoadedSdk).isVideoLoaded() = " + this.rewardedVideoFacades.get(this.indexOfLoadedSdk).isVideoLoaded());
        int i = this.indexOfLoadedSdk;
        if (i == -1 || !this.rewardedVideoFacades.get(i).isVideoLoaded()) {
            return;
        }
        this.rewardedVideoFacades.get(this.indexOfLoadedSdk).showRewardedVideo();
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public void onPause() {
        Iterator<RewardedVideoFacade> it = this.rewardedVideoFacades.iterator();
        while (it.hasNext()) {
            it.next().onPause();
        }
    }

    public void onResume() {
        Iterator<RewardedVideoFacade> it = this.rewardedVideoFacades.iterator();
        while (it.hasNext()) {
            it.next().onResume();
        }
    }

    public void onDestroy() {
        Iterator<RewardedVideoFacade> it = this.rewardedVideoFacades.iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
    }
}
