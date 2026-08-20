.class Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$1;
.super Ljava/lang/Object;
.source "DisableAdsPurchaseDialogFragment.java"

# interfaces
.implements Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->purchase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$1;->this$0:Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPurchase(Ljava/lang/String;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$1;->this$0:Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;

    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->access$000(Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;)V

    return-void
.end method

.method public onSuccessPurchase()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$1;->this$0:Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->dismiss()V

    return-void
.end method
