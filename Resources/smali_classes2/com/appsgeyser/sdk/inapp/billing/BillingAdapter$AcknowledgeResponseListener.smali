.class Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;
.super Ljava/lang/Object;
.source "BillingAdapter.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcknowledgeResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAcknowledgePurchaseResponse billingResultCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$500(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$600(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$900(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    .line 179
    invoke-static {v1, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$700(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    .line 180
    invoke-static {v2, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$800(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    .line 181
    invoke-static {v2}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$500(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-interface {v0, v1, p1, v2}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;->onPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
