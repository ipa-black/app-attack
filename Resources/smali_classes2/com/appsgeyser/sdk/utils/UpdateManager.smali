.class public final Lcom/appsgeyser/sdk/utils/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field public static final UPDATE_REQUEST_CODE:I = 0x8

.field private static instance:Lcom/appsgeyser/sdk/utils/UpdateManager;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private appUpdateType:I

.field private rootView:Landroid/view/View;

.field private final updateStatusListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "UpdateManager"

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateType:I

    .line 29
    new-instance v0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/utils/UpdateManager;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->updateStatusListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    return-void
.end method

.method private completeUpdate()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "UpdateManager"

    const-string v1, "completeUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/utils/UpdateManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/appsgeyser/sdk/utils/UpdateManager;->instance:Lcom/appsgeyser/sdk/utils/UpdateManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/appsgeyser/sdk/utils/UpdateManager;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/utils/UpdateManager;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/utils/UpdateManager;->instance:Lcom/appsgeyser/sdk/utils/UpdateManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/appsgeyser/sdk/utils/UpdateManager;->instance:Lcom/appsgeyser/sdk/utils/UpdateManager;

    return-object v0
.end method

.method private logUpdateInfo(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Z)V
    .locals 13

    .line 148
    const-string v0, "info.installStatus() -> "

    const-string v1, "info.isUpdateTypeAllowed(AppUpdateType.IMMEDIATE) -> "

    const-string v2, "info.isUpdateTypeAllowed(AppUpdateType.FLEXIBLE) -> "

    const/4 v3, 0x3

    const-string v4, "(info.updateAvailability() == UpdateAvailability.DEVELOPER_TRIGGERED_UPDATE_IN_PROGRESS) -> "

    const-string v5, "(info.updateAvailability() == UpdateAvailability.UPDATE_NOT_AVAILABLE) -> "

    const/4 v6, 0x2

    const-string v7, "(info.updateAvailability() == UpdateAvailability.UPDATE_AVAILABLE) -> "

    const-string v8, "info.availableVersionCode() -> "

    const-string v9, " *** UPDATE INFO ***"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "UpdateManager"

    if-eqz p2, :cond_3

    .line 149
    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->availableVersionCode()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v7

    if-ne v7, v6, :cond_0

    move v6, v11

    goto :goto_0

    :cond_0
    move v6, v10

    :goto_0
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v5

    if-ne v5, v11, :cond_1

    move v5, v11

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v3, v11

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_3
    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->availableVersionCode()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v7

    if-ne v7, v6, :cond_4

    move v6, v11

    goto :goto_3

    :cond_4
    move v6, v10

    :goto_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v5

    if-ne v5, v11, :cond_5

    move v5, v11

    goto :goto_4

    :cond_5
    move v5, v10

    :goto_4
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v4

    if-ne v4, v3, :cond_6

    move v3, v11

    goto :goto_5

    :cond_6
    move v3, v10

    :goto_5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v12, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showSnackBar()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->rootView:Landroid/view/View;

    const-string v1, "An update has just been downloaded."

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda4;-><init>(Lcom/appsgeyser/sdk/utils/UpdateManager;)V

    const-string v2, "INSTALL"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 135
    const-string v1, "#00bbff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private startUpdate(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    iget v1, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateType:I

    const/16 v2, 0x8

    invoke-interface {v0, p2, v1, p1, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 126
    const-string p2, "UpdateManager"

    const-string v0, "error to start update flow result:"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private startUpdateChecking(Landroid/app/Activity;)V
    .locals 2

    .line 97
    invoke-static {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 99
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/utils/UpdateManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 112
    iget-object p1, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->updateStatusListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    return-void
.end method


# virtual methods
.method public checkForUpdate(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 56
    const-string v0, "UpdateManager"

    const-string v1, "checkForUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p2, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->rootView:Landroid/view/View;

    .line 58
    new-instance p2, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/utils/UpdateManager;Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isInappUpdateEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;)V

    return-void
.end method

.method synthetic lambda$checkForUpdate$1$com-appsgeyser-sdk-utils-UpdateManager(Landroid/app/Activity;Z)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isInappUpdateEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/utils/UpdateManager;->startUpdateChecking(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$com-appsgeyser-sdk-utils-UpdateManager(Lcom/google/android/play/core/install/InstallState;)V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInstallStateUpdate state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/UpdateManager;->showSnackBar()V

    :cond_0
    return-void
.end method

.method synthetic lambda$registerOnSuccessListener$2$com-appsgeyser-sdk-utils-UpdateManager(ILcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 2

    .line 0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "versionCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 88
    invoke-direct {p0, p2, p1}, Lcom/appsgeyser/sdk/utils/UpdateManager;->logUpdateInfo(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Z)V

    .line 89
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/UpdateManager;->showSnackBar()V

    :cond_1
    return-void
.end method

.method synthetic lambda$showSnackBar$4$com-appsgeyser-sdk-utils-UpdateManager(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/UpdateManager;->completeUpdate()V

    return-void
.end method

.method synthetic lambda$startUpdateChecking$3$com-appsgeyser-sdk-utils-UpdateManager(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p2, v0}, Lcom/appsgeyser/sdk/utils/UpdateManager;->logUpdateInfo(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Z)V

    .line 103
    invoke-virtual {p2, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/utils/UpdateManager;->startUpdate(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    .line 107
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/UpdateManager;->showSnackBar()V

    :cond_1
    return-void
.end method

.method public registerOnSuccessListener()V
    .locals 1

    const/4 v0, -0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/UpdateManager;->registerOnSuccessListener(I)V

    return-void
.end method

.method public registerOnSuccessListener(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda3;-><init>(Lcom/appsgeyser/sdk/utils/UpdateManager;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public unregisterUpdateStatusListener()V
    .locals 2

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->rootView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/UpdateManager;->updateStatusListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    :cond_0
    return-void
.end method
