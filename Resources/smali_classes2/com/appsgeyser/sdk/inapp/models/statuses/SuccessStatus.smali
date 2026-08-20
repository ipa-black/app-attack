.class public Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;
.super Ljava/lang/Object;
.source "SuccessStatus.java"

# interfaces
.implements Lcom/appsgeyser/sdk/inapp/models/statuses/Status;


# instance fields
.field private configData:Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;

.field private isFeatureActive:Z

.field private isFeaturePurchased:Z

.field private product:Lcom/appsgeyser/sdk/inapp/models/BillingProduct;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->configData:Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;

    .line 18
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->product:Lcom/appsgeyser/sdk/inapp/models/BillingProduct;

    .line 19
    iput-boolean p3, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive:Z

    .line 20
    iput-boolean p4, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased:Z

    return-void
.end method


# virtual methods
.method public getConfigData()Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->configData:Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;

    return-object v0
.end method

.method public getProduct()Lcom/appsgeyser/sdk/inapp/models/BillingProduct;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->product:Lcom/appsgeyser/sdk/inapp/models/BillingProduct;

    return-object v0
.end method

.method public isFeatureActive()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive:Z

    return v0
.end method

.method public isFeaturePurchased()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased:Z

    return v0
.end method

.method public setConfigData(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->configData:Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;

    return-void
.end method

.method public setFeatureActive(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive:Z

    return-void
.end method

.method public setFeaturePurchased(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased:Z

    return-void
.end method

.method public setProduct(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->product:Lcom/appsgeyser/sdk/inapp/models/BillingProduct;

    return-void
.end method
