.class Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchaseResponseListener;
.super Ljava/lang/Object;
.source "BillingAdapter.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchaseResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchaseResponseListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
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

    .line 193
    const-string v0, "onQueryPurchasesResponse"

    const-string v1, "BillingAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "billingResult = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchaseResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$1002(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Ljava/util/List;)Ljava/util/List;

    .line 197
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchaseResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$1100(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V

    :cond_0
    return-void
.end method
