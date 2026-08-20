.class public final synthetic Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/utils/UpdateManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda2;->f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;

    return-void
.end method


# virtual methods
.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda2;->f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;

    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/utils/UpdateManager;->lambda$new$0$com-appsgeyser-sdk-utils-UpdateManager(Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method
