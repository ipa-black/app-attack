.class public Lcom/appsgeyser/sdk/inapp/models/BillingProduct;
.super Ljava/lang/Object;
.source "BillingProduct.java"


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isPurchased:Z

.field private price:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->price:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->id:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->title:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->description:Ljava/lang/String;

    .line 16
    iput-boolean p5, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->isPurchased:Z

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isPurchased()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->isPurchased:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->id:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->price:Ljava/lang/String;

    return-void
.end method

.method public setPurchased(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->isPurchased:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BillingProduct{price=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isPurchased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->isPurchased:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
