.class Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;
.super Ljava/lang/Object;
.source "BillingAdapter.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BillingStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 222
    const-string v0, "BillingAdapter"

    const-string v1, "onBillingServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$900(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;->onConnectionError()V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 228
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 230
    const-string p1, "BillingAdapter"

    const-string v0, "onBillingSetupFinished CONNECTION SUCCESS!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$1300(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V

    return-void

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$900(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;->onConnectionError()V

    return-void
.end method
