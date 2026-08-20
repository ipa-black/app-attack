.class public final synthetic Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda1;->f$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda1;->f$1:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda1;->f$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda1;->f$1:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->lambda$onPostCreate$1$com-appsgeyser-multiTabApp-MainNavigationActivity(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V

    return-void
.end method
