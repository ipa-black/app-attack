.class public final synthetic Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

.field public final synthetic f$1:Lcom/google/android/play/core/review/ReviewManager;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;Lcom/google/android/play/core/review/ReviewManager;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;->f$0:Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    iput-object p2, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    iput-object p3, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;->f$0:Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    iget-object v2, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;->f$2:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->lambda$rateApp$2$com-appsgeyser-sdk-utils-RateApp-RateAppManager(Lcom/google/android/play/core/review/ReviewManager;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
