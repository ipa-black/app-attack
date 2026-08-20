package com.appsgeyser.sdk.utils;

import android.app.Activity;
import android.content.IntentSender;
import android.graphics.Color;
import android.util.Log;
import android.view.View;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.install.InstallStateUpdatedListener;
/* loaded from: classes2.dex */
public final class UpdateManager {
    public static final int UPDATE_REQUEST_CODE = 8;
    private static UpdateManager instance;
    private AppUpdateManager appUpdateManager;
    private View rootView;
    private final String LOG_TAG = "UpdateManager";
    private int appUpdateType = 0;
    private final InstallStateUpdatedListener updateStatusListener = new InstallStateUpdatedListener() { // from class: com.appsgeyser.sdk.utils.UpdateManager$$ExternalSyntheticLambda2
        @Override // com.google.android.play.core.listener.StateUpdatedListener
        public final void onStateUpdate(InstallState installState) {
            UpdateManager.this.m256lambda$new$0$comappsgeysersdkutilsUpdateManager(installState);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-appsgeyser-sdk-utils-UpdateManager  reason: not valid java name */
    public /* synthetic */ void m256lambda$new$0$comappsgeysersdkutilsUpdateManager(InstallState installState) {
        Log.d("UpdateManager", "onInstallStateUpdate state = " + installState);
        if (installState.installStatus() == 11) {
            showSnackBar();
        }
    }

    private UpdateManager() {
    }

    public static UpdateManager getInstance() {
        if (instance == null) {
            instance = new UpdateManager();
        }
        return instance;
    }

    public void checkForUpdate(final Activity activity, View view) {
        Log.d("UpdateManager", "checkForUpdate()");
        this.rootView = view;
        AppsgeyserSDK.isInappUpdateEnabled(activity, new AppsgeyserSDK.OnInAppUpdateEnableListener() { // from class: com.appsgeyser.sdk.utils.UpdateManager$$ExternalSyntheticLambda0
            @Override // com.appsgeyser.sdk.AppsgeyserSDK.OnInAppUpdateEnableListener
            public final void onInAppUpdateEnable(boolean z) {
                UpdateManager.this.m255lambda$checkForUpdate$1$comappsgeysersdkutilsUpdateManager(activity, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$checkForUpdate$1$com-appsgeyser-sdk-utils-UpdateManager  reason: not valid java name */
    public /* synthetic */ void m255lambda$checkForUpdate$1$comappsgeysersdkutilsUpdateManager(Activity activity, boolean z) {
        Log.d("UpdateManager", "isInappUpdateEnabled = " + z);
        if (z) {
            startUpdateChecking(activity);
        }
    }

    public void unregisterUpdateStatusListener() {
        this.rootView = null;
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager != null) {
            appUpdateManager.unregisterListener(this.updateStatusListener);
        }
    }

    public void registerOnSuccessListener() {
        registerOnSuccessListener(-1);
    }

    public void registerOnSuccessListener(final int i) {
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager != null) {
            appUpdateManager.getAppUpdateInfo().addOnSuccessListener(new OnSuccessListener() { // from class: com.appsgeyser.sdk.utils.UpdateManager$$ExternalSyntheticLambda3
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    UpdateManager.this.m257xac3e3149(i, (AppUpdateInfo) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$registerOnSuccessListener$2$com-appsgeyser-sdk-utils-UpdateManager  reason: not valid java name */
    public /* synthetic */ void m257xac3e3149(int i, AppUpdateInfo appUpdateInfo) {
        if (i != -1) {
            Log.w("UpdateManager", "versionCode = " + i);
        }
        logUpdateInfo(appUpdateInfo, true);
        if (appUpdateInfo.installStatus() == 11) {
            showSnackBar();
        }
    }

    private void startUpdateChecking(final Activity activity) {
        AppUpdateManager create = AppUpdateManagerFactory.create(activity);
        this.appUpdateManager = create;
        create.getAppUpdateInfo().addOnSuccessListener(new OnSuccessListener() { // from class: com.appsgeyser.sdk.utils.UpdateManager$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                UpdateManager.this.m259xaad3d4b8(activity, (AppUpdateInfo) obj);
            }
        });
        this.appUpdateManager.registerListener(this.updateStatusListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$startUpdateChecking$3$com-appsgeyser-sdk-utils-UpdateManager  reason: not valid java name */
    public /* synthetic */ void m259xaad3d4b8(Activity activity, AppUpdateInfo appUpdateInfo) {
        logUpdateInfo(appUpdateInfo, false);
        if (appUpdateInfo.isUpdateTypeAllowed(0) && appUpdateInfo.updateAvailability() == 2) {
            startUpdate(activity, appUpdateInfo);
        }
        if (appUpdateInfo.installStatus() == 11) {
            showSnackBar();
        }
    }

    private void startUpdate(Activity activity, AppUpdateInfo appUpdateInfo) {
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager != null) {
            try {
                appUpdateManager.startUpdateFlowForResult(appUpdateInfo, this.appUpdateType, activity, 8);
            } catch (IntentSender.SendIntentException e2) {
                e2.printStackTrace();
                Log.e("UpdateManager", "error to start update flow result:", e2);
            }
        }
    }

    private void showSnackBar() {
        Snackbar make = Snackbar.make(this.rootView, "An update has just been downloaded.", -2);
        make.setAction("INSTALL", new View.OnClickListener() { // from class: com.appsgeyser.sdk.utils.UpdateManager$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateManager.this.m258lambda$showSnackBar$4$comappsgeysersdkutilsUpdateManager(view);
            }
        });
        make.setActionTextColor(Color.parseColor("#00bbff"));
        make.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showSnackBar$4$com-appsgeyser-sdk-utils-UpdateManager  reason: not valid java name */
    public /* synthetic */ void m258lambda$showSnackBar$4$comappsgeysersdkutilsUpdateManager(View view) {
        completeUpdate();
    }

    private void completeUpdate() {
        if (this.appUpdateManager != null) {
            Log.d("UpdateManager", "completeUpdate");
            this.appUpdateManager.completeUpdate();
        }
    }

    private void logUpdateInfo(AppUpdateInfo appUpdateInfo, boolean z) {
        if (z) {
            Log.w("UpdateManager", " *** UPDATE INFO ***");
            Log.w("UpdateManager", "info.availableVersionCode() -> " + appUpdateInfo.availableVersionCode());
            Log.w("UpdateManager", "(info.updateAvailability() == UpdateAvailability.UPDATE_AVAILABLE) -> " + (appUpdateInfo.updateAvailability() == 2));
            Log.w("UpdateManager", "(info.updateAvailability() == UpdateAvailability.UPDATE_NOT_AVAILABLE) -> " + (appUpdateInfo.updateAvailability() == 1));
            Log.w("UpdateManager", "(info.updateAvailability() == UpdateAvailability.DEVELOPER_TRIGGERED_UPDATE_IN_PROGRESS) -> " + (appUpdateInfo.updateAvailability() == 3));
            Log.w("UpdateManager", "info.isUpdateTypeAllowed(AppUpdateType.FLEXIBLE) -> " + appUpdateInfo.isUpdateTypeAllowed(0));
            Log.w("UpdateManager", "info.isUpdateTypeAllowed(AppUpdateType.IMMEDIATE) -> " + appUpdateInfo.isUpdateTypeAllowed(1));
            Log.w("UpdateManager", "info.installStatus() -> " + appUpdateInfo.installStatus());
            return;
        }
        Log.d("UpdateManager", " *** UPDATE INFO ***");
        Log.d("UpdateManager", "info.availableVersionCode() -> " + appUpdateInfo.availableVersionCode());
        Log.d("UpdateManager", "(info.updateAvailability() == UpdateAvailability.UPDATE_AVAILABLE) -> " + (appUpdateInfo.updateAvailability() == 2));
        Log.d("UpdateManager", "(info.updateAvailability() == UpdateAvailability.UPDATE_NOT_AVAILABLE) -> " + (appUpdateInfo.updateAvailability() == 1));
        Log.d("UpdateManager", "(info.updateAvailability() == UpdateAvailability.DEVELOPER_TRIGGERED_UPDATE_IN_PROGRESS) -> " + (appUpdateInfo.updateAvailability() == 3));
        Log.d("UpdateManager", "info.isUpdateTypeAllowed(AppUpdateType.FLEXIBLE) -> " + appUpdateInfo.isUpdateTypeAllowed(0));
        Log.d("UpdateManager", "info.isUpdateTypeAllowed(AppUpdateType.IMMEDIATE) -> " + appUpdateInfo.isUpdateTypeAllowed(1));
        Log.d("UpdateManager", "info.installStatus() -> " + appUpdateInfo.installStatus());
    }
}
