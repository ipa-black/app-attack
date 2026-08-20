.class public Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;
.super Ljava/lang/Object;
.source "DisableAdsData.java"

# interfaces
.implements Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;


# instance fields
.field private active:Z

.field private allowPurchases:Z

.field private inappKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->active:Z

    .line 13
    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->inappKey:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->allowPurchases:Z

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;
    .locals 2

    .line 45
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    const-class v1, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    return-object p0
.end method


# virtual methods
.method public getInappKey()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->inappKey:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->active:Z

    return v0
.end method

.method public isAllowPurchases()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->allowPurchases:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->active:Z

    return-void
.end method

.method public setAllowPurchases(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->allowPurchases:Z

    return-void
.end method

.method public setInappKey(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->inappKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisableAdsData{active="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inappKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->inappKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
