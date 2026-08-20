.class Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;
.super Ljava/lang/Object;
.source "AccessActivity.java"

# interfaces
.implements Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->purchase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;->this$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onErrorPurchase$1$com-appsgeyser-sdk-inapp-ui-AccessActivity$1()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;->this$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->access$000(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;)V

    return-void
.end method

.method synthetic lambda$onSuccessPurchase$0$com-appsgeyser-sdk-inapp-ui-AccessActivity$1()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;->this$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->finish()V

    return-void
.end method

.method public onErrorPurchase(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;->this$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;

    new-instance v0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccessPurchase()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;->this$0:Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;

    new-instance v1, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
