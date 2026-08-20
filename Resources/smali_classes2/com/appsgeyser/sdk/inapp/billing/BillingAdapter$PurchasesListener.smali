.class Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchasesListener;
.super Ljava/lang/Object;
.source "BillingAdapter.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchasesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchasesListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchasesListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPurchasesUpdated responseCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPurchasesUpdated list == null -> = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 249
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchasesListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$1400(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/android/billingclient/api/Purchase;)V

    goto :goto_1

    .line 252
    :cond_1
    iget-object p2, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchasesListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {p2}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$900(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;->onPurchaseError(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
