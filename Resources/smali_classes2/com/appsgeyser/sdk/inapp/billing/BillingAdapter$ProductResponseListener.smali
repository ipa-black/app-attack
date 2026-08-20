.class Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$ProductResponseListener;
.super Ljava/lang/Object;
.source "BillingAdapter.java"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProductResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$ProductResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$ProductResponseListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProductDetailsResponse = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$ProductResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$1202(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Ljava/util/List;)Ljava/util/List;

    .line 211
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$ProductResponseListener;->this$0:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->access$1100(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "List size = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
