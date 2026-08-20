.class public final synthetic Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda0;->f$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda0;->f$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;

    check-cast p1, Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->lambda$onCreate$1$com-appsgeyser-sdk-inapp-ui-AccessActivity(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V

    return-void
.end method
