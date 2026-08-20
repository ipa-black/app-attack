.class public Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;
.super Ljava/lang/Object;
.source "BillingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;,
        Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchasesListener;,
        Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;,
        Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchaseResponseListener;,
        Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$ProductResponseListener;,
        Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BillingAdapter"


# instance fields
.field private final billingClient:Lcom/android/billingclient/api/BillingClient;

.field private eventListener:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

.field private final inappList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final productsType:Ljava/lang/String;

.field private purchaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private purchasedProduct:Lcom/android/billingclient/api/ProductDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p4, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->eventListener:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    .line 44
    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->inappList:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->productsType:Ljava/lang/String;

    .line 46
    new-instance p2, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchasesListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchasesListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V

    .line 47
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 51
    new-instance p2, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;

    invoke-direct {p2, p0, p3}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingStateListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->purchaseList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->createBillingProductList()V

    return-void
.end method

.method static synthetic access$1202(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->productList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->initBilling()V

    return-void
.end method

.method static synthetic access$1400(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->acknowledgePurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)Lcom/android/billingclient/api/ProductDetails;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->purchasedProduct:Lcom/android/billingclient/api/ProductDetails;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->getPrice(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->getCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;)Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->eventListener:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    return-object p0
.end method

.method private acknowledgePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 137
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$AcknowledgeResponseListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized createBillingProductList()V
    .locals 11

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->productList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->purchaseList:Ljava/util/List;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 113
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->eventListener:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    const-string v1, "\u041f\u0420\u0418\u0428\u041b\u0418 \u041f\u0423\u0421\u0422\u042b\u0415 \u0421\u041f\u0418\u0421\u041a\u0418 \u0422\u041e\u0412\u0410\u0420\u041e\u0412"

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;->onProductReceiveError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->productList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails;

    .line 120
    iget-object v3, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->purchaseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v10, v4

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/Purchase;

    .line 121
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    .line 125
    :cond_3
    new-instance v3, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;

    .line 126
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->getPrice(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getName()Ljava/lang/String;

    move-result-object v8

    .line 129
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object v9

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->eventListener:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    invoke-interface {v1, v0}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;->onProductReceiveSuccess(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 112
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 161
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 162
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 163
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPrice(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 276
    :cond_0
    const-string p1, "???"

    return-object p1
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 150
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 152
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 153
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initBilling()V
    .locals 5

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->inappList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->productsType:Ljava/lang/String;

    .line 93
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->productsType:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v3, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchaseResponseListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$PurchaseResponseListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 107
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$ProductResponseListener;

    invoke-direct {v2, p0, v4}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$ProductResponseListener;-><init>(Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method


# virtual methods
.method public purchase(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->productList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 57
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->eventListener:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;

    const/4 p2, 0x0

    const-string v0, "product list is empty"

    invoke-interface {p1, p2, v0}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;->onPurchaseError(ILjava/lang/String;)V

    return-void

    .line 61
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails;

    .line 62
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 66
    :cond_2
    const-string p2, "BillingAdapter"

    if-nez v1, :cond_3

    .line 67
    const-string p1, "\u041f\u0420\u0418 \u041f\u041e\u041a\u0423\u041f\u041a\u0418 \u041f\u0415\u0420\u0415\u0414\u0410\u041d \u041d\u0415\u041f\u0420\u0410\u0412\u041b\u042c\u041d\u042b\u0419 \u0418\u0414\u0415\u041d\u0422\u0418\u0424\u0418\u041a\u0410\u0422\u041e\u0420 \u0422\u041e\u0412\u0410\u0420\u0410"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_3
    iput-object v1, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->purchasedProduct:Lcom/android/billingclient/api/ProductDetails;

    .line 71
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v2

    .line 72
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v2, p1, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 82
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->getPrice(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->getPrice(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->getCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
