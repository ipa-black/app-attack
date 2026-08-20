.class public final synthetic Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/utils/UpdateManager;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda1;->f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;

    iput-object p2, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda1;->f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;

    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/utils/UpdateManager;->lambda$startUpdateChecking$3$com-appsgeyser-sdk-utils-UpdateManager(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
