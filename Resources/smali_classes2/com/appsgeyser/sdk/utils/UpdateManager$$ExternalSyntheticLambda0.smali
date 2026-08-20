.class public final synthetic Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/utils/UpdateManager;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda0;->f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;

    iput-object p2, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onInAppUpdateEnable(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda0;->f$0:Lcom/appsgeyser/sdk/utils/UpdateManager;

    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/UpdateManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/utils/UpdateManager;->lambda$checkForUpdate$1$com-appsgeyser-sdk-utils-UpdateManager(Landroid/app/Activity;Z)V

    return-void
.end method
